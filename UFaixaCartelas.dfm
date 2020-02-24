object FrmFaixaCartelas: TFrmFaixaCartelas
  Left = 310
  Top = 198
  BorderStyle = bsDialog
  Caption = 'Cartelas a Imprimir'
  ClientHeight = 159
  ClientWidth = 208
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 63
    Height = 13
    Caption = 'Cartela Inicial'
  end
  object Label2: TLabel
    Left = 25
    Top = 52
    Width = 58
    Height = 13
    Caption = 'Cartela Final'
  end
  object Shape1: TShape
    Left = 21
    Top = 87
    Width = 33
    Height = 25
    Brush.Color = clRed
  end
  object BtnImprimir: TButton
    Left = 52
    Top = 123
    Width = 105
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 0
    OnClick = BtnImprimirClick
  end
  object Edit1: TEdit
    Left = 104
    Top = 16
    Width = 70
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 104
    Top = 48
    Width = 70
    Height = 21
    TabOrder = 2
  end
  object UpDown1: TUpDown
    Left = 174
    Top = 16
    Width = 16
    Height = 21
    Associate = Edit1
    Min = 1
    Max = 2999
    Position = 1
    TabOrder = 3
  end
  object UpDown2: TUpDown
    Left = 174
    Top = 48
    Width = 16
    Height = 21
    Associate = Edit2
    Min = 2
    Max = 3000
    Position = 2
    TabOrder = 4
  end
  object Button1: TButton
    Left = 69
    Top = 88
    Width = 122
    Height = 25
    Caption = 'Escolher cor da cartela'
    TabOrder = 5
    OnClick = Button1Click
  end
  object ColorDialog1: TColorDialog
    Left = 176
    Top = 120
  end
end
