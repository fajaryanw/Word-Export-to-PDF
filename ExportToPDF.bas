' The Word macro for exporting to PDF (the Word window closes after finishing)
Sub ExportToPDFext()
    ChangeFileOpenDirectory ActiveDocument.Path
    ActiveDocument.ExportAsFixedFormat _
        OutputFileName:=Left(ActiveDocument.FullName, InStrRev(ActiveDocument.FullName, ".")) + "pdf", _
        ExportFormat:=wdExportFormatPDF, _
        OpenAfterExport:=False, _
        OptimizeFor:=wdExportOptimizeForPrint, _
        Range:=wdExportAllDocument, _
        From:=1, _
        To:=1, _
        Item:=wdExportDocumentContent, _
        IncludeDocProps:=True, _
        KeepIRM:=True, _
        CreateBookmarks:=wdExportCreateNoBookmarks, _
        DocStructureTags:=True, _
        BitmapMissingFonts:=True, _
        UseISO19005_1:=False
    Application.Quit SaveChanges:=wdDoNotSaveChanges
End Sub
