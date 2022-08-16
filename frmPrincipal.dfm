object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Controle de Entrada'
  ClientHeight = 545
  ClientWidth = 1159
  Color = clWhite
  CustomTitleBar.CaptionAlignment = taCenter
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object pcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 1159
    Height = 545
    ActivePage = tsConsulta
    Align = alClient
    TabOrder = 0
    OnChange = pcPrincipalChange
    object tsConsulta: TTabSheet
      Caption = 'Consulta'
      object DBGrid1: TDBGrid
        Left = 281
        Top = 62
        Width = 870
        Height = 453
        Align = alClient
        DataSource = dsCliente
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPF_RG'
            Title.Caption = 'CPF/RG'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SETOR'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Width = 150
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1151
        Height = 62
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object btnCadastrar: TButton
          AlignWithMargins = True
          Left = 1052
          Top = 10
          Width = 89
          Height = 42
          Margins.Left = 5
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alRight
          Caption = 'Cadastrar | F2'
          TabOrder = 0
          OnClick = btnCadastrarClick
        end
        object btnAlterar: TButton
          AlignWithMargins = True
          Left = 953
          Top = 10
          Width = 89
          Height = 42
          Margins.Left = 5
          Margins.Top = 10
          Margins.Right = 5
          Margins.Bottom = 10
          Align = alRight
          Caption = 'Alterar | F3'
          TabOrder = 1
          OnClick = btnAlterarClick
        end
        object btnExcluir: TButton
          AlignWithMargins = True
          Left = 854
          Top = 10
          Width = 89
          Height = 42
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 5
          Margins.Bottom = 10
          Align = alRight
          Caption = 'Excluir | F4'
          TabOrder = 2
          OnClick = btnExcluirClick
        end
        object btnConfCancEntrada: TButton
          AlignWithMargins = True
          Left = 45
          Top = 10
          Width = 191
          Height = 42
          Margins.Left = 45
          Margins.Top = 10
          Margins.Right = 0
          Margins.Bottom = 10
          Align = alLeft
          Caption = 'Confirmar/Cancelar Entrada'
          TabOrder = 3
          OnClick = btnConfCancEntradaClick
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 62
        Width = 281
        Height = 453
        Align = alLeft
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        object Label1: TLabel
          Left = 16
          Top = 22
          Width = 42
          Height = 17
          Caption = 'Cliente:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label2: TLabel
          Left = 16
          Top = 139
          Width = 34
          Height = 17
          Caption = 'Setor:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label3: TLabel
          Left = 16
          Top = 200
          Width = 35
          Height = 17
          Caption = 'Status'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label9: TLabel
          Left = 16
          Top = 81
          Width = 43
          Height = 17
          Caption = 'CPF/RG'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lbRegistros: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 433
          Width = 275
          Height = 17
          Align = alBottom
          Alignment = taCenter
          Caption = 'Registros...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitLeft = 87
          ExplicitTop = 435
          ExplicitWidth = 188
        end
        object edtNome: TEdit
          Left = 16
          Top = 45
          Width = 249
          Height = 23
          TabOrder = 0
          OnExit = edtNomeExit
          OnKeyPress = edtNomeKeyPress
        end
        object cbSetor: TComboBox
          Left = 16
          Top = 162
          Width = 249
          Height = 23
          TabOrder = 2
          Text = 'TODOS'
          OnChange = cbSetorChange
          OnKeyPress = cbSetorKeyPress
          Items.Strings = (
            'TODOS'
            'FRONT - VIP'
            'PISTA '
            'CAMAROTE '
            'BACKSTAGE')
        end
        object btnBuscar: TButton
          AlignWithMargins = True
          Left = 80
          Top = 370
          Width = 121
          Height = 50
          Margins.Left = 80
          Margins.Top = 10
          Margins.Right = 80
          Margins.Bottom = 10
          Align = alBottom
          Caption = 'Buscar'
          TabOrder = 5
          OnClick = btnBuscarClick
          ExplicitTop = 393
        end
        object cbStatus: TComboBox
          Left = 16
          Top = 223
          Width = 249
          Height = 23
          TabOrder = 3
          Text = 'TODOS'
          OnChange = cbStatusChange
          OnKeyPress = cbStatusKeyPress
          Items.Strings = (
            'TODOS'
            'ENTROU'
            'N'#195'O ENTROU')
        end
        object edtCpfRg: TEdit
          Left = 16
          Top = 104
          Width = 249
          Height = 23
          TabOrder = 1
          OnExit = edtCpfRgExit
          OnKeyPress = edtCpfRgKeyPress
        end
        object rgOrdenacao: TRadioGroup
          Left = 45
          Top = 265
          Width = 185
          Height = 64
          Caption = 'Ordena'#231#227'o'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'ID'
            'NOME'
            'SETOR'
            'STATUS')
          TabOrder = 4
          OnClick = rgOrdenacaoClick
        end
      end
    end
    object tsCadastro: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      object Label4: TLabel
        Left = 16
        Top = 48
        Width = 11
        Height = 15
        Caption = 'ID'
        Enabled = False
        FocusControl = DBEdit1
      end
      object Label5: TLabel
        Left = 16
        Top = 96
        Width = 43
        Height = 15
        Caption = 'NOME *'
        FocusControl = DBEdit2
      end
      object Label6: TLabel
        Left = 16
        Top = 144
        Width = 162
        Height = 15
        Caption = 'CPF/RG        (Apenas numeros)'
        FocusControl = DBEdit3
      end
      object Label7: TLabel
        Left = 16
        Top = 192
        Width = 37
        Height = 15
        Caption = 'VALOR'
        FocusControl = DBEdit4
      end
      object Label8: TLabel
        Left = 16
        Top = 240
        Width = 35
        Height = 15
        Caption = 'SETOR'
      end
      object Label10: TLabel
        Left = 16
        Top = 16
        Width = 54
        Height = 17
        Caption = 'Cadastro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 64
        Width = 81
        Height = 23
        DataField = 'ID'
        DataSource = dsCliente
        Enabled = False
        TabOrder = 4
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 112
        Width = 500
        Height = 23
        CharCase = ecUpperCase
        DataField = 'NOME'
        DataSource = dsCliente
        TabOrder = 0
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 16
        Top = 163
        Width = 169
        Height = 23
        Hint = 'CPF/RG Com apenas numeros...'
        DataField = 'CPF_RG'
        DataSource = dsCliente
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyPress = DBEdit3KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 208
        Width = 169
        Height = 23
        Hint = 'Valor'
        DataField = 'VALOR'
        DataSource = dsCliente
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnKeyPress = DBEdit4KeyPress
      end
      object DBComboBox1: TDBComboBox
        Left = 16
        Top = 261
        Width = 145
        Height = 23
        CharCase = ecUpperCase
        DataField = 'SETOR'
        DataSource = dsCliente
        Items.Strings = (
          'PISTA'
          'FRONT - VIP '
          'CAMAROTE '
          'BACKSTAGE')
        TabOrder = 3
        OnKeyPress = DBComboBox1KeyPress
      end
      object Panel3: TPanel
        Left = 0
        Top = 464
        Width = 1151
        Height = 51
        Align = alBottom
        TabOrder = 5
        object btnCancelar: TButton
          AlignWithMargins = True
          Left = 957
          Top = 6
          Width = 89
          Height = 39
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alRight
          Caption = 'Cancelar | Esc'
          TabOrder = 0
          OnClick = btnCancelarClick
        end
        object btnGravar: TButton
          AlignWithMargins = True
          Left = 1056
          Top = 6
          Width = 89
          Height = 39
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alRight
          Caption = 'Gravar | F5'
          TabOrder = 1
          OnClick = btnGravarClick
        end
      end
    end
  end
  object dsCliente: TDataSource
    DataSet = dm.qrCliente
    Left = 688
    Top = 400
  end
  object PopupMenu1: TPopupMenu
    Left = 540
    Top = 258
    object Cadastrar1: TMenuItem
      Caption = 'Cadastrar'
      ShortCut = 113
      OnClick = btnCadastrarClick
    end
    object Alterar1: TMenuItem
      Caption = 'Alterar'
      ShortCut = 114
      OnClick = btnAlterarClick
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = btnCancelarClick
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 115
      OnClick = btnExcluirClick
    end
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 116
      OnClick = btnGravarClick
    end
  end
  object MainMenu1: TMainMenu
    Left = 628
    Top = 242
    object Utilitario1: TMenuItem
      Caption = 'Utilitario'
      OnClick = Utilitario1Click
    end
  end
end
