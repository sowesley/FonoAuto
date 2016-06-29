object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 275
  Width = 475
  object conexao: TUniConnection
    ProviderName = 'InterBase'
    Database = 'D:\Wesley\fonoauto\BD\ERIKA.FDB'
    SpecificOptions.Strings = (
      'InterBase.Charset=ISO8859_1'
      'InterBase.ClientLibrary=fbclient.dll')
    Username = 'sysdba'
    Server = 'localhost'
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 16
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object InterBaseUniProvider1: TInterBaseUniProvider
    Left = 104
    Top = 16
  end
  object ExeInfo1: TExeInfo
    Version = '1.3.1.0'
    Left = 24
    Top = 72
  end
end
