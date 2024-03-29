unit frmDeletaClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, udm, efuncoes;

type
  TfrmDeletarClientes = class(TForm)
    btnDeletarClientes: TButton;
    Label11: TLabel;
    procedure btnDeletarClientesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDeletarClientes: TfrmDeletarClientes;

implementation

{$R *.dfm}

procedure TfrmDeletarClientes.btnDeletarClientesClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente excluir todos os clientes cadastrados?', 'ATEN��O', mb_iconquestion + mb_yesno) = idYes then
  begin
    dm.qrDeletarClientes.SQL.Clear;
    dm.qrDeletarClientes.SQL.Add('delete from cliente');
    dm.qrDeletarClientes.ExecSQL;

    ShowMessage('Clientes excluidos com sucesso!');
    Close;
  end;
end;

end.
