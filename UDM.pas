unit UDM;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM = class(TDataModule)
    ConectaBD: TADOConnection;
    TbTempNumerSort: TADOTable;
    TbTempNumerSortNumero: TIntegerField;
    QRTemp: TADOQuery;
    DSTempNumerSort: TDataSource;
    DSTemp: TDataSource;
    QRNumeros: TADOQuery;
    DsNumeros: TDataSource;
    QRNumerosCodigo: TAutoIncField;
    QRNumerosB1: TIntegerField;
    QRNumerosB2: TIntegerField;
    QRNumerosB3: TIntegerField;
    QRNumerosB4: TIntegerField;
    QRNumerosB5: TIntegerField;
    QRNumerosI1: TIntegerField;
    QRNumerosI2: TIntegerField;
    QRNumerosI3: TIntegerField;
    QRNumerosI4: TIntegerField;
    QRNumerosI5: TIntegerField;
    QRNumerosN1: TIntegerField;
    QRNumerosN2: TIntegerField;
    QRNumerosN3: TIntegerField;
    QRNumerosN4: TIntegerField;
    QRNumerosG1: TIntegerField;
    QRNumerosG2: TIntegerField;
    QRNumerosG3: TIntegerField;
    QRNumerosG4: TIntegerField;
    QRNumerosG5: TIntegerField;
    QRNumerosO1: TIntegerField;
    QRNumerosO2: TIntegerField;
    QRNumerosO3: TIntegerField;
    QRNumerosO4: TIntegerField;
    QRNumerosO5: TIntegerField;
    QRNumerosVALIDAR: TBooleanField;
    DsTbNumeros: TDataSource;
    TbNumeros: TADOTable;
    TbNumerosCodigo: TAutoIncField;
    TbNumerosB1: TIntegerField;
    TbNumerosB2: TIntegerField;
    TbNumerosB3: TIntegerField;
    TbNumerosB4: TIntegerField;
    TbNumerosB5: TIntegerField;
    TbNumerosI1: TIntegerField;
    TbNumerosI2: TIntegerField;
    TbNumerosI3: TIntegerField;
    TbNumerosI4: TIntegerField;
    TbNumerosI5: TIntegerField;
    TbNumerosN1: TIntegerField;
    TbNumerosN2: TIntegerField;
    TbNumerosN3: TIntegerField;
    TbNumerosN4: TIntegerField;
    TbNumerosG1: TIntegerField;
    TbNumerosG2: TIntegerField;
    TbNumerosG3: TIntegerField;
    TbNumerosG4: TIntegerField;
    TbNumerosG5: TIntegerField;
    TbNumerosO1: TIntegerField;
    TbNumerosO2: TIntegerField;
    TbNumerosO3: TIntegerField;
    TbNumerosO4: TIntegerField;
    TbNumerosO5: TIntegerField;
    TbNumerosVALIDAR: TBooleanField;
    QRFaixaCartelas: TADOQuery;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    IntegerField18: TIntegerField;
    IntegerField19: TIntegerField;
    IntegerField20: TIntegerField;
    IntegerField21: TIntegerField;
    IntegerField22: TIntegerField;
    IntegerField23: TIntegerField;
    IntegerField24: TIntegerField;
    BooleanField1: TBooleanField;
    DSFaixaCartelas: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
