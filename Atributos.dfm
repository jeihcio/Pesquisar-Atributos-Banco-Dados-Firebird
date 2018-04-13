object frmAtribu: TfrmAtribu
  Left = 448
  Top = 234
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pesquisar Atributos em Tabelas'
  ClientHeight = 378
  ClientWidth = 571
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LblTotCol: TLabel
    Left = 215
    Top = 361
    Width = 91
    Height = 14
    Caption = 'Total de Colunas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object LblTotTab: TLabel
    Left = 4
    Top = 361
    Width = 96
    Height = 14
    Caption = 'Total de Tabelas: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object PnlBanco: TPanel
    Left = 0
    Top = 0
    Width = 572
    Height = 193
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 62
      Width = 98
      Height = 14
      Caption = 'Banco Atualizado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 2
      Top = 12
      Width = 582
      Height = 14
      Alignment = taCenter
      AutoSize = False
      Caption = 'Pesquisar Atributo nas Tabelas de um Banco de Dados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Shape1: TShape
      Left = 8
      Top = 38
      Width = 554
      Height = 1
    end
    object SpbBanco: TSpeedButton
      Left = 540
      Top = 57
      Width = 23
      Height = 22
      Cursor = crHandPoint
      Hint = 'Selecione o Diretorio do Banco de Dados'
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF1696CB1F9FD11293CBFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1696CB
        9AF3FB6CEAF830B1DC30B1DC30B1DC1FA0D31395CBFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF1696CB90E2F287FFFF7FFBFF81FAFF7DF4FF74
        EEFE69E3F830B1DC30B1DC23A5D5FF00FFFF00FFFF00FFFF00FFFF00FF1696CB
        72CBE696FEFF77F6FF78F3FF77F2FF76F2FF76F0FF77F0FF7DF3FF5AD3F2199A
        D0FF00FFFF00FFFF00FFFF00FF1696CB1696CB95EBF878F8FF78F3FF77F2FF75
        F0FF74EEFE72EDFE73EDFF5CD5F33CBBE3FF00FFFF00FFFF00FFFF00FF1696CB
        60DDF01696CB87FEFF74F4FF75F3FF73F0FF74EEFE72EDFE73EDFF57D3F25ED8
        F3189CCFFF00FFFF00FFFF00FF1696CB7AF7FC1696CB92E2F292EBF88EEDFA8A
        F4FF73EFFF70EDFE73EDFF55CFEF0159043EBFE3FF00FFFF00FFFF00FF1696CB
        86FEFF6CEEFA1696CB1696CB1696CB1696CB9AEEFA77F0FF6EEEFF01590441E0
        730159040F92CAFF00FFFF00FF1696CB82FBFF7EFAFF7DFAFF7DF8FF77F4FF51
        D4EF1696CB88DAF001590436CB5F2DC5511CB035015904FF00FFFF00FF1696CB
        83FCFF7BF8FF79F6FF78F3FF79F4FF7AF7FF6AEAFC1696CB1696CB0A73121CB0
        330A80131F9ACFFF00FFFF00FF1696CB8EFFFF7BFBFF79F7FF7AF6FF76E7F877
        E6F87DE9FB7EEDFC82F0FF04670A0C9A18036906FF00FFFF00FFFF00FF1392CA
        1696CB87F2FA88F4FC6CE3F61899CE1392CA1696CB1797CC1D9CCF04770A0589
        0CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1696CB1C99CE1898CCFF00FFFF
        00FFFF00FFFF00FF036F07058A0C036706FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF015603035E06046F0A037308025F05FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpbBancoClick
    end
    object Label3: TLabel
      Left = 90
      Top = 84
      Width = 47
      Height = 14
      Caption = 'Atributo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object lbl1: TLabel
      Left = 34
      Top = 106
      Width = 104
      Height = 14
      Caption = 'Modo de Pesquisa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object shp1: TShape
      Left = 8
      Top = 139
      Width = 554
      Height = 1
    end
    object Shape2: TShape
      Left = 8
      Top = 185
      Width = 554
      Height = 1
    end
    object BibConfirmar: TBitBtn
      Left = 224
      Top = 151
      Width = 87
      Height = 24
      Hint = 'Grava os dados e retorna ao c'#243'digo'
      Caption = '&Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000F0000000E0000000100
        04000000000070000000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8880888F28888888888088F22288888888808F22222888888880F22222228888
        8880F222F22228888880F22FFF222288888088888FF2222888808888888F2222
        88808888888FF222288088888888FF2222808888888888FFFF80888888888888
        88808888888888888880}
      ModalResult = 1
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BibConfirmarClick
    end
    object BibLimpar: TBitBtn
      Left = 143
      Top = 151
      Width = 74
      Height = 24
      Hint = 'Cancela opera'#231#227'o e retorna ao c'#243'digo'
      Caption = '&Limpar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF000080FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF000080FF00FFFF00FFFF00FF000080000080000080FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        000080000080000080000080FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF000080FF00FFFF00FFFF00FFFF00FFFF00FF000080000080000080FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF000080FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF000080000080000080FF00FFFF00FFFF00FFFF00FF0000800000
        80FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00008000008000
        0080FF00FFFF00FF000080000080FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF000080000080000080000080000080FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
        0080000080000080FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF000080000080000080000080000080FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00008000008000
        0080FF00FFFF00FF000080000080FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF000080000080000080000080FF00FFFF00FFFF00FFFF00FF0000800000
        80FF00FFFF00FFFF00FFFF00FFFF00FF000080000080000080000080FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF000080000080FF00FFFF00FFFF00FFFF00FF
        000080000080000080FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF000080FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ModalResult = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BibLimparClick
    end
    object ChkMostra: TCheckBox
      Left = 296
      Top = 106
      Width = 201
      Height = 14
      Caption = 'N'#227'o mostrar tabelas do sistema'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 2
    end
    object TxtBDAtu: TEdit
      Left = 144
      Top = 59
      Width = 394
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object txtAtribu: TEdit
      Left = 144
      Top = 81
      Width = 134
      Height = 22
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object cmbCamp: TComboBox
      Left = 144
      Top = 104
      Width = 134
      Height = 22
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 5
      Text = '%Campo%'
      Items.Strings = (
        '%Campo%'
        '%Campo'
        'Campo%')
    end
  end
  object DbResult: TDBGrid
    Left = 0
    Top = 192
    Width = 571
    Height = 165
    Ctl3D = False
    DataSource = DasGeral
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TABELA'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COLUNA'
        Width = 349
        Visible = True
      end>
  end
  object OpdBase1: TOpenDialog
    Filter = 
      'Arquivos de Base (*.GDB, *.FDB)|*.GDB;*.FDB|Arquivos GDB (*.GDB)' +
      '|*.GDB|Arquivos FDB (*.FDB)|*.FDB'
    Left = 36
    Top = 280
  end
  object DasGeral: TDataSource
    DataSet = CdsTab
    Left = 194
    Top = 280
  end
  object CdsTab: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 115
    Top = 280
    object CdsTabTABELA: TStringField
      FieldName = 'TABELA'
    end
    object CdsTabCOLUNA: TStringField
      FieldName = 'COLUNA'
    end
  end
  object fdConnection: TFDConnection
    Params.Strings = (
      'DriverID=IB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Database=C:\DoorsTech\Database\DOORS.GDB')
    LoginPrompt = False
    Left = 273
    Top = 280
  end
  object qryMaster: TFDQuery
    Connection = fdConnection
    Left = 432
    Top = 280
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 352
    Top = 280
  end
end
