unit BigNumeros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, ADODB, janRoundButton;

type
  TFrmBigNumeros = class(TForm)
    Label1: TLabel;
    Timer1: TTimer;
    Shape1: TShape;
    Label2: TLabel;
    Shape2: TShape;
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBigNumeros: TFrmBigNumeros;


implementation

uses Math, UnumeroSorteado, Funcoes, UDM, FrmResumo, UConjuntos;

{$R *.dfm}

procedure TFrmBigNumeros.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_ESCape then
close;
end;

procedure TFrmBigNumeros.FormKeyPress(Sender: TObject; var Key: Char);
Var
  Componente  : TComponent;
  letras : char;
  numero, i : integer;
begin
 IF KEY = #13 THEN
  Begin
  numero := sortear;
  conjunto(numero);
  letras := letra(numero);
  if numero <> 0 then
  begin
   Label1.Caption := inttostr(numero);
   Label2.Caption := letras;
  FrmGeral.StaticText1.Caption := inttostr(numero);
  FrmGeral.StaticText2.Caption := letras;
  Componente := FrmGeral.FindComponent( 'b'+IntToStr(numero));
  (Componente as TjanRoundButton).Font.Color := clwhite;

   for i := 0 to FrmGeral.ComponentCount -1 do
     if FrmGeral.Components[i] is TLabel then
       TLabel(FrmGeral.Components[i]).Font.Color := clwhite;
       Componente := FrmGeral.FindComponent(letras);
       (Componente as Tlabel).Font.Color := clRed;
   FrmBigNumeros.OnKeyPress := nil;
   Timer1.Enabled := true;
  end
  else
  begin
      for i := 0 to FrmGeral.ComponentCount -1 do
     if FrmGeral.Components[i] is TjanRoundButton then
       TjanRoundButton(FrmGeral.Components[i]).Font.Color := clblack;

    for i := 0 to FrmGeral.ComponentCount -1 do
     if FrmGeral.Components[i] is TLabel then
       TLabel(FrmGeral.Components[i]).Font.Color := clWhite;

    FrmGeral.StaticText1.Caption := '';
    FrmGeral.StaticText2.Caption := '';
   Label1.Caption := '';
   Label2.Caption := '';
  end;
 end;
end;

procedure TFrmBigNumeros.Timer1Timer(Sender: TObject);
begin
FrmBigNumeros.OnKeyPress := FormKeyPress;
Timer1.Enabled := false;
end;

procedure TFrmBigNumeros.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmGeral.BitBtn3.SetFocus;
end;

procedure TFrmBigNumeros.FormShow(Sender: TObject);
begin
   Label1.Caption := '';
   Label2.Caption := '';
end;

end.
