object FrmNumeroSort: TFrmNumeroSort
  Left = 850
  Top = 1
  BorderStyle = bsDialog
  Caption = 'N'#250'meros Sorteados'
  ClientHeight = 138
  ClientWidth = 169
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 169
    Height = 138
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -80
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Numero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -80
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero'
        Width = 132
        Visible = True
      end>
  end
end
