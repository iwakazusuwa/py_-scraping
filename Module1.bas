Attribute VB_Name = "Module1"
Sub �摜�\��t��()

    '�Z�����A����
     With Columns("A")
          .Insert Shift:=xlToRight, copyorigin:=xlFormatFromLeftOrAbove
          .RowHeight = 83.25
     End With
     
     Columns.AutoFit
     
     Columns("A").ColumnWidth = 30
     
     
    '���̃t�@�C����Path
    Act_path = ActiveWorkbook.Path
    
    '���̃t�@�C����
    My_name = ActiveSheet.Name
    
    '���Ԃɉ摜�𒣂�t���Ȃ���AURL�Ƀ����N�𒣂�
    t = 1
    Do Until Cells(t, 2) = Empty
       gazo = Act_path & "/" & Cells(t, 2) & "/" & Replace(Cells(t, 3), " ", "")
       Cells(t, 1).Select
       
        
       With Sheets(My_name).Pictures.Insert(gazo)
           .Top = Cells(t, 1).Top
           .Height = 80
           .Cut
      End With
      
      With Sheets(My_name)
            .Cells(t, 1).Select
            .Paste
      End With



    Set hyplink = ActiveSheet.Hyperlinks.Add(anchor:=Cells(t, 4), Address:=Cells(t, 4))
    t = t + 1
    
    Loop
    
   'A1�Z���ɃX�N���[��
    Application.Goto Reference:=Range("A1"), Scroll:=True
   '�������b�Z�[�W
    MsgBox "����"

End Sub

