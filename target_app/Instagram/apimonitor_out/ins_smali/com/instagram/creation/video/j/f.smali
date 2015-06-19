.class public Lcom/instagram/creation/video/j/f;
.super Lcom/instagram/creation/video/j/g;
.source "FullRenderer.java"
.field protected a:Lcom/instagram/creation/video/e/c;
.field protected b:Lcom/instagram/creation/video/e/c;
.field protected c:Z
.field protected d:Lcom/instagram/creation/video/gl/i;
.field protected e:Lcom/instagram/creation/video/gl/i;
.field protected f:Lcom/instagram/creation/video/j/l;
.field protected g:Lcom/instagram/creation/video/j/l;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/instagram/creation/video/j/g;-><init>()V
invoke-static {}, Lcom/instagram/creation/video/e/e;->b()Lcom/instagram/creation/video/e/c;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/video/j/f;->a:Lcom/instagram/creation/video/e/c;
invoke-static {}, Lcom/instagram/creation/video/e/e;->a()Lcom/instagram/creation/video/e/c;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/video/j/f;->b:Lcom/instagram/creation/video/e/c;
return-void
.end method
.method public final a(I)V
.registers 3
invoke-super {p0, p1}, Lcom/instagram/creation/video/j/g;->a(I)V
new-instance v0, Lcom/instagram/creation/video/gl/i;
invoke-direct {v0, p1}, Lcom/instagram/creation/video/gl/i;-><init>(I)V
iput-object v0, p0, Lcom/instagram/creation/video/j/f;->d:Lcom/instagram/creation/video/gl/i;
new-instance v0, Lcom/instagram/creation/video/gl/i;
invoke-direct {v0, p1}, Lcom/instagram/creation/video/gl/i;-><init>(I)V
iput-object v0, p0, Lcom/instagram/creation/video/j/f;->e:Lcom/instagram/creation/video/gl/i;
iget-object v0, p0, Lcom/instagram/creation/video/j/f;->b:Lcom/instagram/creation/video/e/c;
invoke-virtual {v0}, Lcom/instagram/creation/video/e/c;->e()I
iget-object v0, p0, Lcom/instagram/creation/video/j/f;->a:Lcom/instagram/creation/video/e/c;
invoke-virtual {v0}, Lcom/instagram/creation/video/e/c;->e()I
invoke-static {}, Lcom/instagram/creation/video/e/e;->c()Lcom/instagram/creation/video/j/l;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/video/j/f;->f:Lcom/instagram/creation/video/j/l;
invoke-static {}, Lcom/instagram/creation/video/e/e;->d()Lcom/instagram/creation/video/j/l;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/video/j/f;->g:Lcom/instagram/creation/video/j/l;
return-void
.end method
.method public final a(Lcom/instagram/creation/video/e/c;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/j/f;->b:Lcom/instagram/creation/video/e/c;
return-void
.end method
.method protected final b(Lcom/instagram/creation/video/gl/g;)Lcom/instagram/creation/video/gl/g;
.registers 3
iget-object v0, p0, Lcom/instagram/creation/video/j/f;->d:Lcom/instagram/creation/video/gl/i;
return-object v0
.end method
.method public final b()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/creation/video/j/f;->c:Z
return-void
.end method
.method public final b(I)V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/video/j/f;->d:Lcom/instagram/creation/video/gl/i;
invoke-virtual {v0, p1}, Lcom/instagram/creation/video/gl/i;->a(I)V
iget-object v0, p0, Lcom/instagram/creation/video/j/f;->e:Lcom/instagram/creation/video/gl/i;
invoke-virtual {v0, p1}, Lcom/instagram/creation/video/gl/i;->a(I)V
return-void
.end method
.method protected final c(Lcom/instagram/creation/video/gl/g;)V
.registers 6
const v3, 0x8d40
iget-object v0, p0, Lcom/instagram/creation/video/j/f;->d:Lcom/instagram/creation/video/gl/i;
invoke-virtual {v0}, Lcom/instagram/creation/video/gl/i;->b()I
move-result v0
iget-boolean v1, p0, Lcom/instagram/creation/video/j/f;->c:Z
if-eqz v1, :cond_23
iget-object v1, p0, Lcom/instagram/creation/video/j/f;->e:Lcom/instagram/creation/video/gl/i;
invoke-virtual {v1}, Lcom/instagram/creation/video/gl/i;->a()I
move-result v1
invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V
iget-object v1, p0, Lcom/instagram/creation/video/j/f;->b:Lcom/instagram/creation/video/e/c;
iget-object v2, p0, Lcom/instagram/creation/video/j/f;->f:Lcom/instagram/creation/video/j/l;
invoke-virtual {v1, v0, v2}, Lcom/instagram/creation/video/e/c;->a(ILcom/instagram/creation/video/j/l;)V
iget-object v0, p0, Lcom/instagram/creation/video/j/f;->e:Lcom/instagram/creation/video/gl/i;
invoke-virtual {v0}, Lcom/instagram/creation/video/gl/i;->b()I
move-result v0
:cond_23
invoke-interface {p1}, Lcom/instagram/creation/video/gl/g;->a()I
move-result v1
invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V
iget-boolean v1, p0, Lcom/instagram/creation/video/j/f;->c:Z
if-eqz v1, :cond_36
iget-object v1, p0, Lcom/instagram/creation/video/j/f;->a:Lcom/instagram/creation/video/e/c;
iget-object v2, p0, Lcom/instagram/creation/video/j/f;->g:Lcom/instagram/creation/video/j/l;
invoke-virtual {v1, v0, v2}, Lcom/instagram/creation/video/e/c;->a(ILcom/instagram/creation/video/j/l;)V
:goto_35
return-void
:cond_36
iget-object v1, p0, Lcom/instagram/creation/video/j/f;->b:Lcom/instagram/creation/video/e/c;
iget-object v2, p0, Lcom/instagram/creation/video/j/f;->f:Lcom/instagram/creation/video/j/l;
invoke-virtual {v1, v0, v2}, Lcom/instagram/creation/video/e/c;->a(ILcom/instagram/creation/video/j/l;)V
goto :goto_35
.end method