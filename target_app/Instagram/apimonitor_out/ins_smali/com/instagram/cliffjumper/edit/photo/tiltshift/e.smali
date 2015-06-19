.class public final Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;
.super Ljava/lang/Object;
.source "TiltShiftFogAnimator.java"
.field private final a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;
.field private b:Landroid/os/Handler;
.field private c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;
.field private d:Ljava/lang/Runnable;
.field private e:Landroid/view/Choreographer;
.field private f:Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;
.method public constructor <init>(Lcom/instagram/filterkit/filter/IgFilterGroup;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->b:Landroid/os/Handler;
invoke-static {p1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->c(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->c(F)V
invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->b()Z
move-result v0
if-eqz v0, :cond_22
invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->e:Landroid/view/Choreographer;
:cond_22
return-void
.end method
.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->b:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic b(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;)Landroid/view/Choreographer;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->e:Landroid/view/Choreographer;
return-object v0
.end method
.method private static final b()Z
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x10
if-lt v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method static synthetic c(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;
return-object v0
.end method
.method public final a()V
.registers 4
const/4 v2, 0x0
invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->b()Z
move-result v0
if-eqz v0, :cond_27
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->f:Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->f:Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;->a()V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->e:Landroid/view/Choreographer;
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->f:Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;
invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
iput-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->f:Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;
:goto_19
:cond_19
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->d:Ljava/lang/Runnable;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->b:Landroid/os/Handler;
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->d:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iput-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->d:Ljava/lang/Runnable;
:cond_26
return-void
:cond_27
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;->a()V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->b:Landroid/os/Handler;
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iput-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;
goto :goto_19
.end method
.method public final a(Lcom/instagram/cliffjumper/edit/common/ui/b;)V
.registers 10
const/4 v7, 0x0
const v6, 0x3f666666
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->a()V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->g()F
move-result v5
sub-float v0, v6, v5
const v1, 0x4d0f0d18
mul-float/2addr v0, v1
div-float/2addr v0, v6
float-to-long v3, v0
invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->b()Z
move-result v0
if-eqz v0, :cond_2c
new-instance v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;
move-object v1, p0
move-object v2, p1
invoke-direct/range {v0 .. v7}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;-><init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;Lcom/instagram/cliffjumper/edit/common/ui/b;JFFB)V
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->f:Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->e:Landroid/view/Choreographer;
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->f:Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;
invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
:goto_2b
return-void
:cond_2c
new-instance v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;
move-object v1, p0
move-object v2, p1
invoke-direct/range {v0 .. v7}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;-><init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;Lcom/instagram/cliffjumper/edit/common/ui/b;JFFB)V
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->b:Landroid/os/Handler;
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_2b
.end method
.method public final b(Lcom/instagram/cliffjumper/edit/common/ui/b;)V
.registers 10
const/4 v7, 0x0
const/4 v6, 0x0
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->a()V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->g()F
move-result v5
const v0, 0x4e32d05e
mul-float/2addr v0, v5
const v1, 0x3f666666
div-float/2addr v0, v1
float-to-long v3, v0
invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->b()Z
move-result v0
if-eqz v0, :cond_2b
new-instance v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;
move-object v1, p0
move-object v2, p1
invoke-direct/range {v0 .. v7}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;-><init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;Lcom/instagram/cliffjumper/edit/common/ui/b;JFFB)V
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->f:Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->e:Landroid/view/Choreographer;
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->f:Lcom/instagram/cliffjumper/edit/photo/tiltshift/h;
invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
:goto_2a
return-void
:cond_2b
new-instance v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;
move-object v1, p0
move-object v2, p1
invoke-direct/range {v0 .. v7}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;-><init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;Lcom/instagram/cliffjumper/edit/common/ui/b;JFFB)V
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->b:Landroid/os/Handler;
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/i;
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_2a
.end method
.method public final c(Lcom/instagram/cliffjumper/edit/common/ui/b;)V
.registers 6
invoke-virtual {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->a(Lcom/instagram/cliffjumper/edit/common/ui/b;)V
new-instance v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/f;
invoke-direct {v0, p0, p1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/f;-><init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;Lcom/instagram/cliffjumper/edit/common/ui/b;)V
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->d:Ljava/lang/Runnable;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->b:Landroid/os/Handler;
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->d:Ljava/lang/Runnable;
const-wide/16 v2, 0x28a
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method