unit UFaixaCartelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, QuickRpt, QRCtrls, ExtCtrls;

type
  TFrmFaixaCartelas = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    BtnImprimir: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    ColorDialog1: TColorDialog;
    Button1: TButton;
    Shape1: TShape;
    procedure BtnImprimirClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFaixaCartelas: TFrmFaixaCartelas;
  numerotext  : TComponent;

implementation

uses UDM, UnitRelCar1, Math, DateUtils;

{$R *.dfm}

procedure TFrmFaixaCartelas.BtnImprimirClick(Sender: TObject);
var
 i : integer;
begin
DM.QRFaixaCartelas.Close;
DM.QRFaixaCartelas.SQL.Clear;
DM.QRFaixaCartelas.SQL.Add('select * from numeros where codigo >= ' + edit1.text + '');
DM.QRFaixaCartelas.SQL.Add(' and codigo <= ' + edit2.text + ' order by codigo');
DM.QRFaixaCartelas.Open;

with FormCar do
begin
for i := 2 to 25 do
begin
numerotext := FindComponent('QRDBText' + inttostr(i));
(numerotext as TQRDBText).Font.Color := Shape1.Brush.Color;
end;
QuickRep1.Preview;
end;
close;
end;

procedure TFrmFaixaCartelas.Button1Click(Sender: TObject);
begin
ColorDialog1.Execute;
If ColorDialog1.Color <> null then
Shape1.Brush.Color := ColorDialog1.Color;
end;

end.
