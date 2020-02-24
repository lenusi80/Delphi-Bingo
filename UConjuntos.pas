unit UConjuntos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses FrmResumo, Funcoes, UDM;

{$R *.dfm}

procedure TForm3.FormShow(Sender: TObject);
begin
Label6.Caption := SB;
Label7.Caption := SI;
Label8.Caption := SN;
Label9.Caption := SG;
Label10.Caption := SO;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
ganhadores(RadioButton1.Checked,RadioButton2.Checked,RadioButton3.Checked)
end;

end.


