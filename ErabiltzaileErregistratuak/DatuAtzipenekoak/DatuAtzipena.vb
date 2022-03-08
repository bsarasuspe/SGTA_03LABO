Imports System.Data.Common
Imports System.Data.SqlClient
Imports System.Runtime.Serialization

Public Class DatuAtzipena

    Private Shared conSGTA_DB_Erabiltzaileak As SqlConnection
    Private Shared sqlCommand As SqlCommand
    Private Shared sqlDataAdapter As SqlDataAdapter
    Private Shared instance As DatuAtzipena

    Private Sub New()

    End Sub

    Public Shared Sub Konektatu()
        Dim strconSGTA_DB_Erabiltzaileak As String = "Server=tcp:sgta-proba2022.database.windows.net,1433;Initial Catalog=sgta2022-proba;Persist Security Info=False;User ID=sgta-proba2022;Password=Bsarasua18#;MultipleActiveResultSets=True;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"
        Try
            conSGTA_DB_Erabiltzaileak = New SqlConnection(strconSGTA_DB_Erabiltzaileak)
            conSGTA_DB_Erabiltzaileak.Open()
        Catch ex As Exception
            Throw New ErroreaKonektatzean()
        End Try
    End Sub

    Public Shared Sub ItxiKonexioa()
        conSGTA_DB_Erabiltzaileak.Close()
    End Sub

    Public Shared Function ErabiltzaileaTxertatu(ByVal email As String, ByVal izena As String, ByVal abizena As String,
                                            ByVal galderaEzkutua As String, ByVal erantzuna As String, ByVal NA As Integer,
                                            ByVal egiaztatzeZenbakia As Integer, ByVal egiaztatua As Byte, ByVal lantaldeKodea As String,
                                            ByVal azpitaldeKodea As String, ByVal erabiltzaileMota As String,
                                            ByVal pasahitza As String) As Integer

        Dim strSQL As String = "INSERT INTO Erabiltzaileak (email, izena, abizena, galderaEzkutua, erantzuna, na, egiaztatzeZenbakia, 
egiaztatua, lantaldeKodea, azpitaldeKodea, erabiltzaileMota, pasahitza) VALUES ('" & email & "', '" & izena & "', '" & abizena & "', 
'" & galderaEzkutua & "', '" & erantzuna & "', '" & NA & "', '" & egiaztatzeZenbakia & "', '" & egiaztatua & "', '" & lantaldeKodea & "',
'" & azpitaldeKodea & "', '" & erabiltzaileMota & "', '" & pasahitza & "')"
        Try
            sqlCommand = New SqlCommand(strSQL, conSGTA_DB_Erabiltzaileak)
            Return sqlCommand.ExecuteNonQuery() 'saiatu INSERT-a exekutatzen
        Catch
            Throw New ErroreaTxertatzean()
        End Try
    End Function

    Public Shared Function ErabiltzaileaLortu(ByVal pEmail As String) As SqlDataReader
        Dim strSQL = "SELECT * FROM Erabiltzaileak WHERE email = '" & pEmail & "'"
        Try
            sqlCommand = New SqlCommand(strSQL, conSGTA_DB_Erabiltzaileak)
            Return (sqlCommand.ExecuteReader())
        Catch
            Throw New ErroreaIrakurtzean()
        End Try
    End Function

    Public Shared Function ErabiltzaileaEgiaztatu(ByVal pEmail As String) As Integer
        Dim strSQL = "UPDATE Erabiltzaileak SET egiaztatua = 1 WHERE email = '" & pEmail & "'"
        Try
            sqlCommand = New SqlCommand(strSQL, conSGTA_DB_Erabiltzaileak)
            Return (sqlCommand.ExecuteNonQuery())
        Catch
            Throw New ErroreaEguneratzean()
        End Try

    End Function

    Public Shared Function ErabiltzailearenPasahitzaAldatu(ByVal pEmail As String, ByVal pPass As String) As Integer
        Dim strSQL = "UPDATE Erabiltzaileak SET pasahitza = '" & pPass & "' WHERE email = '" & pEmail & "'"

        Try
            sqlCommand = New SqlCommand(strSQL, conSGTA_DB_Erabiltzaileak)
            Return (sqlCommand.ExecuteNonQuery())
        Catch
            Throw New ErroreaEguneratzean()
        End Try

    End Function

    Public Shared Function IkasleaMatrikulatutakoIrakasgaienEgokitzaileaEskuratu(ByVal pEmail As String) As SqlDataAdapter
        Dim strSQL = "SELECT DISTINCT irakasgaiKodea FROM KlasekoTaldeak WHERE kodea IN (SELECT taldeKodea FROM IkasleakTaldeak WHERE email='" & pEmail & "')"
        Try
            sqlDataAdapter = New SqlDataAdapter(strSQL, conSGTA_DB_Erabiltzaileak)
            Return sqlDataAdapter
        Catch
            Throw New ErroreaIrakurtzean()
        End Try
    End Function

    Public Shared Function UstiapenekoLanGenerikoenEgokitzaileaEskuratu() As SqlDataAdapter
        Dim strSQL = "SELECT * FROM LanGenerikoak WHERE ustiapenean = 1"
        Try
            sqlDataAdapter = New SqlDataAdapter(strSQL, conSGTA_DB_Erabiltzaileak)
            Return sqlDataAdapter
        Catch
            Throw New ErroreaIrakurtzean()
        End Try
    End Function
    Public Shared Function IkasleLanenEgokitzaileaEskuratu(ByVal pEmail As String) As SqlDataAdapter
        Dim strSQL = "SELECT * FROM IkasleakLanak WHERE email = '" & pEmail & "'"
        Try
            sqlDataAdapter = New SqlDataAdapter(strSQL, conSGTA_DB_Erabiltzaileak)
            Return sqlDataAdapter
        Catch
            Throw New ErroreaIrakurtzean()
        End Try
    End Function
End Class

Public Class ErroreaKonektatzean
    Inherits ApplicationException 'aplikazio-salbuespenen klasea

    'eraikitzailea birdefinitu (gurasoarenaz baliatuz)
    Public Sub New _
        (Optional ByVal Mezua As String = "Errorea: Ezin izan da datu-basearekiko konexioa egin.")
        MyBase.New(Mezua) 'gurasoaren eraikitzaileari deituz
    End Sub
End Class

Public Class ErroreaTxertatzean
    Inherits ApplicationException 'aplikazio-salbuespenen klasea

    'eraikitzailea birdefinitu (gurasoarenaz baliatuz)
    Public Sub New _
        (Optional ByVal Mezua As String = "Errorea: Ezin izan da erabiltzaile datu-basean txertatu.")
        MyBase.New(Mezua) 'gurasoaren eraikitzaileari deituz
    End Sub
End Class

Public Class ErroreaIrakurtzean
    Inherits ApplicationException 'aplikazio-salbuespenen klasea

    'eraikitzailea birdefinitu (gurasoarenaz baliatuz)
    Public Sub New _
        (Optional ByVal Mezua As String = "Errorea: Ezin izan da erabiltzaile datu-basetik lortu.")
        'MyBase.New(Mezua) 'gurasoaren eraikitzaileari deituz
    End Sub
End Class
Public Class ErroreaEguneratzean
    Inherits ApplicationException 'aplikazio-salbuespenen klasea

    'eraikitzailea birdefinitu (gurasoarenaz baliatuz)
    Public Sub New _
        (Optional ByVal Mezua As String = "Errorea: Ezin izan da erabiltzaile datu-basean eguneratu.")
        MyBase.New(Mezua) 'gurasoaren eraikitzaileari deituz
    End Sub
End Class
