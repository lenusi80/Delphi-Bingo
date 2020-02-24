unit UnumeroSorteado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids;

type
  TFrmNumeroSort = class(TForm)
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNumeroSort: TFrmNumeroSort;

implementation

uses Principal, UDM;

{$R *.dfm}

procedure TFrmNumeroSort.FormShow(Sender: TObject);
begin
DM.TbTempNumerSort.Requery([]);
end;

end.
