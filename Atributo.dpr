program Atributo;

uses
  Forms,
  Atributos in 'Atributos.pas' {frmAtribu};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmAtribu, frmAtribu);
  Application.Run;
end.
