program Produto;

uses
  Vcl.Forms,
  Lista in 'Lista.pas' {Form2},
  TelaCadastroProduto in 'TelaCadastroProduto.pas' {frmTelaCadastroProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
