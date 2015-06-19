.class final Lcom/instagram/creation/video/l/i;
.super Ljava/lang/Object;
.source "VideoPreviewDelegate.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/graphics/SurfaceTexture;
.field final synthetic b:I
.field final synthetic c:Lcom/instagram/creation/video/l/h;
.method constructor <init>(Lcom/instagram/creation/video/l/h;Landroid/graphics/SurfaceTexture;I)V
.registers 4
iput-object p1, p0, Lcom/instagram/creation/video/l/i;->c:Lcom/instagram/creation/video/l/h;
iput-object p2, p0, Lcom/instagram/creation/video/l/i;->a:Landroid/graphics/SurfaceTexture;
iput p3, p0, Lcom/instagram/creation/video/l/i;->b:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
iget-object v0, p0, Lcom/instagram/creation/video/l/i;->c:Lcom/instagram/creation/video/l/h;
invoke-static {v0}, Lcom/instagram/creation/video/l/h;->a(Lcom/instagram/creation/video/l/h;)Lcom/instagram/creation/b/a/a;
move-result-object v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/instagram/creation/video/l/i;->c:Lcom/instagram/creation/video/l/h;
iget-object v1, p0, Lcom/instagram/creation/video/l/i;->c:Lcom/instagram/creation/video/l/h;
invoke-static {v1}, Lcom/instagram/creation/video/l/h;->a(Lcom/instagram/creation/video/l/h;)Lcom/instagram/creation/b/a/a;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/creation/video/l/h;->a(Lcom/instagram/creation/b/a/a;)V
:cond_13
iget-object v0, p0, Lcom/instagram/creation/video/l/i;->c:Lcom/instagram/creation/video/l/h;
invoke-static {v0}, Lcom/instagram/creation/video/l/h;->b(Lcom/instagram/creation/video/l/h;)I
move-result v0
const/4 v1, -0x1
if-eq v0, v1, :cond_27
iget-object v0, p0, Lcom/instagram/creation/video/l/i;->c:Lcom/instagram/creation/video/l/h;
iget-object v1, p0, Lcom/instagram/creation/video/l/i;->c:Lcom/instagram/creation/video/l/h;
invoke-static {v1}, Lcom/instagram/creation/video/l/h;->b(Lcom/instagram/creation/video/l/h;)I
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/creation/video/l/h;->a(I)V
:cond_27
iget-object v0, p0, Lcom/instagram/creation/video/l/i;->c:Lcom/instagram/creation/video/l/h;
invoke-static {v0}, Lcom/instagram/creation/video/l/h;->c(Lcom/instagram/creation/video/l/h;)Lcom/instagram/creation/video/d/c;
move-result-object v0
if-eqz v0, :cond_3a
iget-object v0, p0, Lcom/instagram/creation/video/l/i;->c:Lcom/instagram/creation/video/l/h;
iget-object v1, p0, Lcom/instagram/creation/video/l/i;->c:Lcom/instagram/creation/video/l/h;
invoke-static {v1}, Lcom/instagram/creation/video/l/h;->c(Lcom/instagram/creation/video/l/h;)Lcom/instagram/creation/video/d/c;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/creation/video/l/h;->a(Lcom/instagram/creation/video/d/c;)V
:cond_3a
iget-object v0, p0, Lcom/instagram/creation/video/l/i;->c:Lcom/instagram/creation/video/l/h;
iget-object v1, p0, Lcom/instagram/creation/video/l/i;->a:Landroid/graphics/SurfaceTexture;
iget v2, p0, Lcom/instagram/creation/video/l/i;->b:I
invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/video/l/h;->b(Landroid/graphics/SurfaceTexture;I)V
iget-object v0, p0, Lcom/instagram/creation/video/l/i;->c:Lcom/instagram/creation/video/l/h;
invoke-static {v0}, Lcom/instagram/creation/video/l/h;->d(Lcom/instagram/creation/video/l/h;)Z
move-result v0
if-eqz v0, :cond_54
iget-object v0, p0, Lcom/instagram/creation/video/l/i;->c:Lcom/instagram/creation/video/l/h;
invoke-static {v0}, Lcom/instagram/creation/video/l/h;->e(Lcom/instagram/creation/video/l/h;)Lcom/instagram/creation/video/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/creation/video/d/a;->g()Z
:cond_54
return-void
.end method