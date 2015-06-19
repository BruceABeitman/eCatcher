.class public abstract Lcom/instagram/creation/video/j/g;
.super Ljava/lang/Object;
.source "OESInputRenderer.java"
.implements Lcom/instagram/creation/video/gl/p;
.field private final a:Lcom/instagram/creation/video/e/b;
.field private final b:Lcom/instagram/creation/video/j/h;
.field private final c:[F
.field private d:I
.field private e:Landroid/graphics/SurfaceTexture;
.field private f:Z
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/creation/video/j/g;->f:Z
new-instance v0, Lcom/instagram/creation/video/e/b;
invoke-direct {v0}, Lcom/instagram/creation/video/e/b;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/video/j/g;->a:Lcom/instagram/creation/video/e/b;
const/16 v0, 0x10
new-array v0, v0, [F
iput-object v0, p0, Lcom/instagram/creation/video/j/g;->c:[F
new-instance v0, Lcom/instagram/creation/video/j/h;
invoke-direct {v0}, Lcom/instagram/creation/video/j/h;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/video/j/g;->b:Lcom/instagram/creation/video/j/h;
return-void
.end method
.method private b()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/creation/video/j/g;->f:Z
return v0
.end method
.method public final a()V
.registers 1
return-void
.end method
.method public a(I)V
.registers 4
const v0, 0x8d65
invoke-static {v0}, Lcom/instagram/creation/base/d;->a(I)I
move-result v0
iput v0, p0, Lcom/instagram/creation/video/j/g;->d:I
new-instance v0, Landroid/graphics/SurfaceTexture;
iget v1, p0, Lcom/instagram/creation/video/j/g;->d:I
invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V
iput-object v0, p0, Lcom/instagram/creation/video/j/g;->e:Landroid/graphics/SurfaceTexture;
iget-object v0, p0, Lcom/instagram/creation/video/j/g;->a:Lcom/instagram/creation/video/e/b;
invoke-virtual {v0}, Lcom/instagram/creation/video/e/b;->e()I
return-void
.end method
.method public final a(Lcom/instagram/creation/b/a/a;)V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/video/j/g;->b:Lcom/instagram/creation/video/j/h;
invoke-virtual {v0, p1}, Lcom/instagram/creation/video/j/h;->b(Lcom/instagram/creation/b/a/a;)V
return-void
.end method
.method public final a(Lcom/instagram/creation/video/gl/g;)V
.registers 6
const/16 v0, 0x4100
invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V
iget-object v0, p0, Lcom/instagram/creation/video/j/g;->e:Landroid/graphics/SurfaceTexture;
invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
iget-object v0, p0, Lcom/instagram/creation/video/j/g;->e:Landroid/graphics/SurfaceTexture;
iget-object v1, p0, Lcom/instagram/creation/video/j/g;->c:[F
invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V
invoke-direct {p0}, Lcom/instagram/creation/video/j/g;->b()Z
move-result v0
if-eqz v0, :cond_34
const v0, 0x8d40
invoke-virtual {p0, p1}, Lcom/instagram/creation/video/j/g;->b(Lcom/instagram/creation/video/gl/g;)Lcom/instagram/creation/video/gl/g;
move-result-object v1
invoke-interface {v1}, Lcom/instagram/creation/video/gl/g;->a()I
move-result v1
invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V
iget-object v0, p0, Lcom/instagram/creation/video/j/g;->a:Lcom/instagram/creation/video/e/b;
iget v1, p0, Lcom/instagram/creation/video/j/g;->d:I
iget-object v2, p0, Lcom/instagram/creation/video/j/g;->b:Lcom/instagram/creation/video/j/h;
invoke-virtual {v2}, Lcom/instagram/creation/video/j/h;->a()Lcom/instagram/creation/video/j/l;
move-result-object v2
iget-object v3, p0, Lcom/instagram/creation/video/j/g;->c:[F
invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/creation/video/e/b;->a(ILcom/instagram/creation/video/j/l;[F)V
:cond_34
invoke-virtual {p0, p1}, Lcom/instagram/creation/video/j/g;->c(Lcom/instagram/creation/video/gl/g;)V
return-void
.end method
.method public final a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/creation/video/j/g;->f:Z
return-void
.end method
.method protected abstract b(Lcom/instagram/creation/video/gl/g;)Lcom/instagram/creation/video/gl/g;
.end method
.method public b(I)V
.registers 2
return-void
.end method
.method public b(Lcom/instagram/creation/b/a/a;)V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/video/j/g;->b:Lcom/instagram/creation/video/j/h;
invoke-virtual {v0, p1}, Lcom/instagram/creation/video/j/h;->a(Lcom/instagram/creation/b/a/a;)V
return-void
.end method
.method public final c()Landroid/graphics/SurfaceTexture;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/j/g;->e:Landroid/graphics/SurfaceTexture;
return-object v0
.end method
.method protected c(Lcom/instagram/creation/video/gl/g;)V
.registers 2
return-void
.end method
.method public final d()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/j/g;->e:Landroid/graphics/SurfaceTexture;
invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
return-void
.end method