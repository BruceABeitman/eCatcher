.class public Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;
.super Landroid/view/ViewGroup;
.source "SourceFile"
.field private a:Lcom/spotify/mobile/android/ui/prettylist/a;
.field private final b:Landroid/widget/ImageView;
.field private final c:Lcom/spotify/android/paste/widget/HeaderView;
.field private d:Ljava/lang/String;
.field private e:Z
.field private f:Landroid/view/View;
.field private g:I
.field private h:I
.field private i:I
.field private j:I
.field private k:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 7
invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
sget-object v0, Lcom/spotify/mobile/android/ui/prettylist/a;->a:Lcom/spotify/mobile/android/ui/prettylist/a;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->a:Lcom/spotify/mobile/android/ui/prettylist/a;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->e:Z
const/4 v0, 0x0
iput v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->j:I
new-instance v0, Landroid/widget/ImageView;
invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b:Landroid/widget/ImageView;
sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b:Landroid/widget/ImageView;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f090026
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b:Landroid/widget/ImageView;
const v1, 0x7f02006c
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V
new-instance v0, Lcom/spotify/android/paste/widget/HeaderView;
invoke-direct {v0, p1}, Lcom/spotify/android/paste/widget/HeaderView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->c:Lcom/spotify/android/paste/widget/HeaderView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b:Landroid/widget/ImageView;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->addView(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->c:Lcom/spotify/android/paste/widget/HeaderView;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->addView(Landroid/view/View;)V
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0b008f
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->k:I
return-void
.end method
.method private a(F)I
.registers 5
const/high16 v0, 0x3f80
sub-float/2addr v0, p1
iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b:Landroid/widget/ImageView;
invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I
move-result v1
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->getMeasuredHeight()I
move-result v2
sub-int/2addr v1, v2
int-to-float v1, v1
mul-float/2addr v0, v1
float-to-int v0, v0
neg-int v0, v0
return v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;F)V
.registers 5
const/high16 v0, 0x3f80
iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->a:Lcom/spotify/mobile/android/ui/prettylist/a;
if-eqz v1, :cond_a
iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->d:Ljava/lang/String;
if-nez v1, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->e:Z
if-eqz v1, :cond_1c
const/4 v1, 0x0
const/high16 v2, 0x4080
mul-float/2addr v2, p1
sub-float v0, v2, v0
invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F
move-result v0
const/high16 v1, 0x4040
div-float/2addr v0, v1
:cond_1c
iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->a:Lcom/spotify/mobile/android/ui/prettylist/a;
invoke-interface {v1, v0}, Lcom/spotify/mobile/android/ui/prettylist/a;->a(F)V
goto :goto_a
.end method
.method private d()I
.registers 4
iget v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->g:I
iget v1, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->h:I
add-int/2addr v0, v1
iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->e:Z
if-eqz v1, :cond_10
iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->c:Lcom/spotify/android/paste/widget/HeaderView;
invoke-virtual {v1}, Lcom/spotify/android/paste/widget/HeaderView;->getMeasuredHeight()I
move-result v1
add-int/2addr v0, v1
:cond_10
const/4 v1, 0x0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->f:Landroid/view/View;
if-eqz v2, :cond_1b
iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->f:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I
move-result v1
:cond_1b
div-int/lit8 v1, v1, 0x2
add-int/2addr v0, v1
return v0
.end method
.method public final a()Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b:Landroid/widget/ImageView;
return-object v0
.end method
.method public final a(I)V
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->g:I
return-void
.end method
.method public final a(IF)V
.registers 6
iput p1, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->j:I
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->e:Z
if-eqz v0, :cond_21
iget v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->g:I
sub-int v0, p1, v0
const/4 v1, 0x0
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->c:Lcom/spotify/android/paste/widget/HeaderView;
iget v2, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->i:I
add-int/2addr v0, v2
iget-object v2, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->c:Lcom/spotify/android/paste/widget/HeaderView;
invoke-virtual {v2}, Lcom/spotify/android/paste/widget/HeaderView;->getTop()I
move-result v2
sub-int/2addr v0, v2
invoke-virtual {v1, v0}, Lcom/spotify/android/paste/widget/HeaderView;->offsetTopAndBottom(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->invalidate()V
:cond_21
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->e:Z
if-eqz v0, :cond_3b
const/4 v0, 0x0
const/high16 v1, 0x4118
const/high16 v2, 0x4120
mul-float/2addr v2, p2
sub-float/2addr v1, v2
const/high16 v2, 0x3f80
invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F
move-result v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->c:Lcom/spotify/android/paste/widget/HeaderView;
invoke-virtual {v1, v0}, Lcom/spotify/android/paste/widget/HeaderView;->setAlpha(F)V
:cond_3b
int-to-float v0, p1
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->getHeight()I
move-result v1
int-to-float v1, v1
div-float/2addr v0, v1
iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b:Landroid/widget/ImageView;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->a(F)I
move-result v0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b:Landroid/widget/ImageView;
invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I
move-result v2
sub-int/2addr v0, v2
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b:Landroid/widget/ImageView;
invoke-static {v0}, Landroid/support/v4/view/at;->c(Landroid/view/View;)V
new-instance v0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView$1;
invoke-direct {v0, p0, p2}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView$1;-><init>(Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;F)V
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public final a(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->f:Landroid/view/View;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->f:Landroid/view/View;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->removeView(Landroid/view/View;)V
:cond_9
iput-object p1, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->f:Landroid/view/View;
if-eqz p1, :cond_10
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->addView(Landroid/view/View;)V
:cond_10
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->requestLayout()V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/ui/prettylist/a;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->a:Lcom/spotify/mobile/android/ui/prettylist/a;
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->d:Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->c:Lcom/spotify/android/paste/widget/HeaderView;
invoke-virtual {v0, p1}, Lcom/spotify/android/paste/widget/HeaderView;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->a:Lcom/spotify/mobile/android/ui/prettylist/a;
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/ui/prettylist/a;->a(Ljava/lang/String;)V
return-void
.end method
.method public final b()Lcom/spotify/android/paste/widget/HeaderView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->c:Lcom/spotify/android/paste/widget/HeaderView;
return-object v0
.end method
.method public final b(I)V
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->h:I
return-void
.end method
.method public final c()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->g:I
return v0
.end method
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
.registers 8
const/4 v2, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b:Landroid/widget/ImageView;
if-eq p2, v0, :cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->c:Lcom/spotify/android/paste/widget/HeaderView;
if-ne p2, v0, :cond_1f
:cond_9
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->getWidth()I
move-result v0
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->d()I
move-result v1
invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z
invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
move-result v0
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
:goto_1e
return v0
:cond_1f
invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
move-result v0
goto :goto_1e
.end method
.method protected onLayout(ZIIII)V
.registers 13
const/4 v6, 0x0
sub-int v1, p4, p2
iget v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->j:I
int-to-float v0, v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->getHeight()I
move-result v2
int-to-float v2, v2
div-float/2addr v0, v2
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->a(F)I
move-result v0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b:Landroid/widget/ImageView;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b:Landroid/widget/ImageView;
invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I
move-result v3
add-int/2addr v3, v0
invoke-virtual {v2, v6, v0, v1, v3}, Landroid/widget/ImageView;->layout(IIII)V
iget v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->g:I
iget v2, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->h:I
add-int/2addr v0, v2
iput v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->i:I
iget-boolean v2, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->e:Z
if-eqz v2, :cond_3f
iget v2, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->j:I
iget v3, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->g:I
sub-int/2addr v2, v3
invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I
move-result v2
add-int/2addr v2, v0
iget-object v3, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->c:Lcom/spotify/android/paste/widget/HeaderView;
invoke-virtual {v3}, Lcom/spotify/android/paste/widget/HeaderView;->getMeasuredHeight()I
move-result v3
iget-object v4, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->c:Lcom/spotify/android/paste/widget/HeaderView;
add-int v5, v2, v3
invoke-virtual {v4, v6, v2, v1, v5}, Lcom/spotify/android/paste/widget/HeaderView;->layout(IIII)V
add-int/2addr v0, v3
:cond_3f
iget-object v2, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->f:Landroid/view/View;
if-eqz v2, :cond_5f
iget-object v2, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->f:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I
move-result v2
sub-int/2addr v1, v2
div-int/lit8 v1, v1, 0x2
iget-object v2, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->f:Landroid/view/View;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->f:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I
move-result v3
add-int/2addr v3, v1
iget-object v4, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->f:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I
move-result v4
add-int/2addr v4, v0
invoke-virtual {v2, v1, v0, v3, v4}, Landroid/view/View;->layout(IIII)V
:cond_5f
return-void
.end method
.method protected onMeasure(II)V
.registers 10
const/high16 v6, -0x8000
const/high16 v5, 0x4000
const/4 v1, 0x0
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v0
if-nez v0, :cond_11
const/16 v0, 0xc8
invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result p1
:cond_11
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->f:Landroid/view/View;
if-eqz v0, :cond_b2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->f:Landroid/view/View;
invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v3
invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v4
invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->f:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I
move-result v0
iget v3, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->k:I
mul-int/lit8 v3, v3, 0x2
sub-int v3, v2, v3
if-le v0, v3, :cond_60
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->f:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I
move-result v0
iget v3, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->k:I
mul-int/lit8 v3, v3, 0x2
sub-int v3, v2, v3
sub-int/2addr v0, v3
iget-object v3, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->f:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I
move-result v3
div-int/lit8 v0, v0, 0x2
sub-int v0, v3, v0
if-gez v0, :cond_4e
move v0, v1
:cond_4e
iget-object v3, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->f:Landroid/view/View;
invoke-virtual {v3, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->f:Landroid/view/View;
invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v3
invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v4
invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V
:cond_60
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->f:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I
move-result v0
:goto_66
iget-boolean v3, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->e:Z
if-eqz v3, :cond_90
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v1
if-eq v1, v5, :cond_72
if-ne v1, v6, :cond_81
:cond_72
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v1
sub-int/2addr v1, v0
iget v3, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->h:I
sub-int/2addr v1, v3
iget v3, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->g:I
sub-int/2addr v1, v3
invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result p2
:cond_81
iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->c:Lcom/spotify/android/paste/widget/HeaderView;
invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v3
invoke-virtual {v1, v3, p2}, Lcom/spotify/android/paste/widget/HeaderView;->measure(II)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->c:Lcom/spotify/android/paste/widget/HeaderView;
invoke-virtual {v1}, Lcom/spotify/android/paste/widget/HeaderView;->getMeasuredHeight()I
move-result v1
:cond_90
iget v3, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->g:I
iget v4, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->h:I
add-int/2addr v3, v4
add-int/2addr v1, v3
add-int/2addr v0, v1
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->d()I
move-result v1
int-to-float v1, v1
const v3, 0x3fb33333
mul-float/2addr v1, v3
float-to-int v1, v1
iget-object v3, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b:Landroid/widget/ImageView;
invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v4
invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v1
invoke-virtual {v3, v4, v1}, Landroid/widget/ImageView;->measure(II)V
invoke-virtual {p0, v2, v0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->setMeasuredDimension(II)V
return-void
:cond_b2
move v0, v1
goto :goto_66
.end method