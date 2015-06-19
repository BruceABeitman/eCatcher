.class public final Lcom/instagram/creation/video/e/b;
.super Lcom/instagram/creation/video/e/c;
.source "OESCopyFilter.java"


# instance fields
.field private e:I


# direct methods
.method public constructor <init>()V
    .registers 8

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string v3, "OES"

    const/4 v4, 0x0

    const-string v5, "OES"

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/instagram/creation/video/e/c;-><init>(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(ILcom/instagram/creation/video/j/l;[F)V
    .registers 10

    const/16 v2, 0x1406

    const/16 v4, 0x8

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/instagram/creation/video/e/b;->e()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v0, 0x8d65

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/instagram/creation/video/e/b;->c:I

    iget-object v5, p2, Lcom/instagram/creation/video/j/l;->a:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/instagram/creation/video/e/b;->b:I

    iget-object v5, p2, Lcom/instagram/creation/video/j/l;->b:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/instagram/creation/video/e/b;->e:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, p3, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public final d()V
    .registers 3

    iget v0, p0, Lcom/instagram/creation/video/e/b;->d:I

    const-string v1, "transformMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/e/b;->e:I

    return-void
.end method
