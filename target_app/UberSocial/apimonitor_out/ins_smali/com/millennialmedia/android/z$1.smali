.class  Lcom/millennialmedia/android/z$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/millennialmedia/android/z;
.method constructor <init>(Lcom/millennialmedia/android/z;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/millennialmedia/android/z$1;->b:Lcom/millennialmedia/android/z;
iput-object p2, p0, Lcom/millennialmedia/android/z$1;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onMediaScannerConnected()V
.registers 4
iget-object v0, p0, Lcom/millennialmedia/android/z$1;->b:Lcom/millennialmedia/android/z;
iget-object v0, v0, Lcom/millennialmedia/android/z;->a:Landroid/media/MediaScannerConnection;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/millennialmedia/android/z$1;->b:Lcom/millennialmedia/android/z;
iget-object v0, v0, Lcom/millennialmedia/android/z;->a:Landroid/media/MediaScannerConnection;
iget-object v1, p0, Lcom/millennialmedia/android/z$1;->a:Ljava/lang/String;
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
:cond_10
return-void
.end method
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
.registers 6
if-nez p2, :cond_1a
const-string v0, "BridgeMMMedia"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Failed to scan "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
:cond_1a
return-void
.end method