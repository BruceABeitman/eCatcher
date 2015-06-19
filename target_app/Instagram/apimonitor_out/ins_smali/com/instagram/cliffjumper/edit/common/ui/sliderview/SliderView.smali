.class public Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;
.super Landroid/widget/HorizontalScrollView;
.source "SliderView.java"
.field private a:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;
.field private b:F
.field private c:Z
.field private d:Z
.field private e:F
.field private f:Z
.field private g:Z
.field private h:I
.field private i:Z
.field private j:F
.field private k:F
.field private l:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;
.field private m:I
.field private n:Ljava/util/List;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V
iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->c:Z
iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->i:Z
const/high16 v0, -0x4080
iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->j:F
const/high16 v0, 0x3f80
iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->k:F
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->n:Ljava/util/List;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->c:Z
iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->i:Z
const/high16 v0, -0x4080
iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->j:F
const/high16 v0, 0x3f80
iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->k:F
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->n:Ljava/util/List;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->c:Z
iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->i:Z
const/high16 v0, -0x4080
iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->j:F
const/high16 v0, 0x3f80
iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->k:F
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->n:Ljava/util/List;
return-void
.end method
.method private a()F
.registers 4
const v0, 0x3dcccccd
const/high16 v1, 0x4000
iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->l:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;
invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getMaximumAngle()F
move-result v2
mul-float/2addr v1, v2
div-float/2addr v0, v1
return v0
.end method
.method private a(F)F
.registers 4
const/high16 v1, 0x4120
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->l:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getMaximumAngle()F
move-result v0
mul-float/2addr v0, p1
mul-float/2addr v0, v1
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
int-to-float v0, v0
div-float/2addr v0, v1
return v0
.end method
.method private a(I)F
.registers 8
int-to-double v0, p1
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getWidth()I
move-result v2
int-to-double v2, v2
const-wide/high16 v4, 0x4000
div-double/2addr v2, v4
add-double/2addr v0, v2
double-to-int v0, v0
iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->h:I
sub-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x2
int-to-float v0, v0
iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->b:F
div-float/2addr v0, v1
return v0
.end method
.method private a(FF)V
.registers 3
iput p1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->j:F
iput p2, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->k:F
return-void
.end method
.method private b(F)F
.registers 3
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->l:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getMaximumAngle()F
move-result v0
div-float v0, p1, v0
return v0
.end method
.method private b()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->c:Z
return-void
.end method
.method private b(FZ)V
.registers 8
const/4 v4, 0x0
const/high16 v3, 0x4000
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->k:F
invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F
move-result v0
iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->j:F
invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F
move-result v0
const/high16 v1, 0x3f80
add-float/2addr v0, v1
div-float/2addr v0, v3
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->l:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;
invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getLeft()I
move-result v1
int-to-float v1, v1
iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->l:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;
invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getWidth()I
move-result v2
int-to-float v2, v2
mul-float/2addr v0, v2
add-float/2addr v0, v1
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getWidth()I
move-result v1
int-to-float v1, v1
div-float/2addr v1, v3
sub-float/2addr v0, v1
float-to-int v0, v0
if-eqz p2, :cond_31
invoke-virtual {p0, v0, v4}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->smoothScrollTo(II)V
:goto_30
return-void
:cond_31
invoke-virtual {p0, v0, v4}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->scrollTo(II)V
goto :goto_30
.end method
.method private c()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->c:Z
return-void
.end method
.method private c(F)Z
.registers 4
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getWidth()I
move-result v0
int-to-float v0, v0
const/high16 v1, 0x3e80
mul-float/2addr v0, v1
cmpg-float v0, p1, v0
if-gez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method private d()V
.registers 3
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->c()V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getChildAt(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->l:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->l:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getLeft()I
move-result v0
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->l:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;
invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getRight()I
move-result v1
add-int/2addr v0, v1
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getWidth()I
move-result v1
sub-int/2addr v0, v1
div-int/lit8 v0, v0, 0x2
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getScrollY()I
move-result v1
invoke-virtual {p0, v0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->scrollTo(II)V
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getScrollX()I
move-result v0
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getWidth()I
move-result v1
div-int/lit8 v1, v1, 0x2
add-int/2addr v0, v1
iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->h:I
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->b()V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->l:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getWidth()I
move-result v0
int-to-float v0, v0
iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->b:F
return-void
.end method
.method private d(F)Z
.registers 4
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getWidth()I
move-result v0
int-to-float v0, v0
const/high16 v1, 0x3f40
mul-float/2addr v0, v1
cmpl-float v0, p1, v0
if-lez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method private getCurrentScrollPercent()F
.registers 2
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getScrollX()I
move-result v0
invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a(I)F
move-result v0
return v0
.end method
.method public final a(FZ)V
.registers 4
iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->i:Z
if-eqz v0, :cond_c
invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->b(F)F
move-result v0
invoke-direct {p0, v0, p2}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->b(FZ)V
:goto_b
return-void
:cond_c
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->d:Z
iput p1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->e:F
iput-boolean p2, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->f:Z
goto :goto_b
.end method
.method public fling(I)V
.registers 2
return-void
.end method
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.registers 5
invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I
move-result v0
invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I
move-result v0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v1
packed-switch v1, :pswitch_data_2e
:goto_f
invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
return v0
:pswitch_14
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->n:Ljava/util/List;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_f
:pswitch_1e
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->n:Ljava/util/List;
iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->n:Ljava/util/List;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
move-result v0
invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
goto :goto_f
:pswitch_data_2e
.packed-switch 0x5
:pswitch_14
:pswitch_1e
.end packed-switch
.end method
.method public onLayout(ZIIII)V
.registers 10
const/4 v3, 0x0
invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V
iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->i:Z
if-nez v0, :cond_1e
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->d()V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->l:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/AngleRulerView;->getMaximumAngle()F
move-result v0
const/high16 v1, -0x3e10
div-float/2addr v1, v0
const/high16 v2, 0x41f0
div-float v0, v2, v0
invoke-direct {p0, v1, v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a(FF)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->i:Z
:cond_1e
iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->d:Z
if-eqz v0, :cond_34
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->e:F
invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->b(F)F
move-result v0
iget-boolean v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->f:Z
invoke-direct {p0, v0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->b(FZ)V
iput-boolean v3, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->d:Z
const/4 v0, 0x0
iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->e:F
iput-boolean v3, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->f:Z
:cond_34
return-void
.end method
.method public onMeasure(II)V
.registers 7
const/4 v3, 0x0
invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getChildCount()I
move-result v0
if-lez v0, :cond_27
invoke-virtual {p0, v3}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getMeasuredWidth()I
move-result v2
invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout$LayoutParams;
iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I
invoke-static {p2, v3, v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getChildMeasureSpec(III)I
move-result v0
const/high16 v3, 0x4000
invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V
:cond_27
return-void
.end method
.method protected onScrollChanged(IIII)V
.registers 8
const/4 v2, 0x0
invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V
iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->c:Z
if-eqz v0, :cond_26
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getCurrentScrollPercent()F
move-result v0
iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->k:F
cmpl-float v1, v0, v1
if-lez v1, :cond_27
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->k:F
invoke-direct {p0, v0, v2}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->b(FZ)V
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->k:F
:goto_19
:cond_19
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;
if-eqz v1, :cond_26
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;
invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a(F)F
move-result v0
invoke-interface {v1, v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;->a(F)V
:cond_26
return-void
:cond_27
iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->j:F
cmpg-float v1, v0, v1
if-gez v1, :cond_19
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->j:F
invoke-direct {p0, v0, v2}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->b(FZ)V
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->j:F
goto :goto_19
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 8
const/4 v1, 0x1
const/4 v5, 0x0
const/4 v4, 0x0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
packed-switch v0, :pswitch_data_c4
:goto_a
iput-boolean v4, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->g:Z
:goto_c
:cond_c
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
float-to-int v0, v0
iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->m:I
invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
:goto_17
return v0
:pswitch_18
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;
invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;->a()V
:cond_21
iput-boolean v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->g:Z
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->n:Ljava/util/List;
invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_c
:pswitch_31
iput-boolean v4, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->g:Z
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->n:Ljava/util/List;
invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I
move-result v0
const/4 v2, -0x1
if-eq v0, v2, :cond_c
iget v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->m:I
invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F
move-result v0
float-to-int v0, v0
sub-int v0, v2, v0
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getCurrentScrollPercent()F
move-result v2
invoke-direct {p0, v2}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a(F)F
move-result v2
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->getScrollX()I
move-result v3
add-int/2addr v0, v3
invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a(I)F
move-result v0
invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a(F)F
move-result v0
cmpl-float v2, v2, v5
if-nez v2, :cond_c
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v0
const/high16 v2, 0x3f40
cmpg-float v0, v0, v2
if-gez v0, :cond_c
invoke-direct {p0, v5, v4}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->b(FZ)V
move v0, v1
goto :goto_17
:pswitch_77
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;
if-eqz v0, :cond_80
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;
invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;->b()V
:cond_80
iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->g:Z
if-eqz v0, :cond_9f
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->c(F)Z
move-result v0
if-eqz v0, :cond_aa
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;
if-eqz v0, :cond_9f
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a()F
move-result v0
iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->b:F
mul-float/2addr v0, v1
float-to-int v0, v0
mul-int/lit8 v0, v0, -0x1
invoke-virtual {p0, v0, v4}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->scrollBy(II)V
:goto_9f
:cond_9f
iput-boolean v4, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->g:Z
:pswitch_a1
iput v4, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->m:I
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->n:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
goto/16 :goto_a
:cond_aa
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->d(F)Z
move-result v0
if-eqz v0, :cond_9f
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;
if-eqz v0, :cond_9f
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a()F
move-result v0
iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->b:F
mul-float/2addr v0, v1
float-to-int v0, v0
invoke-virtual {p0, v0, v4}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->scrollBy(II)V
goto :goto_9f
:pswitch_data_c4
.packed-switch 0x0
:pswitch_18
:pswitch_77
:pswitch_31
:pswitch_a1
.end packed-switch
.end method
.method public setOnSlideListener(Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;
return-void
.end method