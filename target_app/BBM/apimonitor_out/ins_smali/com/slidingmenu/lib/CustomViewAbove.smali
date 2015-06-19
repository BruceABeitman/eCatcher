.class public Lcom/slidingmenu/lib/CustomViewAbove;
.super Landroid/view/ViewGroup;
.source "CustomViewAbove.java"
.field private static final g:Landroid/view/animation/Interpolator;
.field private A:Z
.field private B:Z
.field private C:F
.field public final a:Lcom/bbm/util/cr;
.field public b:Z
.field protected c:I
.field protected d:Landroid/view/VelocityTracker;
.field protected e:I
.field protected f:I
.field private h:Landroid/view/View;
.field private i:I
.field private j:Landroid/widget/Scroller;
.field private k:Z
.field private l:Z
.field private m:I
.field private n:F
.field private o:F
.field private p:F
.field private q:I
.field private r:I
.field private s:Lcom/slidingmenu/lib/CustomViewBehind;
.field private t:Z
.field private u:Z
.field private v:Lcom/slidingmenu/lib/c;
.field private w:Lcom/slidingmenu/lib/c;
.field private x:Lcom/slidingmenu/lib/i;
.field private y:Lcom/slidingmenu/lib/k;
.field private final z:Ljava/util/List;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/slidingmenu/lib/a;
invoke-direct {v0}, Lcom/slidingmenu/lib/a;-><init>()V
sput-object v0, Lcom/slidingmenu/lib/CustomViewAbove;->g:Landroid/view/animation/Interpolator;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/slidingmenu/lib/CustomViewAbove;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 7
const/4 v3, 0x1
const/4 v2, 0x0
invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Lcom/bbm/util/cr;
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->a:Lcom/bbm/util/cr;
const/4 v0, -0x1
iput v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->c:I
iput-boolean v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->t:Z
iput-boolean v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->u:Z
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->z:Ljava/util/List;
iput-boolean v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->A:Z
iput v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->f:I
iput-boolean v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->B:Z
const/4 v0, 0x0
iput v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->C:F
invoke-virtual {p0, v2}, Lcom/slidingmenu/lib/CustomViewAbove;->setWillNotDraw(Z)V
const/high16 v0, 0x4
invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->setDescendantFocusability(I)V
invoke-virtual {p0, v3}, Lcom/slidingmenu/lib/CustomViewAbove;->setFocusable(Z)V
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getContext()Landroid/content/Context;
move-result-object v0
new-instance v1, Landroid/widget/Scroller;
sget-object v2, Lcom/slidingmenu/lib/CustomViewAbove;->g:Landroid/view/animation/Interpolator;
invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
iput-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->j:Landroid/widget/Scroller;
invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
move-result-object v1
invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I
move-result v2
iput v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->m:I
invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I
move-result v2
iput v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->q:I
invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I
move-result v1
iput v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->e:I
new-instance v1, Lcom/slidingmenu/lib/b;
invoke-direct {v1, p0}, Lcom/slidingmenu/lib/b;-><init>(Lcom/slidingmenu/lib/CustomViewAbove;)V
iget-object v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->w:Lcom/slidingmenu/lib/c;
iput-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->w:Lcom/slidingmenu/lib/c;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
const/high16 v1, 0x41c8
mul-float/2addr v0, v1
float-to-int v0, v0
iput v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->r:I
return-void
.end method
.method private a(I)I
.registers 6
packed-switch p1, :pswitch_data_62
const/4 v0, 0x0
:goto_4
return v0
:pswitch_5
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->s:Lcom/slidingmenu/lib/CustomViewBehind;
iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->h:Landroid/view/View;
iget v2, v0, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
if-nez v2, :cond_25
packed-switch p1, :pswitch_data_6c
:pswitch_10
:cond_10
:goto_10
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v0
goto :goto_4
:pswitch_15
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v1
invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v0
sub-int v0, v1, v0
goto :goto_4
:pswitch_20
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v0
goto :goto_4
:cond_25
iget v2, v0, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
const/4 v3, 0x1
if-ne v2, v3, :cond_3d
packed-switch p1, :pswitch_data_76
:pswitch_2d
goto :goto_10
:pswitch_2e
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v0
goto :goto_4
:pswitch_33
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v1
invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v0
add-int/2addr v0, v1
goto :goto_4
:cond_3d
iget v2, v0, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
const/4 v3, 0x2
if-ne v2, v3, :cond_10
packed-switch p1, :pswitch_data_80
:pswitch_45
goto :goto_10
:pswitch_46
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v1
invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v0
sub-int v0, v1, v0
goto :goto_4
:pswitch_51
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v1
invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v0
add-int/2addr v0, v1
goto :goto_4
:pswitch_5b
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->h:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v0
goto :goto_4
:pswitch_data_62
.packed-switch 0x0
:pswitch_5
:pswitch_5b
:pswitch_5
.end packed-switch
:pswitch_data_76
.packed-switch 0x0
:pswitch_2e
:pswitch_2d
:pswitch_33
.end packed-switch
:pswitch_data_6c
.packed-switch 0x0
:pswitch_15
:pswitch_10
:pswitch_20
.end packed-switch
:pswitch_data_80
.packed-switch 0x0
:pswitch_46
:pswitch_45
:pswitch_51
.end packed-switch
.end method
.method private a(Landroid/view/MotionEvent;I)I
.registers 6
const/4 v2, -0x1
invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I
move-result v0
if-eq v0, v2, :cond_d
invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I
move-result v1
if-lt v0, v1, :cond_f
:cond_d
iput v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->c:I
:cond_f
return v0
.end method
.method static synthetic a(Lcom/slidingmenu/lib/CustomViewAbove;)Lcom/slidingmenu/lib/CustomViewBehind;
.registers 2
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->s:Lcom/slidingmenu/lib/CustomViewBehind;
return-object v0
.end method
.method private a(IZZ)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, p2, p3, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->a(IZZI)V
return-void
.end method
.method private a(IZZI)V
.registers 17
if-nez p3, :cond_b
iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->i:I
if-ne v0, p1, :cond_b
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->setScrollingCacheEnabled(Z)V
:cond_a
:goto_a
return-void
:cond_b
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->s:Lcom/slidingmenu/lib/CustomViewBehind;
const/4 v1, 0x1
if-le p1, v1, :cond_49
const/4 p1, 0x2
:cond_11
:goto_11
iget v1, v0, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
if-nez v1, :cond_4d
const/4 v1, 0x1
if-le p1, v1, :cond_4d
const/4 p1, 0x0
:goto_19
:cond_19
iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->i:I
if-eq v0, p1, :cond_56
const/4 v0, 0x1
:goto_1e
iput p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->i:I
iget v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->i:I
invoke-direct {p0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->a(I)I
move-result v3
if-eqz v0, :cond_31
iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->v:Lcom/slidingmenu/lib/c;
if-eqz v1, :cond_31
iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->v:Lcom/slidingmenu/lib/c;
invoke-interface {v1, p1}, Lcom/slidingmenu/lib/c;->a(I)V
:cond_31
if-eqz v0, :cond_3c
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->w:Lcom/slidingmenu/lib/c;
if-eqz v0, :cond_3c
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->w:Lcom/slidingmenu/lib/c;
invoke-interface {v0, p1}, Lcom/slidingmenu/lib/c;->a(I)V
:cond_3c
if-eqz p2, :cond_f0
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildCount()I
move-result v0
if-nez v0, :cond_58
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->setScrollingCacheEnabled(Z)V
goto :goto_a
:cond_49
if-gtz p1, :cond_11
const/4 p1, 0x0
goto :goto_11
:cond_4d
iget v0, v0, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
const/4 v1, 0x1
if-ne v0, v1, :cond_19
if-gtz p1, :cond_19
const/4 p1, 0x2
goto :goto_19
:cond_56
const/4 v0, 0x0
goto :goto_1e
:cond_58
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollX()I
move-result v1
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollY()I
move-result v2
sub-int/2addr v3, v1
rsub-int/lit8 v4, v2, 0x0
if-nez v3, :cond_84
if-nez v4, :cond_84
invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->c()V
invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->a()Z
move-result v0
if-eqz v0, :cond_7a
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->y:Lcom/slidingmenu/lib/k;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->y:Lcom/slidingmenu/lib/k;
invoke-interface {v0}, Lcom/slidingmenu/lib/k;->a()V
goto :goto_a
:cond_7a
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->x:Lcom/slidingmenu/lib/i;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->x:Lcom/slidingmenu/lib/i;
invoke-interface {v0}, Lcom/slidingmenu/lib/i;->a()V
goto :goto_a
:cond_84
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->setScrollingCacheEnabled(Z)V
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->a:Lcom/bbm/util/cr;
const/4 v5, 0x1
invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
invoke-virtual {v0, v5}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getBehindWidth()I
move-result v0
div-int/lit8 v5, v0, 0x2
const/high16 v6, 0x3f80
const/high16 v7, 0x3f80
invoke-static {v3}, Ljava/lang/Math;->abs(I)I
move-result v8
int-to-float v8, v8
mul-float/2addr v7, v8
int-to-float v8, v0
div-float/2addr v7, v8
invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F
move-result v6
int-to-float v7, v5
int-to-float v5, v5
const/high16 v8, 0x3f00
sub-float/2addr v6, v8
float-to-double v8, v6
const-wide v10, 0x3fde28c7460698c7L
mul-double/2addr v8, v10
double-to-float v6, v8
invoke-static {v6}, Landroid/util/FloatMath;->sin(F)F
move-result v6
mul-float/2addr v5, v6
add-float/2addr v5, v7
invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(I)I
move-result v6
if-lez v6, :cond_e0
const/high16 v0, 0x447a
int-to-float v6, v6
div-float/2addr v5, v6
invoke-static {v5}, Ljava/lang/Math;->abs(F)F
move-result v5
mul-float/2addr v0, v5
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
mul-int/lit8 v0, v0, 0x4
:goto_d0
const/16 v5, 0xc8
invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I
move-result v5
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->j:Landroid/widget/Scroller;
invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->invalidate()V
goto/16 :goto_a
:cond_e0
invoke-static {v3}, Ljava/lang/Math;->abs(I)I
move-result v5
int-to-float v5, v5
int-to-float v0, v0
div-float v0, v5, v0
const/high16 v5, 0x3f80
add-float/2addr v0, v5
const/high16 v5, 0x42c8
mul-float/2addr v0, v5
float-to-int v0, v0
goto :goto_d0
:cond_f0
invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->c()V
const/4 v0, 0x0
invoke-virtual {p0, v3, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V
goto/16 :goto_a
.end method
.method private a()Z
.registers 3
iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->i:I
if-eqz v0, :cond_9
iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->i:I
const/4 v1, 0x2
if-ne v0, v1, :cond_b
:cond_9
const/4 v0, 0x1
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method private a(Landroid/view/MotionEvent;)Z
.registers 10
const/4 v1, 0x1
const/4 v2, 0x0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
iget v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->C:F
add-float/2addr v0, v3
float-to-int v0, v0
invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->a()Z
move-result v3
if-eqz v3, :cond_25
iget-object v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->s:Lcom/slidingmenu/lib/CustomViewBehind;
iget-object v4, p0, Lcom/slidingmenu/lib/CustomViewAbove;->h:Landroid/view/View;
iget v5, p0, Lcom/slidingmenu/lib/CustomViewAbove;->i:I
int-to-float v0, v0
iget v6, v3, Lcom/slidingmenu/lib/CustomViewBehind;->a:I
packed-switch v6, :pswitch_data_aa
move v0, v2
:goto_1d
return v0
:pswitch_1e
move v0, v1
goto :goto_1d
:pswitch_20
invoke-virtual {v3, v4, v5, v0}, Lcom/slidingmenu/lib/CustomViewBehind;->a(Landroid/view/View;IF)Z
move-result v0
goto :goto_1d
:cond_25
iget v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->f:I
packed-switch v3, :pswitch_data_b2
move v0, v2
goto :goto_1d
:pswitch_2c
new-instance v3, Landroid/graphics/Rect;
invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->z:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_37
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_5b
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-virtual {v0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
float-to-int v0, v0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v5
float-to-int v5, v5
invoke-virtual {v3, v0, v5}, Landroid/graphics/Rect;->contains(II)Z
move-result v0
if-eqz v0, :cond_37
move v0, v1
:goto_57
if-nez v0, :cond_5d
move v0, v1
goto :goto_1d
:cond_5b
move v0, v2
goto :goto_57
:cond_5d
move v0, v2
goto :goto_1d
:pswitch_5f
move v0, v2
goto :goto_1d
:pswitch_61
iget-object v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->s:Lcom/slidingmenu/lib/CustomViewBehind;
iget-object v4, p0, Lcom/slidingmenu/lib/CustomViewAbove;->h:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getLeft()I
move-result v5
invoke-virtual {v4}, Landroid/view/View;->getRight()I
move-result v4
iget v6, v3, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
if-nez v6, :cond_7c
if-lt v0, v5, :cond_7a
iget v3, v3, Lcom/slidingmenu/lib/CustomViewBehind;->d:I
add-int/2addr v3, v5
if-gt v0, v3, :cond_7a
move v0, v1
goto :goto_1d
:cond_7a
move v0, v2
goto :goto_1d
:cond_7c
iget v6, v3, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
if-ne v6, v1, :cond_8c
if-gt v0, v4, :cond_8a
iget v3, v3, Lcom/slidingmenu/lib/CustomViewBehind;->d:I
sub-int v3, v4, v3
if-lt v0, v3, :cond_8a
move v0, v1
goto :goto_1d
:cond_8a
move v0, v2
goto :goto_1d
:cond_8c
iget v6, v3, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
const/4 v7, 0x2
if-ne v6, v7, :cond_a6
if-lt v0, v5, :cond_98
iget v6, v3, Lcom/slidingmenu/lib/CustomViewBehind;->d:I
add-int/2addr v5, v6
if-le v0, v5, :cond_a0
:cond_98
if-gt v0, v4, :cond_a3
iget v3, v3, Lcom/slidingmenu/lib/CustomViewBehind;->d:I
sub-int v3, v4, v3
if-lt v0, v3, :cond_a3
:cond_a0
move v0, v1
goto/16 :goto_1d
:cond_a3
move v0, v2
goto/16 :goto_1d
:cond_a6
move v0, v2
goto/16 :goto_1d
nop
:pswitch_data_aa
.packed-switch 0x0
:pswitch_20
:pswitch_1e
.end packed-switch
:pswitch_data_b2
.packed-switch 0x0
:pswitch_61
:pswitch_2c
:pswitch_5f
.end packed-switch
.end method
.method private b()V
.registers 2
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getWidth()I
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->v:Lcom/slidingmenu/lib/c;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->v:Lcom/slidingmenu/lib/c;
:cond_9
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->w:Lcom/slidingmenu/lib/c;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->w:Lcom/slidingmenu/lib/c;
:cond_f
return-void
.end method
.method private b(Landroid/view/MotionEvent;)V
.registers 12
const/4 v9, 0x2
const/4 v8, 0x0
const/4 v2, 0x0
const/4 v1, 0x1
iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->c:I
invoke-direct {p0, p1, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->a(Landroid/view/MotionEvent;I)I
move-result v0
iget v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->c:I
const/4 v4, -0x1
if-ne v3, v4, :cond_10
:cond_f
:goto_f
return-void
:cond_10
invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F
move-result v3
iget v4, p0, Lcom/slidingmenu/lib/CustomViewAbove;->o:F
sub-float v4, v3, v4
invoke-static {v4}, Ljava/lang/Math;->abs(F)F
move-result v5
invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F
move-result v6
iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->p:F
sub-float v0, v6, v0
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v7
invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->a()Z
move-result v0
if-eqz v0, :cond_5a
iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->m:I
div-int/lit8 v0, v0, 0x2
:goto_32
int-to-float v0, v0
cmpl-float v0, v5, v0
if-lez v0, :cond_95
cmpl-float v0, v5, v7
if-lez v0, :cond_95
invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->a()Z
move-result v0
if-eqz v0, :cond_73
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->s:Lcom/slidingmenu/lib/CustomViewBehind;
iget v7, v0, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
if-nez v7, :cond_5f
cmpg-float v0, v4, v8
if-gez v0, :cond_5d
move v0, v1
:goto_4c
if-eqz v0, :cond_95
iput-boolean v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->b:Z
iput-boolean v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->B:Z
iput v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->o:F
iput v6, p0, Lcom/slidingmenu/lib/CustomViewAbove;->p:F
invoke-direct {p0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->setScrollingCacheEnabled(Z)V
goto :goto_f
:cond_5a
iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->m:I
goto :goto_32
:cond_5d
move v0, v2
goto :goto_4c
:cond_5f
iget v7, v0, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
if-ne v7, v1, :cond_6b
cmpl-float v0, v4, v8
if-lez v0, :cond_69
move v0, v1
goto :goto_4c
:cond_69
move v0, v2
goto :goto_4c
:cond_6b
iget v0, v0, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
if-ne v0, v9, :cond_71
move v0, v1
goto :goto_4c
:cond_71
move v0, v2
goto :goto_4c
:cond_73
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->s:Lcom/slidingmenu/lib/CustomViewBehind;
iget v7, v0, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
if-nez v7, :cond_81
cmpl-float v0, v4, v8
if-lez v0, :cond_7f
move v0, v1
goto :goto_4c
:cond_7f
move v0, v2
goto :goto_4c
:cond_81
iget v7, v0, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
if-ne v7, v1, :cond_8d
cmpg-float v0, v4, v8
if-gez v0, :cond_8b
move v0, v1
goto :goto_4c
:cond_8b
move v0, v2
goto :goto_4c
:cond_8d
iget v0, v0, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
if-ne v0, v9, :cond_93
move v0, v1
goto :goto_4c
:cond_93
move v0, v2
goto :goto_4c
:cond_95
iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->m:I
int-to-float v0, v0
cmpl-float v0, v5, v0
if-lez v0, :cond_f
iput-boolean v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->l:Z
goto/16 :goto_f
.end method
.method private b(I)Z
.registers 8
const/16 v5, 0x42
const/16 v4, 0x11
const/4 v2, 0x0
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->findFocus()Landroid/view/View;
move-result-object v0
if-ne v0, p0, :cond_d
const/4 v0, 0x0
:cond_d
invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;
move-result-object v3
invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
move-result-object v3
if-eqz v3, :cond_3d
if-eq v3, v0, :cond_3d
if-ne p1, v4, :cond_2a
invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z
move-result v1
:goto_1f
move v2, v1
:goto_20
:cond_20
if-eqz v2, :cond_29
invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I
move-result v0
invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->playSoundEffect(I)V
:cond_29
return v2
:cond_2a
if-ne p1, v5, :cond_20
if-eqz v0, :cond_38
invoke-virtual {v3}, Landroid/view/View;->getLeft()I
move-result v4
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v0
if-le v4, v0, :cond_56
:cond_38
invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z
move-result v1
goto :goto_1f
:cond_3d
if-eq p1, v4, :cond_41
if-ne p1, v1, :cond_51
:cond_41
iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->i:I
if-lez v0, :cond_4f
iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->i:I
add-int/lit8 v0, v0, -0x1
invoke-virtual {p0, v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItem(IZ)V
move v0, v1
:goto_4d
move v2, v0
goto :goto_20
:cond_4f
move v0, v2
goto :goto_4d
:cond_51
if-eq p1, v5, :cond_56
const/4 v0, 0x2
if-ne p1, v0, :cond_20
:cond_56
iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->i:I
if-gtz v0, :cond_62
iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->i:I
add-int/lit8 v0, v0, 0x1
invoke-virtual {p0, v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItem(IZ)V
goto :goto_1f
:cond_62
move v1, v2
goto :goto_1f
.end method
.method private c()V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->a:Lcom/bbm/util/cr;
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_41
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->setScrollingCacheEnabled(Z)V
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->j:Landroid/widget/Scroller;
invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollX()I
move-result v0
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollY()I
move-result v1
iget-object v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->j:Landroid/widget/Scroller;
invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I
move-result v2
iget-object v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->j:Landroid/widget/Scroller;
invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I
move-result v3
if-ne v0, v2, :cond_2f
if-eq v1, v3, :cond_32
:cond_2f
invoke-virtual {p0, v2, v3}, Lcom/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V
:cond_32
invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->a()Z
move-result v0
if-eqz v0, :cond_4c
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->y:Lcom/slidingmenu/lib/k;
if-eqz v0, :cond_41
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->y:Lcom/slidingmenu/lib/k;
invoke-interface {v0}, Lcom/slidingmenu/lib/k;->a()V
:goto_41
:cond_41
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->a:Lcom/bbm/util/cr;
const/4 v1, 0x0
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V
:goto_4b
return-void
:cond_4c
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->x:Lcom/slidingmenu/lib/i;
if-eqz v0, :cond_41
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->x:Lcom/slidingmenu/lib/i;
invoke-interface {v0}, Lcom/slidingmenu/lib/i;->a()V
:try_end_55
.catch Lcom/bbm/j/z; {:try_start_0 .. :try_end_55} :catch_56
goto :goto_41
:catch_56
move-exception v0
goto :goto_4b
.end method
.method private c(Landroid/view/MotionEvent;)V
.registers 5
invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I
move-result v0
invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I
move-result v1
iget v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->c:I
if-ne v1, v2, :cond_2a
if-nez v0, :cond_2b
const/4 v0, 0x1
:goto_f
invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I
move-result v1
if-ge v0, v1, :cond_21
invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F
move-result v1
iput v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->o:F
invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I
move-result v0
iput v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->c:I
:cond_21
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->d:Landroid/view/VelocityTracker;
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->d:Landroid/view/VelocityTracker;
invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V
:cond_2a
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_f
.end method
.method private d()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->B:Z
iput-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->b:Z
iput-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->l:Z
const/4 v0, -0x1
iput v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->c:I
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->d:Landroid/view/VelocityTracker;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->d:Landroid/view/VelocityTracker;
invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->d:Landroid/view/VelocityTracker;
:cond_16
return-void
.end method
.method private getLeftBound()I
.registers 5
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->s:Lcom/slidingmenu/lib/CustomViewBehind;
iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->h:Landroid/view/View;
iget v2, v0, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
if-eqz v2, :cond_d
iget v2, v0, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
const/4 v3, 0x2
if-ne v2, v3, :cond_18
:cond_d
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v1
invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v0
sub-int v0, v1, v0
:goto_17
return v0
:cond_18
iget v0, v0, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
const/4 v2, 0x1
if-ne v0, v2, :cond_22
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v0
goto :goto_17
:cond_22
const/4 v0, 0x0
goto :goto_17
.end method
.method private getRightBound()I
.registers 5
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->s:Lcom/slidingmenu/lib/CustomViewBehind;
iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->h:Landroid/view/View;
iget v2, v0, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
if-nez v2, :cond_d
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v0
:goto_c
return v0
:cond_d
iget v2, v0, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
const/4 v3, 0x1
if-eq v2, v3, :cond_17
iget v2, v0, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
const/4 v3, 0x2
if-ne v2, v3, :cond_21
:cond_17
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v1
invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v0
add-int/2addr v0, v1
goto :goto_c
:cond_21
const/4 v0, 0x0
goto :goto_c
.end method
.method private setScrollingCacheEnabled(Z)V
.registers 3
iget-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->k:Z
if-eq v0, p1, :cond_6
iput-boolean p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->k:Z
:cond_6
return-void
.end method
.method public computeScroll()V
.registers 5
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->j:Landroid/widget/Scroller;
invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z
move-result v0
if-nez v0, :cond_32
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->j:Landroid/widget/Scroller;
invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z
move-result v0
if-eqz v0, :cond_32
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollX()I
move-result v0
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollY()I
move-result v1
iget-object v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->j:Landroid/widget/Scroller;
invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I
move-result v2
iget-object v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->j:Landroid/widget/Scroller;
invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I
move-result v3
if-ne v0, v2, :cond_28
if-eq v1, v3, :cond_2e
:cond_28
invoke-virtual {p0, v2, v3}, Lcom/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V
invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->b()V
:cond_2e
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->invalidate()V
:goto_31
return-void
:cond_32
invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->c()V
goto :goto_31
.end method
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
.registers 14
const/4 v11, 0x0
const/4 v10, 0x2
const/4 v2, 0x0
const/4 v9, 0x1
const/4 v6, 0x0
invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V
iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->s:Lcom/slidingmenu/lib/CustomViewBehind;
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->h:Landroid/view/View;
iget-object v3, v1, Lcom/slidingmenu/lib/CustomViewBehind;->i:Landroid/graphics/drawable/Drawable;
if-eqz v3, :cond_14
iget v3, v1, Lcom/slidingmenu/lib/CustomViewBehind;->k:I
if-gtz v3, :cond_aa
:cond_14
:goto_14
iget-object v7, p0, Lcom/slidingmenu/lib/CustomViewAbove;->s:Lcom/slidingmenu/lib/CustomViewBehind;
iget-object v8, p0, Lcom/slidingmenu/lib/CustomViewAbove;->h:Landroid/view/View;
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getPercentOpen()F
move-result v0
iget-boolean v1, v7, Lcom/slidingmenu/lib/CustomViewBehind;->f:Z
if-eqz v1, :cond_57
iget v1, v7, Lcom/slidingmenu/lib/CustomViewBehind;->l:F
const/high16 v3, 0x437f
mul-float/2addr v1, v3
const/high16 v3, 0x3f80
sub-float v0, v3, v0
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v0
mul-float/2addr v0, v1
float-to-int v0, v0
iget-object v1, v7, Lcom/slidingmenu/lib/CustomViewBehind;->g:Landroid/graphics/Paint;
invoke-static {v0, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I
move-result v0
invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V
iget v0, v7, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
if-nez v0, :cond_ee
invoke-virtual {v8}, Landroid/view/View;->getLeft()I
move-result v0
invoke-virtual {v7}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v1
sub-int v1, v0, v1
invoke-virtual {v8}, Landroid/view/View;->getLeft()I
move-result v0
:goto_4a
int-to-float v1, v1
int-to-float v3, v0
invoke-virtual {v7}, Lcom/slidingmenu/lib/CustomViewBehind;->getHeight()I
move-result v0
int-to-float v4, v0
iget-object v5, v7, Lcom/slidingmenu/lib/CustomViewBehind;->g:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
:cond_57
iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->s:Lcom/slidingmenu/lib/CustomViewBehind;
iget-object v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->h:Landroid/view/View;
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getPercentOpen()F
move-result v3
iget-boolean v0, v1, Lcom/slidingmenu/lib/CustomViewBehind;->m:Z
if-eqz v0, :cond_a9
iget-object v0, v1, Lcom/slidingmenu/lib/CustomViewBehind;->n:Landroid/graphics/Bitmap;
if-eqz v0, :cond_a9
iget-object v0, v1, Lcom/slidingmenu/lib/CustomViewBehind;->o:Landroid/view/View;
if-eqz v0, :cond_a9
iget-object v0, v1, Lcom/slidingmenu/lib/CustomViewBehind;->o:Landroid/view/View;
const v4, 0x7f0a0029
invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v4, "CustomViewBehindSelectedView"
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_a9
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
iget-object v0, v1, Lcom/slidingmenu/lib/CustomViewBehind;->n:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v0
int-to-float v0, v0
mul-float/2addr v0, v3
float-to-int v0, v0
iget v3, v1, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
if-nez v3, :cond_12e
invoke-virtual {v2}, Landroid/view/View;->getLeft()I
move-result v2
sub-int v0, v2, v0
invoke-virtual {v1}, Lcom/slidingmenu/lib/CustomViewBehind;->getHeight()I
move-result v3
invoke-virtual {p1, v0, v6, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z
iget-object v2, v1, Lcom/slidingmenu/lib/CustomViewBehind;->n:Landroid/graphics/Bitmap;
int-to-float v0, v0
invoke-virtual {v1}, Lcom/slidingmenu/lib/CustomViewBehind;->getSelectorTop()I
move-result v1
int-to-float v1, v1
invoke-virtual {p1, v2, v0, v1, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
:goto_a6
:cond_a6
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
:cond_a9
return-void
:cond_aa
iget v3, v1, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
if-eqz v3, :cond_e6
iget v3, v1, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
if-ne v3, v9, :cond_c9
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v0
:goto_b6
iget-object v3, v1, Lcom/slidingmenu/lib/CustomViewBehind;->i:Landroid/graphics/drawable/Drawable;
iget v4, v1, Lcom/slidingmenu/lib/CustomViewBehind;->k:I
add-int/2addr v4, v0
invoke-virtual {v1}, Lcom/slidingmenu/lib/CustomViewBehind;->getHeight()I
move-result v5
invoke-virtual {v3, v0, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v0, v1, Lcom/slidingmenu/lib/CustomViewBehind;->i:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
goto/16 :goto_14
:cond_c9
iget v3, v1, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
if-ne v3, v10, :cond_156
iget-object v3, v1, Lcom/slidingmenu/lib/CustomViewBehind;->j:Landroid/graphics/drawable/Drawable;
if-eqz v3, :cond_e6
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v3
iget-object v4, v1, Lcom/slidingmenu/lib/CustomViewBehind;->j:Landroid/graphics/drawable/Drawable;
iget v5, v1, Lcom/slidingmenu/lib/CustomViewBehind;->k:I
add-int/2addr v5, v3
invoke-virtual {v1}, Lcom/slidingmenu/lib/CustomViewBehind;->getHeight()I
move-result v7
invoke-virtual {v4, v3, v6, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v3, v1, Lcom/slidingmenu/lib/CustomViewBehind;->j:Landroid/graphics/drawable/Drawable;
invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
:cond_e6
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v0
iget v3, v1, Lcom/slidingmenu/lib/CustomViewBehind;->k:I
sub-int/2addr v0, v3
goto :goto_b6
:cond_ee
iget v0, v7, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
if-ne v0, v9, :cond_101
invoke-virtual {v8}, Landroid/view/View;->getRight()I
move-result v1
invoke-virtual {v8}, Landroid/view/View;->getRight()I
move-result v0
invoke-virtual {v7}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v3
add-int/2addr v0, v3
goto/16 :goto_4a
:cond_101
iget v0, v7, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
if-ne v0, v10, :cond_152
invoke-virtual {v8}, Landroid/view/View;->getLeft()I
move-result v0
invoke-virtual {v7}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v1
sub-int/2addr v0, v1
invoke-virtual {v8}, Landroid/view/View;->getLeft()I
move-result v3
int-to-float v1, v0
int-to-float v3, v3
invoke-virtual {v7}, Lcom/slidingmenu/lib/CustomViewBehind;->getHeight()I
move-result v0
int-to-float v4, v0
iget-object v5, v7, Lcom/slidingmenu/lib/CustomViewBehind;->g:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
invoke-virtual {v8}, Landroid/view/View;->getRight()I
move-result v1
invoke-virtual {v8}, Landroid/view/View;->getRight()I
move-result v0
invoke-virtual {v7}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v3
add-int/2addr v0, v3
goto/16 :goto_4a
:cond_12e
iget v3, v1, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
if-ne v3, v9, :cond_a6
invoke-virtual {v2}, Landroid/view/View;->getRight()I
move-result v2
add-int/2addr v0, v2
invoke-virtual {v1}, Lcom/slidingmenu/lib/CustomViewBehind;->getHeight()I
move-result v3
invoke-virtual {p1, v2, v6, v0, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z
iget-object v2, v1, Lcom/slidingmenu/lib/CustomViewBehind;->n:Landroid/graphics/Bitmap;
iget-object v3, v1, Lcom/slidingmenu/lib/CustomViewBehind;->n:Landroid/graphics/Bitmap;
invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
sub-int/2addr v0, v3
int-to-float v0, v0
invoke-virtual {v1}, Lcom/slidingmenu/lib/CustomViewBehind;->getSelectorTop()I
move-result v1
int-to-float v1, v1
invoke-virtual {p1, v2, v0, v1, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
goto/16 :goto_a6
:cond_152
move v0, v6
move v1, v6
goto/16 :goto_4a
:cond_156
move v0, v6
goto/16 :goto_b6
.end method
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.registers 5
const/4 v0, 0x0
const/4 v1, 0x1
invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
move-result v2
if-nez v2, :cond_18
invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I
move-result v2
if-nez v2, :cond_15
invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I
move-result v2
sparse-switch v2, :sswitch_data_40
:cond_15
move v2, v0
:goto_16
if-eqz v2, :cond_19
:cond_18
move v0, v1
:cond_19
return v0
:sswitch_1a
const/16 v2, 0x11
invoke-direct {p0, v2}, Lcom/slidingmenu/lib/CustomViewAbove;->b(I)Z
move-result v2
goto :goto_16
:sswitch_21
const/16 v2, 0x42
invoke-direct {p0, v2}, Lcom/slidingmenu/lib/CustomViewAbove;->b(I)Z
move-result v2
goto :goto_16
:sswitch_28
invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z
move-result v2
if-eqz v2, :cond_34
const/4 v2, 0x2
invoke-direct {p0, v2}, Lcom/slidingmenu/lib/CustomViewAbove;->b(I)Z
move-result v2
goto :goto_16
:cond_34
invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z
move-result v2
if-eqz v2, :cond_15
invoke-direct {p0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->b(I)Z
move-result v2
goto :goto_16
nop
:sswitch_data_40
.sparse-switch
0x15 -> :sswitch_1a
0x16 -> :sswitch_21
0x3d -> :sswitch_28
.end sparse-switch
.end method
.method public getBehindWidth()I
.registers 2
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->s:Lcom/slidingmenu/lib/CustomViewBehind;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->s:Lcom/slidingmenu/lib/CustomViewBehind;
invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v0
goto :goto_5
.end method
.method public getContent()Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->h:Landroid/view/View;
return-object v0
.end method
.method public getContentLeft()I
.registers 3
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->h:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v0
iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->h:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public getCurrentItem()I
.registers 2
iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->i:I
return v0
.end method
.method protected getPercentOpen()F
.registers 3
iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->C:F
iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->h:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v1
int-to-float v1, v1
sub-float/2addr v0, v1
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v0
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getBehindWidth()I
move-result v1
int-to-float v1, v1
div-float/2addr v0, v1
return v0
.end method
.method public getTouchMode()I
.registers 2
iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->f:I
return v0
.end method
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.registers 9
const/4 v1, 0x1
const/4 v0, 0x0
iget-boolean v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->t:Z
if-eqz v2, :cond_a
iget-boolean v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->u:Z
if-nez v2, :cond_b
:cond_a
:goto_a
return v0
:cond_b
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v2
and-int/lit16 v2, v2, 0xff
const/4 v3, 0x3
if-eq v2, v3, :cond_1c
if-eq v2, v1, :cond_1c
if-eqz v2, :cond_20
iget-boolean v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->l:Z
if-eqz v3, :cond_20
:cond_1c
invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->d()V
goto :goto_a
:cond_20
sparse-switch v2, :sswitch_data_8e
:goto_23
:cond_23
iget-boolean v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->b:Z
if-nez v2, :cond_36
iget-object v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->d:Landroid/view/VelocityTracker;
if-nez v2, :cond_31
invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
move-result-object v2
iput-object v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->d:Landroid/view/VelocityTracker;
:cond_31
iget-object v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->d:Landroid/view/VelocityTracker;
invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
:cond_36
iget-boolean v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->b:Z
if-nez v2, :cond_3e
iget-boolean v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->B:Z
if-eqz v2, :cond_a
:cond_3e
move v0, v1
goto :goto_a
:sswitch_40
invoke-direct {p0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->b(Landroid/view/MotionEvent;)V
goto :goto_23
:sswitch_44
invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I
move-result v2
invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I
move-result v3
iput v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->c:I
iget v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->c:I
const/4 v4, -0x1
if-eq v3, v4, :cond_23
invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F
move-result v3
iput v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->n:F
iput v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->o:F
invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F
move-result v2
iput v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->p:F
invoke-direct {p0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->a(Landroid/view/MotionEvent;)Z
move-result v2
if-eqz v2, :cond_87
iput-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->b:Z
iput-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->l:Z
invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->a()Z
move-result v2
if-eqz v2, :cond_23
iget-object v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->s:Lcom/slidingmenu/lib/CustomViewBehind;
iget-object v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->h:Landroid/view/View;
iget v4, p0, Lcom/slidingmenu/lib/CustomViewAbove;->i:I
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v5
iget v6, p0, Lcom/slidingmenu/lib/CustomViewAbove;->C:F
add-float/2addr v5, v6
invoke-virtual {v2, v3, v4, v5}, Lcom/slidingmenu/lib/CustomViewBehind;->a(Landroid/view/View;IF)Z
move-result v2
if-eqz v2, :cond_23
iput-boolean v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->B:Z
goto :goto_23
:cond_87
iput-boolean v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->l:Z
goto :goto_23
:sswitch_8a
invoke-direct {p0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->c(Landroid/view/MotionEvent;)V
goto :goto_23
:sswitch_data_8e
.sparse-switch
0x0 -> :sswitch_44
0x2 -> :sswitch_40
0x6 -> :sswitch_8a
.end sparse-switch
.end method
.method protected onLayout(ZIIII)V
.registers 10
const/4 v3, 0x0
sub-int v0, p4, p2
sub-int v1, p5, p3
iget-object v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->h:Landroid/view/View;
invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V
return-void
.end method
.method protected onMeasure(II)V
.registers 6
const/4 v2, 0x0
invoke-static {v2, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->getDefaultSize(II)I
move-result v0
invoke-static {v2, p2}, Lcom/slidingmenu/lib/CustomViewAbove;->getDefaultSize(II)I
move-result v1
invoke-virtual {p0, v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->setMeasuredDimension(II)V
invoke-static {p1, v2, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildMeasureSpec(III)I
move-result v0
invoke-static {p2, v2, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->getChildMeasureSpec(III)I
move-result v1
iget-object v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->h:Landroid/view/View;
invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V
return-void
.end method
.method protected onSizeChanged(IIII)V
.registers 7
invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V
if-eq p1, p3, :cond_15
invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->c()V
iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->i:I
invoke-direct {p0, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->a(I)I
move-result v0
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollY()I
move-result v1
invoke-virtual {p0, v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V
:cond_15
return-void
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 10
const/4 v3, 0x0
const/4 v7, -0x1
const/4 v4, 0x1
iget-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->t:Z
if-nez v0, :cond_9
move v0, v3
:goto_8
return v0
:cond_9
iget-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->b:Z
if-nez v0, :cond_15
invoke-direct {p0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->a(Landroid/view/MotionEvent;)Z
move-result v0
if-nez v0, :cond_15
move v0, v3
goto :goto_8
:cond_15
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->d:Landroid/view/VelocityTracker;
if-nez v1, :cond_23
invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
move-result-object v1
iput-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->d:Landroid/view/VelocityTracker;
:cond_23
iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->d:Landroid/view/VelocityTracker;
invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
and-int/lit16 v0, v0, 0xff
packed-switch v0, :pswitch_data_194
:goto_2d
:cond_2d
:pswitch_2d
move v0, v4
goto :goto_8
:pswitch_2f
invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->c()V
invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I
move-result v0
invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I
move-result v0
iput v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->c:I
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
iput v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->n:F
iput v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->o:F
goto :goto_2d
:pswitch_45
iget-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->b:Z
if-nez v0, :cond_52
invoke-direct {p0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->b(Landroid/view/MotionEvent;)V
iget-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->l:Z
if-eqz v0, :cond_52
move v0, v3
goto :goto_8
:cond_52
iget-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->b:Z
if-eqz v0, :cond_2d
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->s:Lcom/slidingmenu/lib/CustomViewBehind;
invoke-virtual {v0, v4}, Lcom/slidingmenu/lib/CustomViewBehind;->setMenuVisible(Z)V
iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->c:I
invoke-direct {p0, p1, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->a(Landroid/view/MotionEvent;I)I
move-result v0
iget v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->c:I
if-eq v1, v7, :cond_2d
invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F
move-result v0
iget v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->o:F
sub-float/2addr v1, v0
iput v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->o:F
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollX()I
move-result v0
int-to-float v5, v0
add-float v2, v5, v1
invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getLeftBound()I
move-result v0
int-to-float v0, v0
invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getRightBound()I
move-result v1
int-to-float v1, v1
cmpg-float v6, v2, v0
if-gez v6, :cond_a0
:goto_83
iput-boolean v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->A:Z
cmpg-float v1, v0, v5
if-gez v1, :cond_a6
iput-boolean v4, p0, Lcom/slidingmenu/lib/CustomViewAbove;->A:Z
iget v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->o:F
float-to-int v2, v0
int-to-float v2, v2
sub-float v2, v0, v2
add-float/2addr v1, v2
iput v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->o:F
float-to-int v0, v0
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollY()I
move-result v1
invoke-virtual {p0, v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V
invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->b()V
goto :goto_2d
:cond_a0
cmpl-float v0, v2, v1
if-lez v0, :cond_190
move v0, v1
goto :goto_83
:cond_a6
const/4 v1, 0x0
cmpg-float v1, v0, v1
if-gez v1, :cond_2d
float-to-int v0, v0
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollY()I
move-result v1
invoke-virtual {p0, v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->scrollTo(II)V
invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->b()V
goto/16 :goto_2d
:pswitch_b8
iget-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->b:Z
if-eqz v0, :cond_13a
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->d:Landroid/view/VelocityTracker;
const/16 v1, 0x3e8
iget v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->e:I
int-to-float v2, v2
invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V
iget v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->c:I
invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F
move-result v0
float-to-int v1, v0
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getScrollX()I
move-result v0
iget v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->i:I
invoke-direct {p0, v2}, Lcom/slidingmenu/lib/CustomViewAbove;->a(I)I
move-result v2
sub-int/2addr v0, v2
int-to-float v0, v0
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getBehindWidth()I
move-result v2
int-to-float v2, v2
div-float v2, v0, v2
iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->c:I
invoke-direct {p0, p1, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->a(Landroid/view/MotionEvent;I)I
move-result v0
iget v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->c:I
if-eq v3, v7, :cond_134
invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F
move-result v0
iget v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->n:F
sub-float/2addr v0, v3
float-to-int v3, v0
iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->i:I
invoke-static {v3}, Ljava/lang/Math;->abs(I)I
move-result v5
iget v6, p0, Lcom/slidingmenu/lib/CustomViewAbove;->r:I
if-le v5, v6, :cond_125
invoke-static {v1}, Ljava/lang/Math;->abs(I)I
move-result v5
iget v6, p0, Lcom/slidingmenu/lib/CustomViewAbove;->q:I
if-le v5, v6, :cond_125
if-lez v1, :cond_11e
if-lez v3, :cond_11e
add-int/lit8 v0, v0, -0x1
:cond_10a
:goto_10a
iget-boolean v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->A:Z
if-nez v2, :cond_114
invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->a()Z
move-result v2
if-eqz v2, :cond_12e
:cond_114
invoke-direct {p0, v0, v4, v4, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->a(IZZI)V
:goto_117
iput v7, p0, Lcom/slidingmenu/lib/CustomViewAbove;->c:I
invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->d()V
goto/16 :goto_2d
:cond_11e
if-gez v1, :cond_10a
if-gez v3, :cond_10a
add-int/lit8 v0, v0, 0x1
goto :goto_10a
:cond_125
iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->i:I
int-to-float v0, v0
add-float/2addr v0, v2
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
goto :goto_10a
:cond_12e
iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->i:I
invoke-direct {p0, v0, v4, v4, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->a(IZZI)V
goto :goto_117
:cond_134
iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->i:I
invoke-direct {p0, v0, v4, v4, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->a(IZZI)V
goto :goto_117
:cond_13a
iget-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->B:Z
if-eqz v0, :cond_2d
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->s:Lcom/slidingmenu/lib/CustomViewBehind;
iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->h:Landroid/view/View;
iget v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->i:I
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v3
iget v5, p0, Lcom/slidingmenu/lib/CustomViewAbove;->C:F
add-float/2addr v3, v5
invoke-virtual {v0, v1, v2, v3}, Lcom/slidingmenu/lib/CustomViewBehind;->a(Landroid/view/View;IF)Z
move-result v0
if-eqz v0, :cond_2d
invoke-virtual {p0, v4}, Lcom/slidingmenu/lib/CustomViewAbove;->setCurrentItem(I)V
invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->d()V
goto/16 :goto_2d
:pswitch_159
iget-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->b:Z
if-eqz v0, :cond_2d
iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->i:I
invoke-direct {p0, v0, v4, v4}, Lcom/slidingmenu/lib/CustomViewAbove;->a(IZZ)V
iput v7, p0, Lcom/slidingmenu/lib/CustomViewAbove;->c:I
invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->d()V
goto/16 :goto_2d
:pswitch_169
invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I
move-result v0
invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F
move-result v1
iput v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->o:F
invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I
move-result v0
iput v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->c:I
goto/16 :goto_2d
:pswitch_17b
invoke-direct {p0, p1}, Lcom/slidingmenu/lib/CustomViewAbove;->c(Landroid/view/MotionEvent;)V
iget v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->c:I
invoke-direct {p0, p1, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->a(Landroid/view/MotionEvent;I)I
move-result v0
iget v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->c:I
if-eq v1, v7, :cond_2d
invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F
move-result v0
iput v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->o:F
goto/16 :goto_2d
:cond_190
move v0, v2
goto/16 :goto_83
nop
:pswitch_data_194
.packed-switch 0x0
:pswitch_2f
:pswitch_b8
:pswitch_45
:pswitch_159
:pswitch_2d
:pswitch_169
:pswitch_17b
.end packed-switch
.end method
.method public scrollTo(II)V
.registers 12
const/4 v3, 0x2
const/4 v4, 0x1
const/4 v1, 0x4
const/4 v2, 0x0
invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V
int-to-float v0, p1
iput v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->C:F
iget-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->t:Z
if-eqz v0, :cond_36
iget-object v5, p0, Lcom/slidingmenu/lib/CustomViewAbove;->s:Lcom/slidingmenu/lib/CustomViewBehind;
iget-object v6, p0, Lcom/slidingmenu/lib/CustomViewAbove;->h:Landroid/view/View;
iget v0, v5, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
if-nez v0, :cond_6a
invoke-virtual {v6}, Landroid/view/View;->getLeft()I
move-result v0
if-lt p1, v0, :cond_ec
move v0, v1
:goto_1d
invoke-virtual {v5}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v6
add-int/2addr v6, p1
int-to-float v6, v6
iget v7, v5, Lcom/slidingmenu/lib/CustomViewBehind;->h:F
mul-float/2addr v6, v7
float-to-int v6, v6
invoke-virtual {v5, v6, p2}, Lcom/slidingmenu/lib/CustomViewBehind;->scrollTo(II)V
:goto_2a
if-ne v0, v1, :cond_33
const-string v1, "CustomViewBehind"
const-string v6, "behind INVISIBLE"
invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_33
invoke-virtual {v5, v0}, Lcom/slidingmenu/lib/CustomViewBehind;->setVisibility(I)V
:cond_36
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewAbove;->getPercentOpen()F
move-result v1
sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v6, 0xb
if-lt v5, v6, :cond_69
const/4 v5, 0x0
cmpl-float v5, v1, v5
if-lez v5, :cond_e4
const/high16 v5, 0x3f80
cmpg-float v1, v1, v5
if-gez v1, :cond_e4
move v1, v4
:goto_52
if-eqz v1, :cond_55
move v2, v3
:cond_55
invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->getContent()Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getLayerType()I
move-result v1
if-eq v2, v1, :cond_69
iget-object v1, v0, Lcom/slidingmenu/lib/SlidingMenu;->b:Landroid/os/Handler;
new-instance v3, Lcom/slidingmenu/lib/f;
invoke-direct {v3, v0, v2}, Lcom/slidingmenu/lib/f;-><init>(Lcom/slidingmenu/lib/SlidingMenu;I)V
invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_69
return-void
:cond_6a
iget v0, v5, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
if-ne v0, v4, :cond_8f
invoke-virtual {v6}, Landroid/view/View;->getLeft()I
move-result v0
if-gt p1, v0, :cond_ea
move v0, v1
:goto_75
invoke-virtual {v5}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v6
invoke-virtual {v5}, Lcom/slidingmenu/lib/CustomViewBehind;->getWidth()I
move-result v7
sub-int/2addr v6, v7
int-to-float v6, v6
invoke-virtual {v5}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v7
sub-int v7, p1, v7
int-to-float v7, v7
iget v8, v5, Lcom/slidingmenu/lib/CustomViewBehind;->h:F
mul-float/2addr v7, v8
add-float/2addr v6, v7
float-to-int v6, v6
invoke-virtual {v5, v6, p2}, Lcom/slidingmenu/lib/CustomViewBehind;->scrollTo(II)V
goto :goto_2a
:cond_8f
iget v0, v5, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
if-ne v0, v3, :cond_e7
iget-object v7, v5, Lcom/slidingmenu/lib/CustomViewBehind;->b:Landroid/view/View;
invoke-virtual {v6}, Landroid/view/View;->getLeft()I
move-result v0
if-lt p1, v0, :cond_c3
move v0, v1
:goto_9c
invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V
iget-object v7, v5, Lcom/slidingmenu/lib/CustomViewBehind;->c:Landroid/view/View;
invoke-virtual {v6}, Landroid/view/View;->getLeft()I
move-result v0
if-gt p1, v0, :cond_c5
move v0, v1
:goto_a8
invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V
if-nez p1, :cond_c7
move v0, v1
:goto_ae
invoke-virtual {v6}, Landroid/view/View;->getLeft()I
move-result v6
if-gt p1, v6, :cond_c9
invoke-virtual {v5}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v6
add-int/2addr v6, p1
int-to-float v6, v6
iget v7, v5, Lcom/slidingmenu/lib/CustomViewBehind;->h:F
mul-float/2addr v6, v7
float-to-int v6, v6
invoke-virtual {v5, v6, p2}, Lcom/slidingmenu/lib/CustomViewBehind;->scrollTo(II)V
goto/16 :goto_2a
:cond_c3
move v0, v2
goto :goto_9c
:cond_c5
move v0, v2
goto :goto_a8
:cond_c7
move v0, v2
goto :goto_ae
:cond_c9
invoke-virtual {v5}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v6
invoke-virtual {v5}, Lcom/slidingmenu/lib/CustomViewBehind;->getWidth()I
move-result v7
sub-int/2addr v6, v7
int-to-float v6, v6
invoke-virtual {v5}, Lcom/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v7
sub-int v7, p1, v7
int-to-float v7, v7
iget v8, v5, Lcom/slidingmenu/lib/CustomViewBehind;->h:F
mul-float/2addr v7, v8
add-float/2addr v6, v7
float-to-int v6, v6
invoke-virtual {v5, v6, p2}, Lcom/slidingmenu/lib/CustomViewBehind;->scrollTo(II)V
goto/16 :goto_2a
:cond_e4
move v1, v2
goto/16 :goto_52
:cond_e7
move v0, v2
goto/16 :goto_2a
:cond_ea
move v0, v2
goto :goto_75
:cond_ec
move v0, v2
goto/16 :goto_1d
.end method
.method public setAboveOffset(I)V
.registers 6
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->h:Landroid/view/View;
iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->h:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I
move-result v1
iget-object v2, p0, Lcom/slidingmenu/lib/CustomViewAbove;->h:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I
move-result v2
iget-object v3, p0, Lcom/slidingmenu/lib/CustomViewAbove;->h:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I
move-result v3
invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V
return-void
.end method
.method public setContent(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->h:Landroid/view/View;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->h:Landroid/view/View;
invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->removeView(Landroid/view/View;)V
:cond_9
iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->h:Landroid/view/View;
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove;->h:Landroid/view/View;
invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->addView(Landroid/view/View;)V
return-void
.end method
.method public setCurrentItem(I)V
.registers 4
const/4 v0, 0x1
const/4 v1, 0x0
invoke-direct {p0, p1, v0, v1}, Lcom/slidingmenu/lib/CustomViewAbove;->a(IZZ)V
return-void
.end method
.method public setCurrentItem(IZ)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/slidingmenu/lib/CustomViewAbove;->a(IZZ)V
return-void
.end method
.method public setCustomViewBehind(Lcom/slidingmenu/lib/CustomViewBehind;)V
.registers 2
iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->s:Lcom/slidingmenu/lib/CustomViewBehind;
return-void
.end method
.method public setInterceptEnabled(Z)V
.registers 2
iput-boolean p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->u:Z
return-void
.end method
.method public setOnClosedListener(Lcom/slidingmenu/lib/i;)V
.registers 2
iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->x:Lcom/slidingmenu/lib/i;
return-void
.end method
.method public setOnOpenedListener(Lcom/slidingmenu/lib/k;)V
.registers 2
iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->y:Lcom/slidingmenu/lib/k;
return-void
.end method
.method public setOnPageChangeListener(Lcom/slidingmenu/lib/c;)V
.registers 2
iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->v:Lcom/slidingmenu/lib/c;
return-void
.end method
.method public setSlidingEnabled(Z)V
.registers 2
iput-boolean p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->t:Z
return-void
.end method
.method public setTouchMode(I)V
.registers 2
iput p1, p0, Lcom/slidingmenu/lib/CustomViewAbove;->f:I
return-void
.end method