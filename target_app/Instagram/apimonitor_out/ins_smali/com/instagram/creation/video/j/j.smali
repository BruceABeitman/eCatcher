.class public final Lcom/instagram/creation/video/j/j;
.super Lcom/instagram/creation/video/j/f;
.source "PannableFullRenderer.java"
.field private h:Lcom/instagram/creation/b/a/a;
.field private volatile i:Z
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/creation/video/j/f;-><init>()V
return-void
.end method
.method public final b(Lcom/instagram/creation/b/a/a;)V
.registers 7
const/4 v1, 0x0
iput-object p1, p0, Lcom/instagram/creation/video/j/j;->h:Lcom/instagram/creation/b/a/a;
invoke-virtual {p1}, Lcom/instagram/creation/b/a/a;->j()F
move-result v2
invoke-static {p1}, Lcom/instagram/creation/video/l/c;->a(Lcom/instagram/creation/b/a/a;)I
move-result v0
invoke-virtual {p1}, Lcom/instagram/creation/b/a/a;->e()F
move-result v3
iget-object v4, p0, Lcom/instagram/creation/video/j/j;->f:Lcom/instagram/creation/video/j/l;
iget-object v4, v4, Lcom/instagram/creation/video/j/l;->a:Ljava/nio/FloatBuffer;
invoke-static {v2, v3}, Lcom/instagram/creation/video/e/e;->a(FF)[F
move-result-object v2
invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;
iget-object v2, p0, Lcom/instagram/creation/video/j/j;->f:Lcom/instagram/creation/video/j/l;
iget-object v2, v2, Lcom/instagram/creation/video/j/l;->a:Ljava/nio/FloatBuffer;
invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
iget-object v2, p0, Lcom/instagram/creation/video/j/j;->f:Lcom/instagram/creation/video/j/l;
iget-object v2, v2, Lcom/instagram/creation/video/j/l;->b:Ljava/nio/FloatBuffer;
invoke-static {p1}, Lcom/instagram/creation/video/l/c;->b(Lcom/instagram/creation/b/a/a;)Z
move-result v3
if-eqz v3, :cond_2c
move v0, v1
:cond_2c
invoke-static {v0}, Lcom/instagram/creation/video/e/e;->a(I)[F
move-result-object v0
invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;
iget-object v0, p0, Lcom/instagram/creation/video/j/j;->f:Lcom/instagram/creation/video/j/l;
iget-object v0, v0, Lcom/instagram/creation/video/j/l;->b:Ljava/nio/FloatBuffer;
invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/creation/video/j/j;->i:Z
return-void
.end method
.method public final e()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/creation/video/j/j;->i:Z
return v0
.end method
.method public final f()V
.registers 4
iget-object v0, p0, Lcom/instagram/creation/video/j/j;->f:Lcom/instagram/creation/video/j/l;
iget-object v0, v0, Lcom/instagram/creation/video/j/l;->a:Ljava/nio/FloatBuffer;
iget-object v1, p0, Lcom/instagram/creation/video/j/j;->h:Lcom/instagram/creation/b/a/a;
invoke-virtual {v1}, Lcom/instagram/creation/b/a/a;->j()F
move-result v1
iget-object v2, p0, Lcom/instagram/creation/video/j/j;->h:Lcom/instagram/creation/b/a/a;
invoke-virtual {v2}, Lcom/instagram/creation/b/a/a;->e()F
move-result v2
invoke-static {v1, v2}, Lcom/instagram/creation/video/e/e;->a(FF)[F
move-result-object v1
invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;
iget-object v0, p0, Lcom/instagram/creation/video/j/j;->f:Lcom/instagram/creation/video/j/l;
iget-object v0, v0, Lcom/instagram/creation/video/j/l;->a:Ljava/nio/FloatBuffer;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
return-void
.end method