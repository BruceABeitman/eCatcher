.class final Lcom/instagram/creation/video/gl/f;
.super Ljava/lang/Object;
.source "GLCanvasImpl.java"
.field private final a:Ljavax/microedition/khronos/opengles/GL11;
.field private b:I
.field private c:F
.field private d:I
.field private e:Z
.field private f:F
.field private g:Z
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL11;)V
.registers 8
const/16 v2, 0xde1
const/4 v5, 0x1
const/4 v4, 0x0
const/high16 v1, 0x3f80
const/4 v3, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x1e01
iput v0, p0, Lcom/instagram/creation/video/gl/f;->b:I
iput v1, p0, Lcom/instagram/creation/video/gl/f;->c:F
iput v2, p0, Lcom/instagram/creation/video/gl/f;->d:I
iput-boolean v5, p0, Lcom/instagram/creation/video/gl/f;->e:Z
iput v1, p0, Lcom/instagram/creation/video/gl/f;->f:F
iput-boolean v4, p0, Lcom/instagram/creation/video/gl/f;->g:Z
iput-object p1, p0, Lcom/instagram/creation/video/gl/f;->a:Ljavax/microedition/khronos/opengles/GL11;
const/16 v0, 0xb50
invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V
const/16 v0, 0xbd0
invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V
const v0, 0x8074
invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V
const v0, 0x8078
invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V
invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V
const/16 v0, 0x2300
const/16 v1, 0x2200
const v2, 0x45f00800
invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V
const/high16 v0, 0x3f00
invoke-interface {p1, v3, v0, v3, v3}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V
invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClearStencil(I)V
const/16 v0, 0xbe2
invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V
const/16 v0, 0x303
invoke-interface {p1, v5, v0}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V
const/16 v0, 0xcf5
const/4 v1, 0x2
invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glPixelStorei(II)V
return-void
.end method
.method private b(I)V
.registers 6
iget v0, p0, Lcom/instagram/creation/video/gl/f;->b:I
if-ne v0, p1, :cond_5
:goto_4
return-void
:cond_5
iput p1, p0, Lcom/instagram/creation/video/gl/f;->b:I
iget-object v0, p0, Lcom/instagram/creation/video/gl/f;->a:Ljavax/microedition/khronos/opengles/GL11;
const/16 v1, 0x2300
const/16 v2, 0x2200
int-to-float v3, p1
invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V
goto :goto_4
.end method
.method public final a(F)V
.registers 4
const/high16 v1, 0x3f80
iget v0, p0, Lcom/instagram/creation/video/gl/f;->c:F
cmpl-float v0, v0, p1
if-nez v0, :cond_9
:goto_8
return-void
:cond_9
iput p1, p0, Lcom/instagram/creation/video/gl/f;->c:F
const v0, 0x3f733333
cmpl-float v0, p1, v0
if-ltz v0, :cond_1d
iget-object v0, p0, Lcom/instagram/creation/video/gl/f;->a:Ljavax/microedition/khronos/opengles/GL11;
invoke-interface {v0, v1, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V
const/16 v0, 0x1e01
invoke-direct {p0, v0}, Lcom/instagram/creation/video/gl/f;->b(I)V
goto :goto_8
:cond_1d
iget-object v0, p0, Lcom/instagram/creation/video/gl/f;->a:Ljavax/microedition/khronos/opengles/GL11;
invoke-interface {v0, p1, p1, p1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V
const/16 v0, 0x2100
invoke-direct {p0, v0}, Lcom/instagram/creation/video/gl/f;->b(I)V
goto :goto_8
.end method
.method public final a(I)V
.registers 4
iget v0, p0, Lcom/instagram/creation/video/gl/f;->d:I
if-ne v0, p1, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget v0, p0, Lcom/instagram/creation/video/gl/f;->d:I
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/instagram/creation/video/gl/f;->a:Ljavax/microedition/khronos/opengles/GL11;
iget v1, p0, Lcom/instagram/creation/video/gl/f;->d:I
invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V
:cond_10
iput p1, p0, Lcom/instagram/creation/video/gl/f;->d:I
iget v0, p0, Lcom/instagram/creation/video/gl/f;->d:I
if-eqz v0, :cond_4
iget-object v0, p0, Lcom/instagram/creation/video/gl/f;->a:Ljavax/microedition/khronos/opengles/GL11;
iget v1, p0, Lcom/instagram/creation/video/gl/f;->d:I
invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V
goto :goto_4
.end method
.method public final a(IF)V
.registers 9
const/4 v1, 0x0
const/4 v4, 0x0
const/high16 v5, 0x437f
const/high16 v0, -0x100
invoke-static {v0}, Lcom/instagram/creation/video/l/m;->a(I)Z
move-result v0
if-eqz v0, :cond_13
const v0, 0x3f733333
cmpg-float v0, p2, v0
if-gez v0, :cond_42
:cond_13
const/4 v0, 0x1
:goto_14
invoke-virtual {p0, v0}, Lcom/instagram/creation/video/gl/f;->a(Z)V
const/high16 v0, -0x4080
iput v0, p0, Lcom/instagram/creation/video/gl/f;->c:F
invoke-virtual {p0, v1}, Lcom/instagram/creation/video/gl/f;->a(I)V
mul-float v0, v5, p2
const v1, 0x477fff00
mul-float/2addr v0, v1
div-float/2addr v0, v5
div-float/2addr v0, v5
iget-object v1, p0, Lcom/instagram/creation/video/gl/f;->a:Ljavax/microedition/khronos/opengles/GL11;
mul-float v2, v4, v0
invoke-static {v2}, Ljava/lang/Math;->round(F)I
move-result v2
mul-float v3, v4, v0
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
mul-float/2addr v4, v0
invoke-static {v4}, Ljava/lang/Math;->round(F)I
move-result v4
mul-float/2addr v0, v5
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/opengles/GL11;->glColor4x(IIII)V
return-void
:cond_42
move v0, v1
goto :goto_14
.end method
.method public final a(Z)V
.registers 4
const/16 v1, 0xbe2
iget-boolean v0, p0, Lcom/instagram/creation/video/gl/f;->e:Z
if-ne v0, p1, :cond_7
:goto_6
return-void
:cond_7
iput-boolean p1, p0, Lcom/instagram/creation/video/gl/f;->e:Z
if-eqz p1, :cond_11
iget-object v0, p0, Lcom/instagram/creation/video/gl/f;->a:Ljavax/microedition/khronos/opengles/GL11;
invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V
goto :goto_6
:cond_11
iget-object v0, p0, Lcom/instagram/creation/video/gl/f;->a:Ljavax/microedition/khronos/opengles/GL11;
invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V
goto :goto_6
.end method