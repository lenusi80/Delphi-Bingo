object FrmValidar: TFrmValidar
  Left = 364
  Top = 260
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Valida'#231#227'o de Cartelas'
  ClientHeight = 277
  ClientWidth = 485
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 15
    Top = 72
    Width = 106
    Height = 13
    Caption = 'Cartelas Validadas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 32
    Top = 19
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 200
    Top = 16
    Width = 113
    Height = 25
    Caption = 'Validar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 320
    Top = 16
    Width = 145
    Height = 25
    Caption = 'Liberar Todas Cartelas'
    TabOrder = 2
    TabStop = False
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 12
    Top = 90
    Width = 461
    Height = 173
    DataSource = DataSource2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Width = 50
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
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 344
    Top = 56
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = DM.ConectaBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from numeros where validar = true order by codigo')
    Left = 280
    Top = 56
    object ADOQuery1Codigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
      DisplayFormat = '0000'
    end
    object ADOQuery1B1: TIntegerField
      FieldName = 'B1'
    end
    object ADOQuery1B2: TIntegerField
      FieldName = 'B2'
    end
    object ADOQuery1B3: TIntegerField
      FieldName = 'B3'
    end
    object ADOQuery1B4: TIntegerField
      FieldName = 'B4'
    end
    object ADOQuery1B5: TIntegerField
      FieldName = 'B5'
    end
    object ADOQuery1I1: TIntegerField
      FieldName = 'I1'
    end
    object ADOQuery1I2: TIntegerField
      FieldName = 'I2'
    end
    object ADOQuery1I3: TIntegerField
      FieldName = 'I3'
    end
    object ADOQuery1I4: TIntegerField
      FieldName = 'I4'
    end
    object ADOQuery1I5: TIntegerField
      FieldName = 'I5'
    end
    object ADOQuery1N1: TIntegerField
      FieldName = 'N1'
    end
    object ADOQuery1N2: TIntegerField
      FieldName = 'N2'
    end
    object ADOQuery1N3: TIntegerField
      FieldName = 'N3'
    end
    object ADOQuery1N4: TIntegerField
      FieldName = 'N4'
    end
    object ADOQuery1G1: TIntegerField
      FieldName = 'G1'
    end
    object ADOQuery1G2: TIntegerField
      FieldName = 'G2'
    end
    object ADOQuery1G3: TIntegerField
      FieldName = 'G3'
    end
    object ADOQuery1G4: TIntegerField
      FieldName = 'G4'
    end
    object ADOQuery1G5: TIntegerField
      FieldName = 'G5'
    end
    object ADOQuery1O1: TIntegerField
      FieldName = 'O1'
    end
    object ADOQuery1O2: TIntegerField
      FieldName = 'O2'
    end
    object ADOQuery1O3: TIntegerField
      FieldName = 'O3'
    end
    object ADOQuery1O4: TIntegerField
      FieldName = 'O4'
    end
    object ADOQuery1O5: TIntegerField
      FieldName = 'O5'
    end
    object ADOQuery1VALIDAR: TBooleanField
      FieldName = 'VALIDAR'
    end
  end
end
