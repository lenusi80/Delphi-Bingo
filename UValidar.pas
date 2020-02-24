unit UValidar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ADODB;

type
  TFrmValidar = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    DataSource2: TDataSource;
    ADOQuery1: TADOQuery;
    ADOQuery1Codigo: TAutoIncField;
    ADOQuery1B1: TIntegerField;
    ADOQuery1B2: TIntegerField;
    ADOQuery1B3: TIntegerField;
    ADOQuery1B4: TIntegerField;
    ADOQuery1B5: TIntegerField;
    ADOQuery1I1: TIntegerField;
    ADOQuery1I2: TIntegerField;
    ADOQuery1I3: TIntegerField;
    ADOQuery1I4: TIntegerField;
    ADOQuery1I5: TIntegerField;
    ADOQuery1N1: TIntegerField;
    ADOQuery1N2: TIntegerField;
    ADOQuery1N3: TIntegerField;
    ADOQuery1N4: TIntegerField;
    ADOQuery1G1: TIntegerField;
    ADOQuery1G2: TIntegerField;
    ADOQuery1G3: TIntegerField;
    ADOQuery1G4: TIntegerField;
    ADOQuery1G5: TIntegerField;
    ADOQuery1O1: TIntegerField;
    ADOQuery1O2: TIntegerField;
    ADOQuery1O3: TIntegerField;
    ADOQuery1O4: TIntegerField;
    ADOQuery1O5: TIntegerField;
    ADOQuery1VALIDAR: TBooleanField;
    Button2: TButton;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmValidar: TFrmValidar;

implementation

uses UDM, Math;

{$R *.dfm}

procedure TFrmValidar.Button1Click(Sender: TObject);
begin
If Edit1.Text <> '' then
 begin
  if DM.TbNumeros.Locate('codigo',edit1.Text,[loCaseInsensitive]) = true then
   begin
    if DM.TbNumerosVALIDAR.AsBoolean = false then
     begin
      DM.TbNumeros.Edit;
      DM.TbNumerosVALIDAR.AsBoolean := true;
      DM.TbNumeros.Post;
     end
     else
      ShowMessage('Cartela já está validada');
   end
  else
   ShowMessage('Número de cartela não encontrado');
 end
 else
  ShowMessage('Nenhum número para Validar');

DM.TbNumeros.Requery([]);
ADOQuery1.Requery([]);
Edit1.SetFocus;
Edit1.Clear;
end;

procedure TFrmValidar.FormShow(Sender: TObject);
begin
Edit1.SetFocus;
end;

procedure TFrmValidar.Button2Click(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('update Numeros set validar = false where validar = true');
ADOQuery1.ExecSQL;

ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from numeros where validar = true');
ADOQuery1.Open;
Edit1.SetFocus;

DM.TbNumeros.Requery([]);
end;

procedure TFrmValidar.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
      Key := #0;
      PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
end;
end;

end.
