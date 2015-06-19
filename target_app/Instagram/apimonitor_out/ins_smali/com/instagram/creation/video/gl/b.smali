.class public final Lcom/instagram/creation/video/gl/b;
.super Lcom/instagram/creation/video/gl/a;
.source "ExtTexture.java"
.field private static h:[I
.field private static i:[F
.field private j:I
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x1
new-array v0, v0, [I
sput-object v0, Lcom/instagram/creation/video/gl/b;->h:[I
const/4 v0, 0x4
new-array v0, v0, [F
sput-object v0, Lcom/instagram/creation/video/gl/b;->i:[F
return-void
.end method
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
invoke-direct {p0, v2}, Lcom/instagram/creation/video/gl/a;-><init>(B)V
const/4 v0, 0x1
sget-object v1, Lcom/instagram/creation/video/gl/b;->h:[I
invoke-static {v0, v1}, Lcom/instagram/creation/video/gl/h;->a(I[I)V
sget-object v0, Lcom/instagram/creation/video/gl/b;->h:[I
aget v0, v0, v2
iput v0, p0, Lcom/instagram/creation/video/gl/b;->a:I
const v0, 0x8d65
iput v0, p0, Lcom/instagram/creation/video/gl/b;->j:I
return-void
.end method
.method private c(Lcom/instagram/creation/video/gl/c;)V
.registers 11
const v8, 0x812f
const/4 v7, 0x1
const/4 v6, 0x0
const v5, 0x46180400
invoke-interface {p1}, Lcom/instagram/creation/video/gl/c;->d()Ljavax/microedition/khronos/opengles/GL11;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/creation/video/gl/b;->b()I
move-result v1
invoke-virtual {p0}, Lcom/instagram/creation/video/gl/b;->c()I
move-result v2
sget-object v3, Lcom/instagram/creation/video/gl/b;->i:[F
const/4 v4, 0x0
aput v4, v3, v6
sget-object v3, Lcom/instagram/creation/video/gl/b;->i:[F
int-to-float v4, v2
aput v4, v3, v7
sget-object v3, Lcom/instagram/creation/video/gl/b;->i:[F
const/4 v4, 0x2
int-to-float v1, v1
aput v1, v3, v4
sget-object v1, Lcom/instagram/creation/video/gl/b;->i:[F
const/4 v3, 0x3
neg-int v2, v2
int-to-float v2, v2
aput v2, v1, v3
iget v1, p0, Lcom/instagram/creation/video/gl/b;->j:I
iget v2, p0, Lcom/instagram/creation/video/gl/b;->a:I
invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V
iget v1, p0, Lcom/instagram/creation/video/gl/b;->j:I
const v2, 0x8b9d
sget-object v3, Lcom/instagram/creation/video/gl/b;->i:[F
invoke-interface {v0, v1, v2, v3, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V
iget v1, p0, Lcom/instagram/creation/video/gl/b;->j:I
const/16 v2, 0x2802
invoke-interface {v0, v1, v2, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V
iget v1, p0, Lcom/instagram/creation/video/gl/b;->j:I
const/16 v2, 0x2803
invoke-interface {v0, v1, v2, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V
iget v1, p0, Lcom/instagram/creation/video/gl/b;->j:I
const/16 v2, 0x2801
invoke-interface {v0, v1, v2, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V
iget v1, p0, Lcom/instagram/creation/video/gl/b;->j:I
const/16 v2, 0x2800
invoke-interface {v0, v1, v2, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V
invoke-virtual {p0, p1}, Lcom/instagram/creation/video/gl/b;->a(Lcom/instagram/creation/video/gl/c;)V
iput v7, p0, Lcom/instagram/creation/video/gl/b;->b:I
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
invoke-virtual {p0}, Lcom/instagram/creation/video/gl/b;->h()Z
move-result v0
if-nez v0, :cond_9
invoke-direct {p0, p1}, Lcom/instagram/creation/video/gl/b;->c(Lcom/instagram/creation/video/gl/c;)V
:cond_9
const/4 v0, 0x1
return v0
.end method
.method public final bridge synthetic c()I
.registers 2
invoke-super {p0}, Lcom/instagram/creation/video/gl/a;->c()I
move-result v0
return v0
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
.method public final g()I
.registers 2
iget v0, p0, Lcom/instagram/creation/video/gl/b;->j:I
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
const/4 v0, 0x1
return v0
.end method