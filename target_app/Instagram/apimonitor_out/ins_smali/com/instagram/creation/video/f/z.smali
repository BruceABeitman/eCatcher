.class final Lcom/instagram/creation/video/f/z;
.super Ljava/lang/Object;
.source "ThumbnailVideoPreviewFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/creation/video/f/y;
.method constructor <init>(Lcom/instagram/creation/video/f/y;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/f/z;->a:Lcom/instagram/creation/video/f/y;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
iget-object v0, p0, Lcom/instagram/creation/video/f/z;->a:Lcom/instagram/creation/video/f/y;
invoke-virtual {v0}, Lcom/instagram/creation/video/f/y;->j()Landroid/os/Bundle;
move-result-object v0
const-string v1, "pendingMediaKey"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/instagram/creation/video/f/z;->a:Lcom/instagram/creation/video/f/y;
invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;
move-result-object v2
invoke-virtual {v2, v0}, Lcom/instagram/creation/b/d/a;->a(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;
move-result-object v0
invoke-static {v1, v0}, Lcom/instagram/creation/video/f/y;->a(Lcom/instagram/creation/video/f/y;Lcom/instagram/creation/b/a/b;)Lcom/instagram/creation/b/a/b;
return-void
.end method