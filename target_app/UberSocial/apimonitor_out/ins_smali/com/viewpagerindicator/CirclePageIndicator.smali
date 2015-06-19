.class public Lcom/viewpagerindicator/CirclePageIndicator;
.super Landroid/view/View;
.source "SourceFile"
.implements Lcom/viewpagerindicator/a;
.field public static final a:I = 0x0
.field public static final b:I = 0x1
.field private static final p:I = -0x1
.field private c:F
.field private final d:Landroid/graphics/Paint;
.field private final e:Landroid/graphics/Paint;
.field private f:Landroid/support/v4/view/ViewPager;
.field private g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.field private h:I
.field private i:I
.field private j:I
.field private k:I
.field private l:I
.field private m:I
.field private n:Z
.field private o:Z
.field private q:I
.field private r:F
.field private s:I
.field private t:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const v0, 0x7f0100b7
invoke-direct {p0, p1, p2, v0}, Lcom/viewpagerindicator/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 14
const/4 v9, 0x1
invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/high16 v0, -0x4080
iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->r:F
const/4 v0, -0x1
iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->s:I
invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f08001e
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
const v2, 0x7f0b0001
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I
move-result v2
const v3, 0x7f08001f
invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I
move-result v3
const v4, 0x7f0a0027
invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F
move-result v4
const v5, 0x7f0a0026
invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F
move-result v5
const v6, 0x7f070006
invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z
move-result v6
const v7, 0x7f070007
invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getBoolean(I)Z
move-result v0
sget-object v7, Lcom/twidroid/q;->CirclePageIndicator:[I
const v8, 0x7f0d00a1
invoke-virtual {p1, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v7
const/4 v8, 0x0
invoke-virtual {v7, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v6
iput-boolean v6, p0, Lcom/viewpagerindicator/CirclePageIndicator;->n:Z
const/4 v6, 0x2
invoke-virtual {v7, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v2
iput v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->m:I
new-instance v2, Landroid/graphics/Paint;
invoke-direct {v2, v9}, Landroid/graphics/Paint;-><init>(I)V
iput-object v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;
iget-object v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;
sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;
const/4 v6, 0x5
invoke-virtual {v7, v6, v3}, Landroid/content/res/TypedArray;->getColor(II)I
move-result v3
invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V
iget-object v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;
const/4 v3, 0x6
invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F
move-result v3
invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V
new-instance v2, Landroid/graphics/Paint;
invoke-direct {v2, v9}, Landroid/graphics/Paint;-><init>(I)V
iput-object v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/graphics/Paint;
iget-object v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/graphics/Paint;
sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/graphics/Paint;
invoke-virtual {v7, v9, v1}, Landroid/content/res/TypedArray;->getColor(II)I
move-result v1
invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V
const/4 v1, 0x3
invoke-virtual {v7, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F
move-result v1
iput v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:F
const/4 v1, 0x4
invoke-virtual {v7, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v0
iput-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->o:Z
invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V
invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
move-result v0
iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->q:I
return-void
.end method
.method private a(I)I
.registers 8
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v2
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v1
const/high16 v0, 0x4000
if-eq v2, v0, :cond_10
iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;
if-nez v0, :cond_12
:cond_10
move v0, v1
:goto_11
:cond_11
return v0
:cond_12
iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I
move-result v0
invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingLeft()I
move-result v3
invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingRight()I
move-result v4
add-int/2addr v3, v4
int-to-float v3, v3
mul-int/lit8 v4, v0, 0x2
int-to-float v4, v4
iget v5, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:F
mul-float/2addr v4, v5
add-float/2addr v3, v4
add-int/lit8 v0, v0, -0x1
int-to-float v0, v0
iget v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:F
mul-float/2addr v0, v4
add-float/2addr v0, v3
const/high16 v3, 0x3f80
add-float/2addr v0, v3
float-to-int v0, v0
const/high16 v3, -0x8000
if-ne v2, v3, :cond_11
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
goto :goto_11
.end method
.method private b(I)I
.registers 6
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v2
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v0
const/high16 v1, 0x4000
if-ne v2, v1, :cond_d
:goto_c
return v0
:cond_d
const/high16 v1, 0x4000
iget v3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:F
mul-float/2addr v1, v3
invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingTop()I
move-result v3
int-to-float v3, v3
add-float/2addr v1, v3
invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingBottom()I
move-result v3
int-to-float v3, v3
add-float/2addr v1, v3
const/high16 v3, 0x3f80
add-float/2addr v1, v3
float-to-int v1, v1
const/high16 v3, -0x8000
if-ne v2, v3, :cond_2b
invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I
move-result v0
goto :goto_c
:cond_2b
move v0, v1
goto :goto_c
.end method
.method private d()V
.registers 2
iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;
if-eqz v0, :cond_10
iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->m:I
if-nez v0, :cond_11
iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getWidth()I
move-result v0
:goto_e
iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->l:I
:cond_10
return-void
:cond_11
iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getHeight()I
move-result v0
goto :goto_e
.end method
.method public a(Landroid/support/v4/view/ViewPager;I)V
.registers 3
invoke-virtual {p0, p1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V
invoke-virtual {p0, p2}, Lcom/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V
return-void
.end method
.method public a()Z
.registers 2
iget-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->n:Z
return v0
.end method
.method public b()Z
.registers 2
iget-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->o:Z
return v0
.end method
.method public c()V
.registers 1
invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V
return-void
.end method
.method public getFillColor()I
.registers 2
iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/graphics/Paint;
invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I
move-result v0
return v0
.end method
.method public getOrientation()I
.registers 2
iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->m:I
return v0
.end method
.method public getRadius()F
.registers 2
iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:F
return v0
.end method
.method public getStrokeColor()I
.registers 2
iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;
invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I
move-result v0
return v0
.end method
.method public getStrokeWidth()F
.registers 2
iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;
invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F
move-result v0
return v0
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 12
const/high16 v8, 0x4000
invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V
iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;
if-nez v0, :cond_a
:goto_9
:cond_9
return-void
:cond_a
iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I
move-result v5
if-eqz v5, :cond_9
iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->m:I
if-nez v0, :cond_5e
invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getWidth()I
move-result v3
invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingLeft()I
move-result v2
invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingRight()I
move-result v1
invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingTop()I
move-result v0
:goto_2a
iget v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:F
const/high16 v6, 0x4040
mul-float/2addr v6, v4
int-to-float v0, v0
iget v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:F
add-float/2addr v4, v0
int-to-float v0, v2
iget v7, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:F
add-float/2addr v0, v7
iget-boolean v7, p0, Lcom/viewpagerindicator/CirclePageIndicator;->n:Z
if-eqz v7, :cond_46
sub-int v2, v3, v2
sub-int v1, v2, v1
int-to-float v1, v1
div-float/2addr v1, v8
int-to-float v2, v5
mul-float/2addr v2, v6
div-float/2addr v2, v8
sub-float/2addr v1, v2
add-float/2addr v0, v1
:cond_46
const/4 v1, 0x0
move v3, v1
:goto_48
if-ge v3, v5, :cond_71
int-to-float v1, v3
mul-float/2addr v1, v6
add-float/2addr v1, v0
iget v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->m:I
if-nez v2, :cond_6f
move v2, v1
move v1, v4
:goto_53
iget v7, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:F
iget-object v8, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;
invoke-virtual {p1, v2, v1, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
add-int/lit8 v1, v3, 0x1
move v3, v1
goto :goto_48
:cond_5e
invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getHeight()I
move-result v3
invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingTop()I
move-result v2
invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingBottom()I
move-result v1
invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingLeft()I
move-result v0
goto :goto_2a
:cond_6f
move v2, v4
goto :goto_53
:cond_71
iget-boolean v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->o:Z
if-eqz v1, :cond_9b
iget v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->i:I
:goto_77
int-to-float v1, v1
mul-float/2addr v1, v6
iget-boolean v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->o:Z
if-nez v2, :cond_8d
iget v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->l:I
if-eqz v2, :cond_8d
iget v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->j:I
int-to-float v2, v2
const/high16 v3, 0x3f80
mul-float/2addr v2, v3
iget v3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->l:I
int-to-float v3, v3
div-float/2addr v2, v3
mul-float/2addr v2, v6
add-float/2addr v1, v2
:cond_8d
iget v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->m:I
if-nez v2, :cond_9e
add-float/2addr v0, v1
:goto_92
iget v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:F
iget-object v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
goto/16 :goto_9
:cond_9b
iget v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:I
goto :goto_77
:cond_9e
add-float/2addr v0, v1
move v9, v0
move v0, v4
move v4, v9
goto :goto_92
.end method
.method protected onMeasure(II)V
.registers 5
iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->m:I
if-nez v0, :cond_10
invoke-direct {p0, p1}, Lcom/viewpagerindicator/CirclePageIndicator;->a(I)I
move-result v0
invoke-direct {p0, p2}, Lcom/viewpagerindicator/CirclePageIndicator;->b(I)I
move-result v1
invoke-virtual {p0, v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setMeasuredDimension(II)V
:goto_f
return-void
:cond_10
invoke-direct {p0, p1}, Lcom/viewpagerindicator/CirclePageIndicator;->b(I)I
move-result v0
invoke-direct {p0, p2}, Lcom/viewpagerindicator/CirclePageIndicator;->a(I)I
move-result v1
invoke-virtual {p0, v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setMeasuredDimension(II)V
goto :goto_f
.end method
.method public onPageScrollStateChanged(I)V
.registers 3
iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->k:I
iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V
:cond_b
return-void
.end method
.method public onPageScrolled(IFI)V
.registers 5
iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:I
iput p3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->j:I
invoke-direct {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->d()V
invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V
iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V
:cond_13
return-void
.end method
.method public onPageSelected(I)V
.registers 3
iget-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->o:Z
if-nez v0, :cond_8
iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->k:I
if-nez v0, :cond_f
:cond_8
iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:I
iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->i:I
invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V
:cond_f
iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V
:cond_18
return-void
.end method
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
.registers 4
const-string v1, " + Lcom/viewpagerindicator/CirclePageIndicator; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
check-cast p1, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;
invoke-virtual {p1}, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;
move-result-object v0
invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V
iget v0, p1, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;->a:I
iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:I
iget v0, p1, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;->a:I
iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->i:I
invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->requestLayout()V
const-string v1, " - Lcom/viewpagerindicator/CirclePageIndicator; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSaveInstanceState()Landroid/os/Parcelable;
.registers 4
const-string v1, " + Lcom/viewpagerindicator/CirclePageIndicator; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v0
new-instance v1, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;
invoke-direct {v1, v0}, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V
iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:I
iput v0, v1, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;->a:I
move-object v2, v1
const-string v1, " - Lcom/viewpagerindicator/CirclePageIndicator; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move-object v1, v2
return-object v1
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 9
const/4 v0, 0x0
const/4 v1, 0x1
iget-object v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;
if-eqz v2, :cond_12
iget-object v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;
invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I
move-result v2
if-nez v2, :cond_14
:cond_12
move v1, v0
:cond_13
:goto_13
return v1
:cond_14
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v2
and-int/lit16 v2, v2, 0xff
packed-switch v2, :pswitch_data_fa
:pswitch_1d
goto :goto_13
:pswitch_1e
invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I
move-result v0
iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->s:I
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->r:F
goto :goto_13
:pswitch_2b
iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->s:I
invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I
move-result v0
invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F
move-result v0
iget v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->r:F
sub-float v2, v0, v2
iget-boolean v3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->t:Z
if-nez v3, :cond_4a
invoke-static {v2}, Ljava/lang/Math;->abs(F)F
move-result v3
iget v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->q:I
int-to-float v4, v4
cmpl-float v3, v3, v4
if-lez v3, :cond_4a
iput-boolean v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->t:Z
:cond_4a
iget-boolean v3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->t:Z
if-eqz v3, :cond_13
iget-object v3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;
invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z
move-result v3
if-nez v3, :cond_5b
iget-object v3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;
invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z
:cond_5b
iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->r:F
iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V
goto :goto_13
:pswitch_63
iget-boolean v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->t:Z
if-nez v2, :cond_b0
iget-object v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;
invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I
move-result v2
invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getWidth()I
move-result v3
int-to-float v4, v3
const/high16 v5, 0x4000
div-float/2addr v4, v5
int-to-float v3, v3
const/high16 v5, 0x40c0
div-float/2addr v3, v5
iget v5, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:I
if-lez v5, :cond_96
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v5
sub-float v6, v4, v3
cmpg-float v5, v5, v6
if-gez v5, :cond_96
iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;
iget v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:I
add-int/lit8 v2, v2, -0x1
invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
goto/16 :goto_13
:cond_96
iget v5, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:I
add-int/lit8 v2, v2, -0x1
if-ge v5, v2, :cond_b0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v2
add-float/2addr v3, v4
cmpl-float v2, v2, v3
if-lez v2, :cond_b0
iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;
iget v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:I
add-int/lit8 v2, v2, 0x1
invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
goto/16 :goto_13
:cond_b0
iput-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->t:Z
const/4 v0, -0x1
iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->s:I
iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V
goto/16 :goto_13
:pswitch_c4
invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I
move-result v0
invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F
move-result v2
iput v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->r:F
invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I
move-result v0
iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->s:I
goto/16 :goto_13
:pswitch_d6
invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I
move-result v2
invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I
move-result v3
iget v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->s:I
if-ne v3, v4, :cond_eb
if-nez v2, :cond_e5
move v0, v1
:cond_e5
invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I
move-result v0
iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->s:I
:cond_eb
iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->s:I
invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I
move-result v0
invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F
move-result v0
iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->r:F
goto/16 :goto_13
nop
:pswitch_data_fa
.packed-switch 0x0
:pswitch_1e
:pswitch_63
:pswitch_2b
:pswitch_63
:pswitch_1d
:pswitch_c4
:pswitch_d6
.end packed-switch
.end method
.method public setCentered(Z)V
.registers 2
iput-boolean p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->n:Z
invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V
return-void
.end method
.method public setCurrentItem(I)V
.registers 4
iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "ViewPager has not been bound."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:I
invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V
return-void
.end method
.method public setFillColor(I)V
.registers 3
iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/graphics/Paint;
invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V
invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V
return-void
.end method
.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
.registers 2
iput-object p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
return-void
.end method
.method public setOrientation(I)V
.registers 4
packed-switch p1, :pswitch_data_14
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Orientation must be either HORIZONTAL or VERTICAL."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_b
iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->m:I
invoke-direct {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->d()V
invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->requestLayout()V
return-void
:pswitch_data_14
.packed-switch 0x0
:pswitch_b
:pswitch_b
.end packed-switch
.end method
.method public setRadius(F)V
.registers 2
iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:F
invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V
return-void
.end method
.method public setSnap(Z)V
.registers 2
iput-boolean p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->o:Z
invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V
return-void
.end method
.method public setStrokeColor(I)V
.registers 3
iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;
invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V
invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V
return-void
.end method
.method public setStrokeWidth(F)V
.registers 3
iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;
invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V
return-void
.end method
.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
.registers 4
invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;
move-result-object v0
if-nez v0, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "ViewPager does not have adapter instance."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
iput-object p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;
iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
invoke-direct {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->d()V
invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V
return-void
.end method