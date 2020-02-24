object DM: TDM
  OldCreateOrder = False
  Left = 226
  Top = 211
  Height = 409
  Width = 612
  object ConectaBD: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Bingo\Dados.mdb;' +
      'Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 96
    Top = 24
  end
  object TbTempNumerSort: TADOTable
    Connection = ConectaBD
    CursorType = ctStatic
    TableName = 'Evento'
    Left = 64
    Top = 88
    object TbTempNumerSortNumero: TIntegerField
      DisplayWidth = 4
      FieldName = 'Numero'
    end
  end
  object QRTemp: TADOQuery
    Connection = ConectaBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from sorteados')
    Left = 64
    Top = 152
  end
  object DSTempNumerSort: TDataSource
    DataSet = TbTempNumerSort
    Left = 168
    Top = 88
  end
  object DSTemp: TDataSource
    DataSet = QRTemp
    Left = 168
    Top = 152
  end
  object QRNumeros: TADOQuery
    Active = True
    Connection = ConectaBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from numeros')
    Left = 64
    Top = 264
    object QRNumerosCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
    end
    object QRNumerosB1: TIntegerField
      FieldName = 'B1'
    end
    object QRNumerosB2: TIntegerField
      FieldName = 'B2'
    end
    object QRNumerosB3: TIntegerField
      FieldName = 'B3'
    end
    object QRNumerosB4: TIntegerField
      FieldName = 'B4'
    end
    object QRNumerosB5: TIntegerField
      FieldName = 'B5'
    end
    object QRNumerosI1: TIntegerField
      FieldName = 'I1'
    end
    object QRNumerosI2: TIntegerField
      FieldName = 'I2'
    end
    object QRNumerosI3: TIntegerField
      FieldName = 'I3'
    end
    object QRNumerosI4: TIntegerField
      FieldName = 'I4'
    end
    object QRNumerosI5: TIntegerField
      FieldName = 'I5'
    end
    object QRNumerosN1: TIntegerField
      FieldName = 'N1'
    end
    object QRNumerosN2: TIntegerField
      FieldName = 'N2'
    end
    object QRNumerosN3: TIntegerField
      FieldName = 'N3'
    end
    object QRNumerosN4: TIntegerField
      FieldName = 'N4'
    end
    object QRNumerosG1: TIntegerField
      FieldName = 'G1'
    end
    object QRNumerosG2: TIntegerField
      FieldName = 'G2'
    end
    object QRNumerosG3: TIntegerField
      FieldName = 'G3'
    end
    object QRNumerosG4: TIntegerField
      FieldName = 'G4'
    end
    object QRNumerosG5: TIntegerField
      FieldName = 'G5'
    end
    object QRNumerosO1: TIntegerField
      FieldName = 'O1'
    end
    object QRNumerosO2: TIntegerField
      FieldName = 'O2'
    end
    object QRNumerosO3: TIntegerField
      FieldName = 'O3'
    end
    object QRNumerosO4: TIntegerField
      FieldName = 'O4'
    end
    object QRNumerosO5: TIntegerField
      FieldName = 'O5'
    end
    object QRNumerosVALIDAR: TBooleanField
      FieldName = 'VALIDAR'
    end
  end
  object DsNumeros: TDataSource
    DataSet = QRNumeros
    Left = 160
    Top = 264
  end
  object DsTbNumeros: TDataSource
    DataSet = TbNumeros
    Left = 168
    Top = 208
  end
  object TbNumeros: TADOTable
    Active = True
    Connection = ConectaBD
    CursorType = ctStatic
    TableName = 'Numeros'
    Left = 64
    Top = 208
    object TbNumerosCodigo: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
      EditFormat = '0000'
    end
    object TbNumerosB1: TIntegerField
      FieldName = 'B1'
    end
    object TbNumerosB2: TIntegerField
      FieldName = 'B2'
    end
    object TbNumerosB3: TIntegerField
      FieldName = 'B3'
    end
    object TbNumerosB4: TIntegerField
      FieldName = 'B4'
    end
    object TbNumerosB5: TIntegerField
      FieldName = 'B5'
    end
    object TbNumerosI1: TIntegerField
      FieldName = 'I1'
    end
    object TbNumerosI2: TIntegerField
      FieldName = 'I2'
    end
    object TbNumerosI3: TIntegerField
      FieldName = 'I3'
    end
    object TbNumerosI4: TIntegerField
      FieldName = 'I4'
    end
    object TbNumerosI5: TIntegerField
      FieldName = 'I5'
    end
    object TbNumerosN1: TIntegerField
      FieldName = 'N1'
    end
    object TbNumerosN2: TIntegerField
      FieldName = 'N2'
    end
    object TbNumerosN3: TIntegerField
      FieldName = 'N3'
    end
    object TbNumerosN4: TIntegerField
      FieldName = 'N4'
    end
    object TbNumerosG1: TIntegerField
      FieldName = 'G1'
    end
    object TbNumerosG2: TIntegerField
      FieldName = 'G2'
    end
    object TbNumerosG3: TIntegerField
      FieldName = 'G3'
    end
    object TbNumerosG4: TIntegerField
      FieldName = 'G4'
    end
    object TbNumerosG5: TIntegerField
      FieldName = 'G5'
    end
    object TbNumerosO1: TIntegerField
      FieldName = 'O1'
    end
    object TbNumerosO2: TIntegerField
      FieldName = 'O2'
    end
    object TbNumerosO3: TIntegerField
      FieldName = 'O3'
    end
    object TbNumerosO4: TIntegerField
      FieldName = 'O4'
    end
    object TbNumerosO5: TIntegerField
      FieldName = 'O5'
    end
    object TbNumerosVALIDAR: TBooleanField
      FieldName = 'VALIDAR'
    end
  end
  object QRFaixaCartelas: TADOQuery
    Active = True
    Connection = ConectaBD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from numeros')
    Left = 64
    Top = 320
    object AutoIncField1: TAutoIncField
      FieldName = 'Codigo'
      ReadOnly = True
      DisplayFormat = '0000'
    end
    object IntegerField1: TIntegerField
      FieldName = 'B1'
    end
    object IntegerField2: TIntegerField
      FieldName = 'B2'
    end
    object IntegerField3: TIntegerField
      FieldName = 'B3'
    end
    object IntegerField4: TIntegerField
      FieldName = 'B4'
    end
    object IntegerField5: TIntegerField
      FieldName = 'B5'
    end
    object IntegerField6: TIntegerField
      FieldName = 'I1'
    end
    object IntegerField7: TIntegerField
      FieldName = 'I2'
    end
    object IntegerField8: TIntegerField
      FieldName = 'I3'
    end
    object IntegerField9: TIntegerField
      FieldName = 'I4'
    end
    object IntegerField10: TIntegerField
      FieldName = 'I5'
    end
    object IntegerField11: TIntegerField
      FieldName = 'N1'
    end
    object IntegerField12: TIntegerField
      FieldName = 'N2'
    end
    object IntegerField13: TIntegerField
      FieldName = 'N3'
    end
    object IntegerField14: TIntegerField
      FieldName = 'N4'
    end
    object IntegerField15: TIntegerField
      FieldName = 'G1'
    end
    object IntegerField16: TIntegerField
      FieldName = 'G2'
    end
    object IntegerField17: TIntegerField
      FieldName = 'G3'
    end
    object IntegerField18: TIntegerField
      FieldName = 'G4'
    end
    object IntegerField19: TIntegerField
      FieldName = 'G5'
    end
    object IntegerField20: TIntegerField
      FieldName = 'O1'
    end
    object IntegerField21: TIntegerField
      FieldName = 'O2'
    end
    object IntegerField22: TIntegerField
      FieldName = 'O3'
    end
    object IntegerField23: TIntegerField
      FieldName = 'O4'
    end
    object IntegerField24: TIntegerField
      FieldName = 'O5'
    end
    object BooleanField1: TBooleanField
      FieldName = 'VALIDAR'
    end
  end
  object DSFaixaCartelas: TDataSource
    DataSet = QRFaixaCartelas
    Left = 160
    Top = 320
  end
end
