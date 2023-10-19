program ControleEntradaEvento;

uses
  Vcl.Forms,
  frmPrincipal in 'frmPrincipal.pas' {Form1},
  UDM in 'UDM.pas' {dm: TDataModule},
  EFuncoes in 'Unit\EFuncoes.pas',
  frmDeletaClientes in 'frmDeletaClientes.pas' {frmDeletarClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmDeletarClientes, frmDeletarClientes);
  Application.Run;
end.
