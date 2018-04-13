unit Atributos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB, DBClient, ComCtrls,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.Comp.Client, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, Data.DBXFirebird,
  Data.FMTBcd, Data.SqlExpr, Data.DBXPool, FireDAC.VCLUI.Wait, FireDAC.Comp.UI;

type
  TfrmAtribu = class(TForm)
    PnlBanco: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Shape1: TShape;
    SpbBanco: TSpeedButton;
    BibConfirmar: TBitBtn;
    BibLimpar: TBitBtn;
    Label3: TLabel;
    OpdBase1: TOpenDialog;
    DasGeral: TDataSource;
    lbl1: TLabel;
    ChkMostra: TCheckBox;
    shp1: TShape;
    Shape2: TShape;
    CdsTab: TClientDataSet;
    CdsTabTABELA: TStringField;
    CdsTabCOLUNA: TStringField;
    LblTotCol: TLabel;
    LblTotTab: TLabel;
    TxtBDAtu: TEdit;
    txtAtribu: TEdit;
    cmbCamp: TComboBox;
    DbResult: TDBGrid;
    fdConnection: TFDConnection;
    qryMaster: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure SpbBancoClick(Sender: TObject);
    procedure BibConfirmarClick(Sender: TObject);
    procedure BibLimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  Function fValida(StrCpo: String): Boolean ;
  Function fConecta(): Boolean ;  
  end;

var
  frmAtribu: TfrmAtribu;

implementation

{$R *.dfm}

function TfrmAtribu.fValida(StrCpo: String): Boolean;
begin

   fValida := False;

   If ( StrCpo = '1' ) Or ( StrCpo = 'GERAL' ) Then
      Begin
         If ( Trim(TxtBDAtu.Text) = '' ) Then
            Begin

               MessageDlg('Caminho do banco de dados atualizado é obrigatório !', mtWarning, [mbOk], 0);
               TxtBDAtu.SetFocus;
               Exit;
               
            End
         Else If Not FileExists( TxtBDAtu.Text ) Then
            Begin

               Application.MessageBox('Arquivo de Base de Dados Inexistente!','Base',Mb_OK+MB_IconError);
               TxtBDAtu.Text := '';
               TxtBDAtu.SetFocus;
               Exit;

            End;
      End;

   If ( StrCpo = '2' ) Or ( StrCpo = 'GERAL' ) Then
      Begin

         If ( Trim(txtAtribu.Text) = '' ) Then
            Begin

               MessageDlg('Atributo é obrigatório !', mtWarning, [mbOk], 0);
               txtAtribu.SetFocus;
               Exit;

            End;
      End;

   fValida := True ;

end;

procedure TfrmAtribu.SpbBancoClick(Sender: TObject);
begin

   OpdBase1.InitialDir := ExtractFilePath( TxtBDAtu.Text ) ;

   If OpdBase1.Execute Then
      Begin

         If Trim( OpdBase1.FileName ) <> '' Then
            Begin

               TxtBDAtu.Text := OpdBase1.FileName;
               fValida('1');

            End;

      End;

end;

procedure TfrmAtribu.BibConfirmarClick(Sender: TObject);
var
    StrSql, StrCamp : String ;
    cTabAnt, cTabAtu: string;
    nTotCol, nTotTab: Integer;
begin

   If not fValida('GERAL') Then Exit ;
   If Not fConecta() Then Exit ;

   Screen.Cursor := crHourGlass ;
   frmAtribu.Refresh;

   Case cmbCamp.ItemIndex of

      0: StrCamp := '%' + txtAtribu.Text + '%' ;
      1: StrCamp := '%' + txtAtribu.Text ;
      2: StrCamp := txtAtribu.Text + '%' ;

   End;

   StrCamp := QuotedStr(StrCamp);

   If ChkMostra.Checked Then
      StrCamp := StrCamp + ' AND r.RDB$FIELD_NAME NOT LIKE ' + QuotedStr('RDB$%') + ' AND r.RDB$FIELD_NAME NOT LIKE ' + QuotedStr('MON$%') ;

   StrSql := ' SELECT rdb$relation_name As TABELA, r.RDB$FIELD_NAME AS COLUNA ' +
             '   FROM RDB$RELATION_FIELDS r WHERE r.RDB$FIELD_NAME LIKE ' + StrCamp +
             '  ORDER BY rdb$relation_name ' ;

   Try

      If QryMaster.Active Then QryMaster.Close ;

      QryMaster.SQL.Text := StrSql;
      QryMaster.Open ;

   Except

      On E : Exception Do
         MessageDlg('Error! ' + E.ClassName + #13#10 + E.Message, mtWarning, [mbOk], 0);

   End;

   If QryMaster.RecordCount = 0 Then
      Begin

         frmAtribu.Height := 210;
         MessageDlg('Não existe este atributo nas tabelas do banco de dados !', mtWarning, [mbOk], 0);

      End
   Else
      Begin

         CdsTab.Close ;
         CdsTab.CreateDataSet ;

         While Not QryMaster.Eof Do
            Begin

               CdsTab.Append;

               CdsTabTABELA.AsString := QryMaster.FieldByName('TABELA').AsString ;
               CdsTabCOLUNA.AsString := QryMaster.FieldByName('COLUNA').AsString ;

               CdsTab.Post;

               cTabAtu := CdsTabTABELA.AsString;

               If cTabAtu <> cTabAnt Then
                  nTotTab := nTotTab + 1 ;

               nTotCol := nTotCol + 1 ;

               cTabAnt := cTabAtu;
               QryMaster.Next;

            End;

         LblTotTab.Caption := 'Total de Tabelas: ' + IntToStr(nTotTab) ;
         LblTotCol.Caption := 'Total de Colunas: ' + IntToStr(nTotCol);
         frmAtribu.Height := 405 ;

      End;

   DbResult.Refresh;
   frmAtribu.Refresh;
   Screen.Cursor := crDefault ;

end;

procedure TfrmAtribu.BibLimparClick(Sender: TObject);
begin

   TxtBDAtu.Text := '';
   txtAtribu.Text := '';
   cmbCamp.ItemIndex := 0;
   frmAtribu.Height := 210;

end;

function TfrmAtribu.fConecta: Boolean;
begin

   fConecta   := True ;

   Try

      With fdConnection Do
         Begin

            Close ;
            Params.Values['Database'] := TxtBDAtu.Text ;
            Open;

         End;

   Except

      MessageDlg('Não foi possível conectar-se ao servidor de dados atualizado.', mtWarning, [mbOk], 0);
      TxtBDAtu.SetFocus ;
      fConecta := False ;
      Exit;

   End;

end;

procedure TfrmAtribu.FormShow(Sender: TObject);
begin

   frmAtribu.Height := 210;
   frmAtribu.Left := (Screen.DesktopWidth - frmAtribu.Width) DIV 2;
   frmAtribu.Top  := (Screen.DesktopHeight - 405) DIV 2;
    
end;

end.
