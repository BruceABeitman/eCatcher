.class final Lcom/instagram/filterkit/d/a;
.super Ljava/lang/Object;
.source "FramebufferTexture.java"
.implements Lcom/instagram/filterkit/e/b;
.field private final a:I
.field private final b:I
.field private final c:I
.field private final d:I
.method constructor <init>(II)V
.registers 13
const v9, 0x8d40
const/16 v2, 0x1908
const/4 v4, 0x1
const/16 v0, 0xde1
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/instagram/filterkit/d/a;->a:I
iput p2, p0, Lcom/instagram/filterkit/d/a;->b:I
invoke-static {v0}, Lcom/instagram/filterkit/d/b;->b(I)I
move-result v3
iput v3, p0, Lcom/instagram/filterkit/d/a;->c:I
new-array v3, v4, [I
invoke-static {v4, v3, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V
aget v3, v3, v1
iput v3, p0, Lcom/instagram/filterkit/d/a;->d:I
const/16 v7, 0x1401
const/4 v8, 0x0
move v3, p1
move v4, p2
move v5, v1
move v6, v2
invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
iget v2, p0, Lcom/instagram/filterkit/d/a;->d:I
invoke-static {v9, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V
const v2, 0x8ce0
iget v3, p0, Lcom/instagram/filterkit/d/a;->c:I
invoke-static {v9, v2, v0, v3, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V
invoke-static {v1, v1, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V
return-void
.end method
.method constructor <init>(Lcom/instagram/filterkit/d/b;I)V
.registers 3
invoke-direct {p0, p2, p2}, Lcom/instagram/filterkit/d/a;-><init>(II)V
return-void
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/instagram/filterkit/d/a;->d:I
return v0
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/instagram/filterkit/d/a;->c:I
return v0
.end method
.method public final c()I
.registers 2
iget v0, p0, Lcom/instagram/filterkit/d/a;->a:I
return v0
.end method
.method public final d()I
.registers 2
iget v0, p0, Lcom/instagram/filterkit/d/a;->b:I
return v0
.end method
.method public final e()V
.registers 5
const/4 v3, 0x1
const/4 v2, 0x0
new-array v0, v3, [I
iget v1, p0, Lcom/instagram/filterkit/d/a;->d:I
aput v1, v0, v2
invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V
new-array v0, v3, [I
iget v1, p0, Lcom/instagram/filterkit/d/a;->c:I
aput v1, v0, v2
invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
return-void
.end method
.method public final f()V
.registers 1
return-void
.end method