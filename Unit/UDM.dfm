object DataModule2: TDataModule2
  Height = 105
  Width = 300
  object Conexao: TFDConnection
    Left = 40
    Top = 24
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 136
    Top = 24
  end
  object qrCliente: TFDQuery
    Connection = Conexao
    Left = 232
    Top = 24
  end
end
