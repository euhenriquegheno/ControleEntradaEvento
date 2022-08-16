object dm: Tdm
  OnCreate = DataModuleCreate
  Height = 105
  Width = 387
  object Conexao: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'DriverID=FB')
    LoginPrompt = False
    Left = 40
    Top = 24
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 136
    Top = 24
  end
  object qrCliente: TFDQuery
    AfterInsert = qrClienteAfterInsert
    Connection = Conexao
    SQL.Strings = (
      'select * from cliente')
    Left = 232
    Top = 24
    object qrClienteID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrClienteNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object qrClienteCPF_RG: TStringField
      FieldName = 'CPF_RG'
      Origin = 'CPF_RG'
    end
    object qrClienteVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrClienteSETOR: TStringField
      FieldName = 'SETOR'
      Origin = 'SETOR'
      Size = 50
    end
    object qrClienteSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 50
    end
  end
  object qrDeletarClientes: TFDQuery
    AfterInsert = qrClienteAfterInsert
    Connection = Conexao
    Left = 320
    Top = 24
  end
end
