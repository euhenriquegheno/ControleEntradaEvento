unit UDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.IBBase, FireDAC.Phys.FB, IniFiles, Forms, efuncoes;

type
  Tdm = class(TDataModule)
    Conexao: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    qrCliente: TFDQuery;
    qrClienteID: TIntegerField;
    qrClienteNOME: TStringField;
    qrClienteCPF_RG: TStringField;
    qrClienteVALOR: TFMTBCDField;
    qrClienteSETOR: TStringField;
    qrClienteSTATUS: TStringField;
    qrDeletarClientes: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure qrClienteAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
var
  caminhoTXT, caminhoBD, database, username, password, server: String;
  ArqIni : TIniFile;
begin
  //PEGA O CAMINHO EM QUE O PROGRAMA ESTA CONFIGURADO
  caminhoTXT := ExtractFilePath(Application.ExeName);
  caminhoTXT := caminhoTXT + 'banco\database.txt';

  //COMANDO PARA VERIFICAR SE EXISTE O ARQUIVO NA PASTA
  if (FileExists(CaminhoTXT)) then
  begin
    ArqIni := TIniFile.Create(caminhoTXT);
    try
      database := ArqIni.ReadString('Dados', 'database', database);
      username := ArqIni.ReadString('Dados', 'username', username);
      password := ArqIni.ReadString('Dados', 'password', password);
      server := ArqIni.ReadString('Dados', 'server', server);

    finally
      ArqIni.Free;
    end;
  end
  else
  begin
    ArqIni := TIniFile.Create(caminhoTXT);
    try
      ArqIni.WriteString('Dados', 'database', 'C:\ControleEntrada\Exe\Banco\BANCO.FDB');
      ArqIni.WriteString('Dados', 'username', 'SYSDBA');
      ArqIni.WriteString('Dados', 'password', 'masterkey');
      ArqIni.WriteString('Dados', 'server', 'localhost');

    finally
      ArqIni.Free;
    end;
    Application.Terminate;
  end;

  Try
    conexao.Params.Values['DataBase'] := database;
    conexao.Params.Values['User_name'] := username;
    conexao.Params.Values['Password'] := password;
    conexao.Params.Values['Server'] := server;

    conexao.Open;
    conexao.Connected := True
  Except
    Application.Terminate
  End;

end;

procedure Tdm.qrClienteAfterInsert(DataSet: TDataSet);
var query : TFDQuery;
    id : Integer;
begin
  query := TFDQuery.Create(self);//CRIA COMPONENTE NA MEMORIA
  query.Connection := Dm.Conexao;//VINCULA O COMPONENTE DE CONEXAO COM A QUERY
  query.Active := false;//DESATIVA CONEXAO DO QUERY COM O BANCO DE DADOS
  query.SQL.Add('SELECT MAX (ID) AS ID FROM CLIENTE');//SQL DE CONSULTA NO BANCO
  query.Active := True;

  if (query.FieldByName('ID').IsNull) then //VALIDA SE A COLUNA CODIGO � NULL
    id := 1
  else
    id := query.FieldByName('ID').AsInteger + 1;

  query.Free;//LIMPA A VARIAVEL QUERY DA MEM�RIA

  qrClienteID.AsInteger := id;
end;

end.
