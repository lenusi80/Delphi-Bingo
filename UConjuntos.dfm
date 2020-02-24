object Form3: TForm3
  Left = 204
  Top = 163
  Width = 798
  Height = 457
  Caption = 'Form3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 9
    Height = 13
    Caption = 'B'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 48
    Width = 5
    Height = 13
    Caption = 'I'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 72
    Width = 10
    Height = 13
    Caption = 'N'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 96
    Width = 10
    Height = 13
    Caption = 'G'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 120
    Width = 10
    Height = 13
    Caption = 'O'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 48
    Top = 24
    Width = 32
    Height = 13
    Caption = 'Label6'
  end
  object Label7: TLabel
    Left = 48
    Top = 48
    Width = 32
    Height = 13
    Caption = 'Label7'
  end
  object Label8: TLabel
    Left = 48
    Top = 72
    Width = 32
    Height = 13
    Caption = 'Label8'
  end
  object Label9: TLabel
    Left = 48
    Top = 96
    Width = 32
    Height = 13
    Caption = 'Label9'
  end
  object Label10: TLabel
    Left = 48
    Top = 120
    Width = 38
    Height = 13
    Caption = 'Label10'
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 144
    Width = 761
    Height = 217
    DataSource = DM.DsNumeros
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'B1'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'B2'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'B3'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'B4'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'B5'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'I1'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'I2'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'I3'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'I4'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'I5'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N1'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N2'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N3'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N4'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'G1'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'G2'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'G3'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'G4'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'G5'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'O1'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'O2'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'O3'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'O4'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'O5'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALIDAR'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 24
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Verificar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object GroupBox1: TGroupBox
    Left = 120
    Top = 370
    Width = 657
    Height = 46
    Caption = 'GroupBox1'
    TabOrder = 2
    object RadioButton1: TRadioButton
      Left = 24
      Top = 20
      Width = 113
      Height = 17
      Caption = 'Cheia'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 223
      Top = 19
      Width = 113
      Height = 17
      Caption = 'Por Linha'
      TabOrder = 1
    end
    object RadioButton3: TRadioButton
      Left = 435
      Top = 19
      Width = 113
      Height = 17
      Caption = 'Por Coluna'
      TabOrder = 2
    end
  end
end
