unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Validar1: TMenuItem;
    Sorteio1: TMenuItem;
    Sair1: TMenuItem;
    Cartelas1: TMenuItem;
    Inicar1: TMenuItem;
    NovoSorteio1: TMenuItem;
    FinalizarSorteio1: TMenuItem;
    Folhacom4Cartelas1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Validar1Click(Sender: TObject);
    procedure Folhacom4Cartelas1Click(Sender: TObject);
    procedure Sorteio1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses BigNumeros, FrmResumo, UValidar, UnitRelCar1, UFaixaCartelas;

{$R *.dfm}

procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
close;
end;

procedure TFrmPrincipal.Validar1Click(Sender: TObject);
begin
FrmValidar.ShowModal;
end;

procedure TFrmPrincipal.Folhacom4Cartelas1Click(Sender: TObject);
begin
FrmFaixaCartelas.ShowModal;
end;

procedure TFrmPrincipal.Sorteio1Click(Sender: TObject);
begin
FrmGeral.ShowModal;
end;

end.
