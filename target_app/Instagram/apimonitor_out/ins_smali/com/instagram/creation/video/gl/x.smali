.class public final Lcom/instagram/creation/video/gl/x;
.super Lcom/instagram/creation/video/gl/a;
.source "RawTexture.java"
.field private static final h:[I
.field private static final i:[F
.field private final j:Z
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x1
new-array v0, v0, [I
sput-object v0, Lcom/instagram/creation/video/gl/x;->h:[I
const/4 v0, 0x4
new-array v0, v0, [F
sput-object v0, Lcom/instagram/creation/video/gl/x;->i:[F
return-void
.end method
.method public constructor <init>(II)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/instagram/creation/video/gl/a;-><init>(B)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/creation/video/gl/x;->j:Z
invoke-virtual {p0, p1, p2}, Lcom/instagram/creation/video/gl/x;->a(II)V
return-void
.end method
.method public final bridge synthetic a()I
.registers 2
invoke-super {p0}, Lcom/instagram/creation/video/gl/a;->a()I
move-result v0
return v0
.end method
.method public final bridge synthetic a(Lcom/instagram/creation/video/gl/c;IIII)V
.registers 6
invoke-super/range {p0 .. p5}, Lcom/instagram/creation/video/gl/a;->a(Lcom/instagram/creation/video/gl/c;IIII)V
return-void
.end method
.method public final bridge synthetic b()I
.registers 2
invoke-super {p0}, Lcom/instagram/creation/video/gl/a;->b()I
move-result v0
return v0
.end method
.method protected final b(Lcom/instagram/creation/video/gl/c;)Z
.registers 3
invoke-virtual {p0}, Lcom/instagram/creation/video/gl/x;->h()Z
move-result v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final bridge synthetic c()I
.registers 2
invoke-super {p0}, Lcom/instagram/creation/video/gl/a;->c()I
move-result v0
return v0
.end method
.method protected final c(Lcom/instagram/creation/video/gl/c;)V
.registers 13
const/16 v3, 0x1908
const v7, 0x46180400
const/4 v10, 0x1
const/4 v2, 0x0
const/16 v1, 0xde1
invoke-interface {p1}, Lcom/instagram/creation/video/gl/c;->d()Ljavax/microedition/khronos/opengles/GL11;
move-result-object v0
sget-object v4, Lcom/instagram/creation/video/gl/x;->i:[F
const/4 v5, 0x0
aput v5, v4, v2
sget-object v4, Lcom/instagram/creation/video/gl/x;->i:[F
iget v5, p0, Lcom/instagram/creation/video/gl/x;->d:I
int-to-float v5, v5
aput v5, v4, v10
sget-object v4, Lcom/instagram/creation/video/gl/x;->i:[F
const/4 v5, 0x2
iget v6, p0, Lcom/instagram/creation/video/gl/x;->c:I
int-to-float v6, v6
aput v6, v4, v5
sget-object v4, Lcom/instagram/creation/video/gl/x;->i:[F
const/4 v5, 0x3
iget v6, p0, Lcom/instagram/creation/video/gl/x;->d:I
neg-int v6, v6
int-to-float v6, v6
aput v6, v4, v5
sget-object v4, Lcom/instagram/creation/video/gl/x;->h:[I
invoke-static {v10, v4}, Lcom/instagram/creation/video/gl/h;->a(I[I)V
sget-object v4, Lcom/instagram/creation/video/gl/x;->h:[I
aget v4, v4, v2
invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V
const v4, 0x8b9d
sget-object v5, Lcom/instagram/creation/video/gl/x;->i:[F
invoke-interface {v0, v1, v4, v5, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V
const/16 v4, 0x2802
const v5, 0x812f
invoke-interface {v0, v1, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V
const/16 v4, 0x2803
const v5, 0x812f
invoke-interface {v0, v1, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V
const/16 v4, 0x2801
invoke-interface {v0, v1, v4, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V
const/16 v4, 0x2800
invoke-interface {v0, v1, v4, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V
invoke-virtual {p0}, Lcom/instagram/creation/video/gl/x;->d()I
move-result v4
invoke-virtual {p0}, Lcom/instagram/creation/video/gl/x;->e()I
move-result v5
const/16 v8, 0x1401
const/4 v9, 0x0
move v6, v2
move v7, v3
invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
sget-object v0, Lcom/instagram/creation/video/gl/x;->h:[I
aget v0, v0, v2
iput v0, p0, Lcom/instagram/creation/video/gl/x;->a:I
iput v10, p0, Lcom/instagram/creation/video/gl/x;->b:I
invoke-virtual {p0, p1}, Lcom/instagram/creation/video/gl/x;->a(Lcom/instagram/creation/video/gl/c;)V
return-void
.end method
.method public final bridge synthetic d()I
.registers 2
invoke-super {p0}, Lcom/instagram/creation/video/gl/a;->d()I
move-result v0
return v0
.end method
.method public final bridge synthetic e()I
.registers 2
invoke-super {p0}, Lcom/instagram/creation/video/gl/a;->e()I
move-result v0
return v0
.end method
.method public final bridge synthetic f()Z
.registers 2
invoke-super {p0}, Lcom/instagram/creation/video/gl/a;->f()Z
move-result v0
return v0
.end method
.method protected final g()I
.registers 2
const/16 v0, 0xde1
return v0
.end method
.method public final bridge synthetic h()Z
.registers 2
invoke-super {p0}, Lcom/instagram/creation/video/gl/a;->h()Z
move-result v0
return v0
.end method
.method public final bridge synthetic i()V
.registers 1
invoke-super {p0}, Lcom/instagram/creation/video/gl/a;->i()V
return-void
.end method
.method public final j()V
.registers 1
return-void
.end method
.method public final m()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/creation/video/gl/x;->j:Z
return v0
.end method