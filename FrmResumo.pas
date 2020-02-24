unit FrmResumo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, janRoundButton, ExtCtrls, Buttons, CJVLed;

type
  TFrmGeral = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    B: TLabel;
    I: TLabel;
    N: TLabel;
    G: TLabel;
    O: TLabel;
    b1: TjanRoundButton;
    b16: TjanRoundButton;
    b31: TjanRoundButton;
    b46: TjanRoundButton;
    b61: TjanRoundButton;
    b2: TjanRoundButton;
    b17: TjanRoundButton;
    b32: TjanRoundButton;
    b47: TjanRoundButton;
    b62: TjanRoundButton;
    b3: TjanRoundButton;
    b18: TjanRoundButton;
    b33: TjanRoundButton;
    b48: TjanRoundButton;
    b63: TjanRoundButton;
    b8: TjanRoundButton;
    b23: TjanRoundButton;
    b38: TjanRoundButton;
    b53: TjanRoundButton;
    b68: TjanRoundButton;
    b4: TjanRoundButton;
    b19: TjanRoundButton;
    b34: TjanRoundButton;
    b49: TjanRoundButton;
    b64: TjanRoundButton;
    b5: TjanRoundButton;
    b20: TjanRoundButton;
    b35: TjanRoundButton;
    b50: TjanRoundButton;
    b65: TjanRoundButton;
    b6: TjanRoundButton;
    b21: TjanRoundButton;
    b36: TjanRoundButton;
    b51: TjanRoundButton;
    b66: TjanRoundButton;
    b7: TjanRoundButton;
    b22: TjanRoundButton;
    b37: TjanRoundButton;
    b52: TjanRoundButton;
    b67: TjanRoundButton;
    b9: TjanRoundButton;
    b24: TjanRoundButton;
    b39: TjanRoundButton;
    b54: TjanRoundButton;
    b69: TjanRoundButton;
    b10: TjanRoundButton;
    b25: TjanRoundButton;
    b40: TjanRoundButton;
    b55: TjanRoundButton;
    b70: TjanRoundButton;
    b11: TjanRoundButton;
    b26: TjanRoundButton;
    b41: TjanRoundButton;
    b56: TjanRoundButton;
    b71: TjanRoundButton;
    b12: TjanRoundButton;
    b27: TjanRoundButton;
    b42: TjanRoundButton;
    b57: TjanRoundButton;
    b72: TjanRoundButton;
    b13: TjanRoundButton;
    b28: TjanRoundButton;
    b43: TjanRoundButton;
    b58: TjanRoundButton;
    b73: TjanRoundButton;
    b14: TjanRoundButton;
    b29: TjanRoundButton;
    b44: TjanRoundButton;
    b59: TjanRoundButton;
    b74: TjanRoundButton;
    b15: TjanRoundButton;
    b30: TjanRoundButton;
    b45: TjanRoundButton;
    b60: TjanRoundButton;
    b75: TjanRoundButton;
    GroupBox3: TGroupBox;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    Shape1: TShape;
    Timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    GroupBox4: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    RadioGroup1: TRadioGroup;
    CJVLed1: TCJVLed;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  FrmGeral: TFrmGeral;
  Componente  : TComponent;
  numero, x : integer;
  NumerosSorteados : TStringList;
  cheia,linha,coluna : boolean;

implementation

uses Funcoes, Principal, UConjuntos, BigNumeros;


{$R *.dfm}

procedure TFrmGeral.FormClose(Sender: TObject; var Action: TCloseAction);
begin
NumerosSorteados.Free;
//LimpaTemp;
end;

procedure TFrmGeral.BitBtn1Click(Sender: TObject);
begin
FrmBigNumeros.Show;
end;

procedure TFrmGeral.Timer1Timer(Sender: TObject);
begin
if x = 0 then
begin
 Componente := FindComponent( 'b'+IntToStr(numero));
(Componente as TjanRoundButton).Font.Color := clblack;
inc(x);
Timer2.Enabled := true;
Timer1.Enabled := false;
end
 else
  begin
    (Componente as TjanRoundButton).Font.Color := clblack;
     inc(x);
     Timer2.Enabled := true;
     Timer1.Enabled := false;
  end;
end;

procedure TFrmGeral.Timer2Timer(Sender: TObject);
begin
if x <= 3 then
begin
(Componente as TjanRoundButton).Font.Color := clWhite;
 Timer1.Enabled := true;
 Timer2.Enabled := false;
 end
 else
 begin
(Componente as TjanRoundButton).Font.Color := clWhite;
 x := 0;
 BitBtn3.OnClick := BitBtn3Click;
 Timer2.Enabled := false;
 end;
end;

procedure TFrmGeral.FormShow(Sender: TObject);
begin
  cheia := true;
     x := 1;
       SB := '0';
       SI := '0';
       SN := '0';
       SG := '0';
       SO := '0';
     Timer3.Enabled := true;
     FrmGeral.Enabled := false;
  NumerosSorteados := TStringList.Create;
end;

procedure TFrmGeral.Timer3Timer(Sender: TObject);
begin
  Componente := FindComponent( 'b'+IntToStr(x));
 (Componente as TjanRoundButton).Font.Color := clwhite;
 Timer3.Enabled := false;
 Timer4.Enabled := true;
end;

procedure TFrmGeral.Timer4Timer(Sender: TObject);
begin
 if x <> 75 then
 begin
 inc(x);
 Timer4.Enabled := false;
 Timer3.Enabled := true;
 end
 else
 begin
  For x := 0 to ComponentCount -1 do
   if Components[x] is TjanRoundButton then
    TjanRoundButton(Components[x]).Font.Color := clblack;
     FrmGeral.Enabled := true;
     BitBtn3.SetFocus;
   Timer4.Enabled := false;
 end;    
end;

procedure TFrmGeral.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrmGeral.BitBtn3Click(Sender: TObject);
Var
  letras : char;
  i : integer;
  CartelaGanhadora : boolean;
begin
 x := 0;
 numero := sortear;
 Conjunto(numero);
 letras := letra(numero);
 CJVLed1.IsOn := ganhadores(cheia,linha,coluna);
 if numero <> 0 then
  begin
  StaticText1.Caption := inttostr(numero);
  StaticText2.Caption := letras;
  Componente := FindComponent( 'b'+IntToStr(numero));
  (Componente as TjanRoundButton).Font.Color := clWhite;

   for i := 0 to ComponentCount -1 do
     if Components[i] is TLabel then
       TLabel(Components[i]).Font.Color := clwhite;
       Componente := FindComponent(letras);
       (Componente as Tlabel).Font.Color := clred;
     Timer1.Enabled := true;
     BitBtn3.OnClick := nil;
 end
 else
  begin
    for i := 0 to ComponentCount -1 do
     if Components[i] is TjanRoundButton then
       TjanRoundButton(Components[i]).Font.Color := clblack;

    for i := 0 to ComponentCount -1 do
     if Components[i] is TLabel then
       TLabel(Components[i]).Font.Color := clwhite;

       SB := '0';
       SI := '0';
       SN := '0';
       SG := '0';
       SO := '0';

    StaticText1.Caption := '';
    StaticText2.Caption := '';
  end;

end;

procedure TFrmGeral.BitBtn4Click(Sender: TObject);
var
  i : integer;
begin
if messagedlg('Deseja finalizar Rodada?',mtConfirmation,[mbyes,mbno],0) = mryes then
 begin
 NumerosSorteados.Clear;
  //LimpaTemp;
      for i := 0 to ComponentCount -1 do
     if Components[i] is TjanRoundButton then
       TjanRoundButton(Components[i]).Font.Color := clblack;

    for i := 0 to ComponentCount -1 do
     if Components[i] is TLabel then
       TLabel(Components[i]).Font.Color := clwhite;

       SB := '0';
       SI := '0';
       SN := '0';
       SG := '0';
       SO := '0';

    StaticText1.Caption := '';
    StaticText2.Caption := '';
  end;

end;

procedure TFrmGeral.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_F1 then
Form3.Show;
end;

procedure TFrmGeral.RadioGroup1Click(Sender: TObject);
begin
case RadioGroup1.ItemIndex of
0 : begin cheia := true; linha := false; coluna := false; end;
1 : begin cheia := false; linha := true; coluna := false; end;
2 : begin cheia := false; linha := false; coluna := true; end;
end;
 CJVLed1.IsOn := ganhadores(cheia,linha,coluna);
end;

end.
