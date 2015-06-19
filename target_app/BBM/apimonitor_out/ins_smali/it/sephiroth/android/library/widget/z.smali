.class public final Lit/sephiroth/android/library/widget/z;
.super Ljava/lang/Object;
.source "EdgeEffect.java"
.field private final A:I
.field private final B:I
.field private final C:I
.field private final D:I
.field  a:I
.field  b:I
.field  c:I
.field private final d:I
.field private final e:Landroid/graphics/drawable/Drawable;
.field private final f:Landroid/graphics/drawable/Drawable;
.field private g:I
.field private h:I
.field private final i:I
.field private j:F
.field private k:F
.field private l:F
.field private m:F
.field private n:F
.field private o:F
.field private p:F
.field private q:F
.field private r:F
.field private s:F
.field private t:F
.field private u:F
.field private v:J
.field private w:F
.field private final x:Landroid/view/animation/Interpolator;
.field private y:F
.field private final z:Landroid/graphics/Rect;
.method public constructor <init>(Landroid/content/Context;)V
.registers 7
const/high16 v4, 0x4080
const/high16 v3, 0x3f00
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lit/sephiroth/android/library/widget/z;->c:I
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lit/sephiroth/android/library/widget/z;->z:Landroid/graphics/Rect;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lit/sephiroth/android/library/c;->hlv_overscroll_edge:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
iput-object v1, p0, Lit/sephiroth/android/library/widget/z;->e:Landroid/graphics/drawable/Drawable;
sget v1, Lit/sephiroth/android/library/c;->hlv_overscroll_glow:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
iput-object v1, p0, Lit/sephiroth/android/library/widget/z;->f:Landroid/graphics/drawable/Drawable;
const/4 v1, 0x1
iput v1, p0, Lit/sephiroth/android/library/widget/z;->d:I
iget-object v1, p0, Lit/sephiroth/android/library/widget/z;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v1
iput v1, p0, Lit/sephiroth/android/library/widget/z;->A:I
iget-object v1, p0, Lit/sephiroth/android/library/widget/z;->f:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v1
iput v1, p0, Lit/sephiroth/android/library/widget/z;->B:I
iget-object v1, p0, Lit/sephiroth/android/library/widget/z;->f:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v1
iput v1, p0, Lit/sephiroth/android/library/widget/z;->C:I
iget v1, p0, Lit/sephiroth/android/library/widget/z;->B:I
int-to-float v1, v1
mul-float/2addr v1, v4
iget v2, p0, Lit/sephiroth/android/library/widget/z;->B:I
int-to-float v2, v2
mul-float/2addr v1, v2
iget v2, p0, Lit/sephiroth/android/library/widget/z;->C:I
int-to-float v2, v2
div-float/2addr v1, v2
const v2, 0x3f19999a
mul-float/2addr v1, v2
iget v2, p0, Lit/sephiroth/android/library/widget/z;->B:I
int-to-float v2, v2
mul-float/2addr v2, v4
invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F
move-result v1
add-float/2addr v1, v3
float-to-int v1, v1
iput v1, p0, Lit/sephiroth/android/library/widget/z;->D:I
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
const/high16 v1, 0x4396
mul-float/2addr v0, v1
add-float/2addr v0, v3
float-to-int v0, v0
iput v0, p0, Lit/sephiroth/android/library/widget/z;->i:I
new-instance v0, Landroid/view/animation/DecelerateInterpolator;
invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V
iput-object v0, p0, Lit/sephiroth/android/library/widget/z;->x:Landroid/view/animation/Interpolator;
return-void
.end method
.method public final a(Z)Landroid/graphics/Rect;
.registers 6
const/4 v0, 0x0
iget-object v1, p0, Lit/sephiroth/android/library/widget/z;->z:Landroid/graphics/Rect;
iget v2, p0, Lit/sephiroth/android/library/widget/z;->g:I
iget v3, p0, Lit/sephiroth/android/library/widget/z;->D:I
invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V
iget-object v1, p0, Lit/sephiroth/android/library/widget/z;->z:Landroid/graphics/Rect;
iget v2, p0, Lit/sephiroth/android/library/widget/z;->a:I
iget v3, p0, Lit/sephiroth/android/library/widget/z;->b:I
if-eqz p1, :cond_14
iget v0, p0, Lit/sephiroth/android/library/widget/z;->D:I
:cond_14
sub-int v0, v3, v0
invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V
iget-object v0, p0, Lit/sephiroth/android/library/widget/z;->z:Landroid/graphics/Rect;
return-object v0
.end method
.method public final a(F)V
.registers 10
const/4 v7, 0x1
const/high16 v6, 0x40e0
const/high16 v5, 0x3f80
const/4 v4, 0x0
invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J
move-result-wide v0
iget v2, p0, Lit/sephiroth/android/library/widget/z;->c:I
const/4 v3, 0x4
if-ne v2, v3, :cond_1b
iget-wide v2, p0, Lit/sephiroth/android/library/widget/z;->v:J
sub-long v2, v0, v2
long-to-float v2, v2
iget v3, p0, Lit/sephiroth/android/library/widget/z;->w:F
cmpg-float v2, v2, v3
if-gez v2, :cond_1b
:goto_1a
return-void
:cond_1b
iget v2, p0, Lit/sephiroth/android/library/widget/z;->c:I
if-eq v2, v7, :cond_21
iput v5, p0, Lit/sephiroth/android/library/widget/z;->m:F
:cond_21
iput v7, p0, Lit/sephiroth/android/library/widget/z;->c:I
iput-wide v0, p0, Lit/sephiroth/android/library/widget/z;->v:J
const/high16 v0, 0x4327
iput v0, p0, Lit/sephiroth/android/library/widget/z;->w:F
iget v0, p0, Lit/sephiroth/android/library/widget/z;->y:F
add-float/2addr v0, p1
iput v0, p0, Lit/sephiroth/android/library/widget/z;->y:F
iget v0, p0, Lit/sephiroth/android/library/widget/z;->y:F
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v0
const v1, 0x3f19999a
invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F
move-result v2
invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F
move-result v1
iput v1, p0, Lit/sephiroth/android/library/widget/z;->n:F
iput v1, p0, Lit/sephiroth/android/library/widget/z;->j:F
const/high16 v1, 0x3f00
mul-float/2addr v0, v6
invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F
move-result v0
invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F
move-result v0
iput v0, p0, Lit/sephiroth/android/library/widget/z;->p:F
iput v0, p0, Lit/sephiroth/android/library/widget/z;->k:F
iget v0, p0, Lit/sephiroth/android/library/widget/z;->l:F
invoke-static {p1}, Ljava/lang/Math;->abs(F)F
move-result v1
const v2, 0x3f8ccccd
mul-float/2addr v1, v2
add-float/2addr v0, v1
invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F
move-result v0
iput v0, p0, Lit/sephiroth/android/library/widget/z;->r:F
iput v0, p0, Lit/sephiroth/android/library/widget/z;->l:F
invoke-static {p1}, Ljava/lang/Math;->abs(F)F
move-result v0
cmpl-float v1, p1, v4
if-lez v1, :cond_74
iget v1, p0, Lit/sephiroth/android/library/widget/z;->y:F
cmpg-float v1, v1, v4
if-gez v1, :cond_74
neg-float v0, v0
:cond_74
iget v1, p0, Lit/sephiroth/android/library/widget/z;->y:F
cmpl-float v1, v1, v4
if-nez v1, :cond_7c
iput v4, p0, Lit/sephiroth/android/library/widget/z;->m:F
:cond_7c
const/high16 v1, 0x4080
iget v2, p0, Lit/sephiroth/android/library/widget/z;->m:F
mul-float/2addr v0, v6
add-float/2addr v0, v2
invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F
move-result v0
invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F
move-result v0
iput v0, p0, Lit/sephiroth/android/library/widget/z;->t:F
iput v0, p0, Lit/sephiroth/android/library/widget/z;->m:F
iget v0, p0, Lit/sephiroth/android/library/widget/z;->j:F
iput v0, p0, Lit/sephiroth/android/library/widget/z;->o:F
iget v0, p0, Lit/sephiroth/android/library/widget/z;->k:F
iput v0, p0, Lit/sephiroth/android/library/widget/z;->q:F
iget v0, p0, Lit/sephiroth/android/library/widget/z;->l:F
iput v0, p0, Lit/sephiroth/android/library/widget/z;->s:F
iget v0, p0, Lit/sephiroth/android/library/widget/z;->m:F
iput v0, p0, Lit/sephiroth/android/library/widget/z;->u:F
goto/16 :goto_1a
.end method
.method public final a(I)V
.registers 9
const/high16 v6, 0x3f80
const/high16 v5, 0x3f00
const/4 v4, 0x0
const/4 v0, 0x2
iput v0, p0, Lit/sephiroth/android/library/widget/z;->c:I
const/16 v0, 0x64
invoke-static {p1}, Ljava/lang/Math;->abs(I)I
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v0
invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J
move-result-wide v1
iput-wide v1, p0, Lit/sephiroth/android/library/widget/z;->v:J
const v1, 0x3dcccccd
int-to-float v2, v0
const v3, 0x3cf5c28f
mul-float/2addr v2, v3
add-float/2addr v1, v2
iput v1, p0, Lit/sephiroth/android/library/widget/z;->w:F
iput v4, p0, Lit/sephiroth/android/library/widget/z;->n:F
iput v4, p0, Lit/sephiroth/android/library/widget/z;->p:F
iput v4, p0, Lit/sephiroth/android/library/widget/z;->k:F
iput v5, p0, Lit/sephiroth/android/library/widget/z;->r:F
iput v4, p0, Lit/sephiroth/android/library/widget/z;->t:F
const/4 v1, 0x0
mul-int/lit8 v2, v0, 0x8
const/4 v3, 0x1
invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I
move-result v2
invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I
move-result v1
int-to-float v1, v1
iput v1, p0, Lit/sephiroth/android/library/widget/z;->o:F
mul-int/lit8 v1, v0, 0x8
int-to-float v1, v1
invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F
move-result v1
invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F
move-result v1
iput v1, p0, Lit/sephiroth/android/library/widget/z;->q:F
const v1, 0x3ccccccd
div-int/lit8 v2, v0, 0x64
mul-int/2addr v2, v0
int-to-float v2, v2
const v3, 0x391d4952
mul-float/2addr v2, v3
add-float/2addr v1, v2
const/high16 v2, 0x3fe0
invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F
move-result v1
iput v1, p0, Lit/sephiroth/android/library/widget/z;->u:F
iget v1, p0, Lit/sephiroth/android/library/widget/z;->r:F
mul-int/lit8 v0, v0, 0x10
int-to-float v0, v0
const v2, 0x3727c5ac
mul-float/2addr v0, v2
invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F
move-result v0
invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F
move-result v0
iput v0, p0, Lit/sephiroth/android/library/widget/z;->s:F
return-void
.end method
.method public final a(II)V
.registers 3
iput p1, p0, Lit/sephiroth/android/library/widget/z;->g:I
iput p2, p0, Lit/sephiroth/android/library/widget/z;->h:I
return-void
.end method
.method public final a()Z
.registers 2
iget v0, p0, Lit/sephiroth/android/library/widget/z;->c:I
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public final a(Landroid/graphics/Canvas;)Z
.registers 12
const/high16 v9, 0x437f
const/4 v8, 0x3
const/high16 v7, 0x3f80
const/4 v1, 0x0
const/4 v6, 0x0
invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J
move-result-wide v2
iget-wide v4, p0, Lit/sephiroth/android/library/widget/z;->v:J
sub-long/2addr v2, v4
long-to-float v0, v2
iget v2, p0, Lit/sephiroth/android/library/widget/z;->w:F
div-float/2addr v0, v2
invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F
move-result v0
iget-object v2, p0, Lit/sephiroth/android/library/widget/z;->x:Landroid/view/animation/Interpolator;
invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F
move-result v2
iget v3, p0, Lit/sephiroth/android/library/widget/z;->n:F
iget v4, p0, Lit/sephiroth/android/library/widget/z;->o:F
iget v5, p0, Lit/sephiroth/android/library/widget/z;->n:F
sub-float/2addr v4, v5
mul-float/2addr v4, v2
add-float/2addr v3, v4
iput v3, p0, Lit/sephiroth/android/library/widget/z;->j:F
iget v3, p0, Lit/sephiroth/android/library/widget/z;->p:F
iget v4, p0, Lit/sephiroth/android/library/widget/z;->q:F
iget v5, p0, Lit/sephiroth/android/library/widget/z;->p:F
sub-float/2addr v4, v5
mul-float/2addr v4, v2
add-float/2addr v3, v4
iput v3, p0, Lit/sephiroth/android/library/widget/z;->k:F
iget v3, p0, Lit/sephiroth/android/library/widget/z;->r:F
iget v4, p0, Lit/sephiroth/android/library/widget/z;->s:F
iget v5, p0, Lit/sephiroth/android/library/widget/z;->r:F
sub-float/2addr v4, v5
mul-float/2addr v4, v2
add-float/2addr v3, v4
iput v3, p0, Lit/sephiroth/android/library/widget/z;->l:F
iget v3, p0, Lit/sephiroth/android/library/widget/z;->t:F
iget v4, p0, Lit/sephiroth/android/library/widget/z;->u:F
iget v5, p0, Lit/sephiroth/android/library/widget/z;->t:F
sub-float/2addr v4, v5
mul-float/2addr v4, v2
add-float/2addr v3, v4
iput v3, p0, Lit/sephiroth/android/library/widget/z;->m:F
const v3, 0x3f7fbe77
cmpl-float v0, v0, v3
if-ltz v0, :cond_54
iget v0, p0, Lit/sephiroth/android/library/widget/z;->c:I
packed-switch v0, :pswitch_data_13a
:cond_54
:goto_54
iget-object v0, p0, Lit/sephiroth/android/library/widget/z;->f:Landroid/graphics/drawable/Drawable;
iget v2, p0, Lit/sephiroth/android/library/widget/z;->l:F
invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F
move-result v2
invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F
move-result v2
mul-float/2addr v2, v9
float-to-int v2, v2
invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
iget v0, p0, Lit/sephiroth/android/library/widget/z;->B:I
int-to-float v0, v0
iget v2, p0, Lit/sephiroth/android/library/widget/z;->m:F
mul-float/2addr v0, v2
iget v2, p0, Lit/sephiroth/android/library/widget/z;->B:I
int-to-float v2, v2
mul-float/2addr v0, v2
iget v2, p0, Lit/sephiroth/android/library/widget/z;->C:I
int-to-float v2, v2
div-float/2addr v0, v2
const v2, 0x3f19999a
mul-float/2addr v0, v2
iget v2, p0, Lit/sephiroth/android/library/widget/z;->B:I
int-to-float v2, v2
const/high16 v3, 0x4080
mul-float/2addr v2, v3
invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F
move-result v0
float-to-int v0, v0
iget v2, p0, Lit/sephiroth/android/library/widget/z;->d:I
iget-object v2, p0, Lit/sephiroth/android/library/widget/z;->f:Landroid/graphics/drawable/Drawable;
iget v3, p0, Lit/sephiroth/android/library/widget/z;->g:I
invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v2, p0, Lit/sephiroth/android/library/widget/z;->f:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
iget-object v2, p0, Lit/sephiroth/android/library/widget/z;->e:Landroid/graphics/drawable/Drawable;
iget v3, p0, Lit/sephiroth/android/library/widget/z;->j:F
invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F
move-result v3
invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F
move-result v3
mul-float/2addr v3, v9
float-to-int v3, v3
invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
iget v2, p0, Lit/sephiroth/android/library/widget/z;->A:I
int-to-float v2, v2
iget v3, p0, Lit/sephiroth/android/library/widget/z;->k:F
mul-float/2addr v2, v3
float-to-int v2, v2
iget v3, p0, Lit/sephiroth/android/library/widget/z;->d:I
iget-object v3, p0, Lit/sephiroth/android/library/widget/z;->e:Landroid/graphics/drawable/Drawable;
iget v4, p0, Lit/sephiroth/android/library/widget/z;->g:I
invoke-virtual {v3, v1, v1, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v3, p0, Lit/sephiroth/android/library/widget/z;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
iget v3, p0, Lit/sephiroth/android/library/widget/z;->c:I
if-ne v3, v8, :cond_c0
if-nez v0, :cond_c0
if-nez v2, :cond_c0
iput v1, p0, Lit/sephiroth/android/library/widget/z;->c:I
:cond_c0
iget v0, p0, Lit/sephiroth/android/library/widget/z;->c:I
if-eqz v0, :cond_138
const/4 v0, 0x1
:goto_c5
return v0
:pswitch_c6
iput v8, p0, Lit/sephiroth/android/library/widget/z;->c:I
invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J
move-result-wide v2
iput-wide v2, p0, Lit/sephiroth/android/library/widget/z;->v:J
const/high16 v0, 0x447a
iput v0, p0, Lit/sephiroth/android/library/widget/z;->w:F
iget v0, p0, Lit/sephiroth/android/library/widget/z;->j:F
iput v0, p0, Lit/sephiroth/android/library/widget/z;->n:F
iget v0, p0, Lit/sephiroth/android/library/widget/z;->k:F
iput v0, p0, Lit/sephiroth/android/library/widget/z;->p:F
iget v0, p0, Lit/sephiroth/android/library/widget/z;->l:F
iput v0, p0, Lit/sephiroth/android/library/widget/z;->r:F
iget v0, p0, Lit/sephiroth/android/library/widget/z;->m:F
iput v0, p0, Lit/sephiroth/android/library/widget/z;->t:F
iput v6, p0, Lit/sephiroth/android/library/widget/z;->o:F
iput v6, p0, Lit/sephiroth/android/library/widget/z;->q:F
iput v6, p0, Lit/sephiroth/android/library/widget/z;->s:F
iput v6, p0, Lit/sephiroth/android/library/widget/z;->u:F
goto/16 :goto_54
:pswitch_ec
const/4 v0, 0x4
iput v0, p0, Lit/sephiroth/android/library/widget/z;->c:I
invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J
move-result-wide v2
iput-wide v2, p0, Lit/sephiroth/android/library/widget/z;->v:J
const/high16 v0, 0x447a
iput v0, p0, Lit/sephiroth/android/library/widget/z;->w:F
iget v0, p0, Lit/sephiroth/android/library/widget/z;->j:F
iput v0, p0, Lit/sephiroth/android/library/widget/z;->n:F
iget v0, p0, Lit/sephiroth/android/library/widget/z;->k:F
iput v0, p0, Lit/sephiroth/android/library/widget/z;->p:F
iget v0, p0, Lit/sephiroth/android/library/widget/z;->l:F
iput v0, p0, Lit/sephiroth/android/library/widget/z;->r:F
iget v0, p0, Lit/sephiroth/android/library/widget/z;->m:F
iput v0, p0, Lit/sephiroth/android/library/widget/z;->t:F
iput v6, p0, Lit/sephiroth/android/library/widget/z;->o:F
iput v6, p0, Lit/sephiroth/android/library/widget/z;->q:F
iput v6, p0, Lit/sephiroth/android/library/widget/z;->s:F
iput v6, p0, Lit/sephiroth/android/library/widget/z;->u:F
goto/16 :goto_54
:pswitch_113
iget v0, p0, Lit/sephiroth/android/library/widget/z;->u:F
cmpl-float v0, v0, v6
if-eqz v0, :cond_130
iget v0, p0, Lit/sephiroth/android/library/widget/z;->u:F
iget v3, p0, Lit/sephiroth/android/library/widget/z;->u:F
mul-float/2addr v0, v3
div-float v0, v7, v0
:goto_120
iget v3, p0, Lit/sephiroth/android/library/widget/z;->p:F
iget v4, p0, Lit/sephiroth/android/library/widget/z;->q:F
iget v5, p0, Lit/sephiroth/android/library/widget/z;->p:F
sub-float/2addr v4, v5
mul-float/2addr v2, v4
mul-float/2addr v0, v2
add-float/2addr v0, v3
iput v0, p0, Lit/sephiroth/android/library/widget/z;->k:F
iput v8, p0, Lit/sephiroth/android/library/widget/z;->c:I
goto/16 :goto_54
:cond_130
const v0, 0x7f7fffff
goto :goto_120
:pswitch_134
iput v1, p0, Lit/sephiroth/android/library/widget/z;->c:I
goto/16 :goto_54
:cond_138
move v0, v1
goto :goto_c5
:pswitch_data_13a
.packed-switch 0x1
:pswitch_ec
:pswitch_c6
:pswitch_134
:pswitch_113
.end packed-switch
.end method
.method public final b()V
.registers 4
const/4 v2, 0x0
iput v2, p0, Lit/sephiroth/android/library/widget/z;->y:F
iget v0, p0, Lit/sephiroth/android/library/widget/z;->c:I
const/4 v1, 0x1
if-eq v0, v1, :cond_e
iget v0, p0, Lit/sephiroth/android/library/widget/z;->c:I
const/4 v1, 0x4
if-eq v0, v1, :cond_e
:goto_d
return-void
:cond_e
const/4 v0, 0x3
iput v0, p0, Lit/sephiroth/android/library/widget/z;->c:I
iget v0, p0, Lit/sephiroth/android/library/widget/z;->j:F
iput v0, p0, Lit/sephiroth/android/library/widget/z;->n:F
iget v0, p0, Lit/sephiroth/android/library/widget/z;->k:F
iput v0, p0, Lit/sephiroth/android/library/widget/z;->p:F
iget v0, p0, Lit/sephiroth/android/library/widget/z;->l:F
iput v0, p0, Lit/sephiroth/android/library/widget/z;->r:F
iget v0, p0, Lit/sephiroth/android/library/widget/z;->m:F
iput v0, p0, Lit/sephiroth/android/library/widget/z;->t:F
iput v2, p0, Lit/sephiroth/android/library/widget/z;->o:F
iput v2, p0, Lit/sephiroth/android/library/widget/z;->q:F
iput v2, p0, Lit/sephiroth/android/library/widget/z;->s:F
iput v2, p0, Lit/sephiroth/android/library/widget/z;->u:F
invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lit/sephiroth/android/library/widget/z;->v:J
const/high16 v0, 0x447a
iput v0, p0, Lit/sephiroth/android/library/widget/z;->w:F
goto :goto_d
.end method