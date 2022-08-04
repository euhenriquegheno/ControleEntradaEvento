object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Controle de Entrada'
  ClientHeight = 437
  ClientWidth = 784
  Color = clWhite
  CustomTitleBar.CaptionAlignment = taCenter
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 778
    Height = 62
    Align = alTop
    Color = clBackground
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 704
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 71
    Width = 778
    Height = 363
    Align = alClient
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
end
