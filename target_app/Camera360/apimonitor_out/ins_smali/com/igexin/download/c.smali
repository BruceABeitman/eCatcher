.class  Lcom/igexin/download/c;
.super Landroid/database/CursorWrapper;
.implements Landroid/database/CrossProcessCursor;
.field final synthetic a:Lcom/igexin/download/DownloadProvider;
.field private b:Landroid/database/CrossProcessCursor;
.method public constructor <init>(Lcom/igexin/download/DownloadProvider;Landroid/database/Cursor;)V
.registers 3
iput-object p1, p0, Lcom/igexin/download/c;->a:Lcom/igexin/download/DownloadProvider;
invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V
check-cast p2, Landroid/database/CrossProcessCursor;
iput-object p2, p0, Lcom/igexin/download/c;->b:Landroid/database/CrossProcessCursor;
return-void
.end method
.method public fillWindow(ILandroid/database/CursorWindow;)V
.registers 4
iget-object v0, p0, Lcom/igexin/download/c;->b:Landroid/database/CrossProcessCursor;
invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V
return-void
.end method
.method public getWindow()Landroid/database/CursorWindow;
.registers 2
iget-object v0, p0, Lcom/igexin/download/c;->b:Landroid/database/CrossProcessCursor;
invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;
move-result-object v0
return-object v0
.end method
.method public onMove(II)Z
.registers 4
iget-object v0, p0, Lcom/igexin/download/c;->b:Landroid/database/CrossProcessCursor;
invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z
move-result v0
return v0
.end method