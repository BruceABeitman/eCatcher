.class public final Lcom/bbm/util/bf;
.super Landroid/os/FileObserver;
.source "EphemeralScreenshotObserver.java"
.field private static final a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;
invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/Screenshots/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/bbm/util/bf;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 4
sget-object v0, Lcom/bbm/util/bf;->a:Ljava/lang/String;
const/16 v1, 0x100
invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V
iput-object p1, p0, Lcom/bbm/util/bf;->b:Ljava/lang/String;
return-void
.end method
.method public final a()V
.registers 1
invoke-super {p0}, Landroid/os/FileObserver;->startWatching()V
return-void
.end method
.method public final b()V
.registers 1
invoke-super {p0}, Landroid/os/FileObserver;->stopWatching()V
return-void
.end method
.method public final onEvent(ILjava/lang/String;)V
.registers 4
const/16 v0, 0x100
if-ne p1, v0, :cond_c
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
iget-object v0, p0, Lcom/bbm/util/bf;->b:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/d/a;->m(Ljava/lang/String;)V
:cond_c
return-void
.end method