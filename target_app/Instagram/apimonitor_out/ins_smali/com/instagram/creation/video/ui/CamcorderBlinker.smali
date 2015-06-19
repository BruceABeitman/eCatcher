.class public Lcom/instagram/creation/video/ui/CamcorderBlinker;
.super Landroid/widget/ImageView;
.source "CamcorderBlinker.java"
.implements Lcom/instagram/creation/video/a/d;
.implements Lcom/instagram/creation/video/c;
.field private a:Lcom/instagram/creation/video/a;
.field private b:Landroid/view/animation/Animation;
.field private c:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
invoke-virtual {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/f;->a(Landroid/content/Context;)I
move-result v0
iput v0, p0, Lcom/instagram/creation/video/ui/CamcorderBlinker;->c:I
invoke-direct {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->d()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-virtual {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/f;->a(Landroid/content/Context;)I
move-result v0
iput v0, p0, Lcom/instagram/creation/video/ui/CamcorderBlinker;->c:I
invoke-direct {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->d()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-virtual {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/f;->a(Landroid/content/Context;)I
move-result v0
iput v0, p0, Lcom/instagram/creation/video/ui/CamcorderBlinker;->c:I
invoke-direct {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->d()V
return-void
.end method
.method private d()V
.registers 3
invoke-virtual {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->getContext()Landroid/content/Context;
move-result-object v0
sget v1, Lcom/facebook/aq;->camcorder_blinker:I
invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/video/ui/CamcorderBlinker;->b:Landroid/view/animation/Animation;
return-void
.end method
.method private e()V
.registers 8
const/4 v6, 0x0
iget-object v0, p0, Lcom/instagram/creation/video/ui/CamcorderBlinker;->a:Lcom/instagram/creation/video/a;
if-nez v0, :cond_6
:goto_5
return-void
:cond_6
invoke-virtual {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v1
iget-object v0, p0, Lcom/instagram/creation/video/ui/CamcorderBlinker;->a:Lcom/instagram/creation/video/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/a;->c()I
move-result v0
int-to-double v2, v0
const-wide v4, 0x40cd4c0000000000L
div-double/2addr v2, v4
iget v0, p0, Lcom/instagram/creation/video/ui/CamcorderBlinker;->c:I
int-to-double v4, v0
mul-double/2addr v2, v4
int-to-double v4, v1
sub-double/2addr v2, v4
invoke-virtual {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
const/4 v4, 0x1
invoke-static {v0, v4}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F
move-result v0
float-to-double v4, v0
sub-double/2addr v2, v4
invoke-virtual {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;
neg-int v1, v1
int-to-float v1, v1
const/high16 v4, 0x4000
div-float/2addr v1, v4
float-to-double v4, v1
invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D
move-result-wide v1
double-to-int v1, v1
invoke-virtual {v0, v1, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V
invoke-virtual {p0, v0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
goto :goto_5
.end method
.method private f()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/ui/CamcorderBlinker;->b:Landroid/view/animation/Animation;
invoke-virtual {p0, v0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->startAnimation(Landroid/view/animation/Animation;)V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->setVisibility(I)V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/ui/CamcorderBlinker;->a:Lcom/instagram/creation/video/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/a;->n()Z
move-result v0
if-eqz v0, :cond_c
invoke-virtual {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->b()V
:goto_b
return-void
:cond_c
invoke-direct {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->f()V
invoke-direct {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->e()V
goto :goto_b
.end method
.method public final a(I)V
.registers 3
sget v0, Lcom/instagram/creation/video/i/c;->c:I
if-ne p1, v0, :cond_8
invoke-virtual {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->b()V
:goto_7
return-void
:cond_8
invoke-direct {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->f()V
goto :goto_7
.end method
.method public final a(Lcom/instagram/creation/video/i/a;)V
.registers 2
return-void
.end method
.method public final b()V
.registers 2
invoke-virtual {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->clearAnimation()V
const/16 v0, 0x8
invoke-virtual {p0, v0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->setVisibility(I)V
return-void
.end method
.method public final b(I)V
.registers 3
sget v0, Lcom/instagram/creation/video/a/e;->b:I
if-ne p1, v0, :cond_8
invoke-virtual {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->clearAnimation()V
:cond_7
:goto_7
return-void
:cond_8
iget-object v0, p0, Lcom/instagram/creation/video/ui/CamcorderBlinker;->a:Lcom/instagram/creation/video/a;
invoke-virtual {v0}, Lcom/instagram/creation/video/a;->m()Z
move-result v0
if-nez v0, :cond_7
iget-object v0, p0, Lcom/instagram/creation/video/ui/CamcorderBlinker;->b:Landroid/view/animation/Animation;
invoke-virtual {p0, v0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->startAnimation(Landroid/view/animation/Animation;)V
goto :goto_7
.end method
.method public final b(Lcom/instagram/creation/video/i/a;)V
.registers 2
invoke-direct {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->f()V
invoke-direct {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->e()V
return-void
.end method
.method public final c()V
.registers 1
invoke-virtual {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->b()V
return-void
.end method
.method public final c(Lcom/instagram/creation/video/i/a;)V
.registers 2
invoke-direct {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->e()V
return-void
.end method
.method public setClipStackManager(Lcom/instagram/creation/video/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/ui/CamcorderBlinker;->a:Lcom/instagram/creation/video/a;
invoke-direct {p0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->e()V
return-void
.end method