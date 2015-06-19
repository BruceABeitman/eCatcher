.class public final Lcom/instagram/filterkit/d/d;
.super Ljava/lang/Object;
.source "InputTexture.java"
.implements Lcom/instagram/filterkit/e/a;
.field private final a:I
.field private final b:I
.field private final c:I
.field private d:Z
.method public constructor <init>(III)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/instagram/filterkit/d/d;->a:I
iput p2, p0, Lcom/instagram/filterkit/d/d;->b:I
iput p3, p0, Lcom/instagram/filterkit/d/d;->c:I
return-void
.end method
.method public final a()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/filterkit/d/d;->d:Z
return-void
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/instagram/filterkit/d/d;->a:I
return v0
.end method
.method public final c()I
.registers 2
iget v0, p0, Lcom/instagram/filterkit/d/d;->b:I
return v0
.end method
.method public final d()I
.registers 2
iget v0, p0, Lcom/instagram/filterkit/d/d;->c:I
return v0
.end method
.method public final e()V
.registers 5
const/4 v3, 0x1
const/4 v2, 0x0
new-array v0, v3, [I
iget v1, p0, Lcom/instagram/filterkit/d/d;->a:I
aput v1, v0, v2
invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
return-void
.end method
.method public final f()V
.registers 2
iget-boolean v0, p0, Lcom/instagram/filterkit/d/d;->d:Z
if-eqz v0, :cond_7
invoke-virtual {p0}, Lcom/instagram/filterkit/d/d;->e()V
:cond_7
return-void
.end method