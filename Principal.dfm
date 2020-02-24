object FrmPrincipal: TFrmPrincipal
  Left = 236
  Top = 172
  Width = 694
  Height = 475
  Caption = 'Programa Bingo'
  Color = clHotLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 16
    Top = 384
    object Inicar1: TMenuItem
      Caption = 'Iniciar'
      object NovoSorteio1: TMenuItem
        Caption = 'Novo Sorteio'
      end
      object FinalizarSorteio1: TMenuItem
        Caption = 'Finalizar Sorteio'
      end
    end
    object Validar1: TMenuItem
      Caption = 'Validar Cartelas'
      OnClick = Validar1Click
    end
    object Cartelas1: TMenuItem
      Caption = 'Imprimir'
      object Folhacom4Cartelas1: TMenuItem
        Caption = 'Folha com 4 Cartelas'
        OnClick = Folhacom4Cartelas1Click
      end
    end
    object Sorteio1: TMenuItem
      Caption = 'Inicar Sorteio'
      OnClick = Sorteio1Click
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end
