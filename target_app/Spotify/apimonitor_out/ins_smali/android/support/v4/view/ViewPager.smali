.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "SourceFile"
.field private static final a:[I
.field private static final ae:Landroid/support/v4/view/bv;
.field private static final c:Ljava/util/Comparator;
.field private static final d:Landroid/view/animation/Interpolator;
.field private A:Z
.field private B:Z
.field private C:I
.field private D:I
.field private E:I
.field private F:F
.field private G:F
.field private H:F
.field private I:F
.field private J:I
.field private K:Landroid/view/VelocityTracker;
.field private L:I
.field private M:I
.field private N:I
.field private O:I
.field private P:Z
.field private Q:Landroid/support/v4/widget/i;
.field private R:Landroid/support/v4/widget/i;
.field private S:Z
.field private T:Z
.field private U:Z
.field private V:I
.field private W:Landroid/support/v4/view/br;
.field private Z:Landroid/support/v4/view/br;
.field private aa:Landroid/support/v4/view/bq;
.field private ab:Landroid/support/v4/view/bs;
.field private ac:I
.field private ad:Ljava/util/ArrayList;
.field private final af:Ljava/lang/Runnable;
.field private ag:I
.field private b:I
.field private final e:Ljava/util/ArrayList;
.field private final f:Landroid/support/v4/view/bo;
.field private final g:Landroid/graphics/Rect;
.field private h:Landroid/support/v4/view/ah;
.field private i:I
.field private j:I
.field private k:Landroid/os/Parcelable;
.field private l:Ljava/lang/ClassLoader;
.field private m:Landroid/widget/Scroller;
.field private n:Landroid/support/v4/view/bt;
.field private o:I
.field private p:Landroid/graphics/drawable/Drawable;
.field private q:I
.field private r:I
.field private s:F
.field private t:F
.field private u:I
.field private v:I
.field private w:Z
.field private x:Z
.field private y:Z
.field private z:I
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x1
new-array v0, v0, [I
const/4 v1, 0x0
const v2, 0x10100b3
aput v2, v0, v1
sput-object v0, Landroid/support/v4/view/ViewPager;->a:[I
new-instance v0, Landroid/support/v4/view/ViewPager$1;
invoke-direct {v0}, Landroid/support/v4/view/ViewPager$1;-><init>()V
sput-object v0, Landroid/support/v4/view/ViewPager;->c:Ljava/util/Comparator;
new-instance v0, Landroid/support/v4/view/ViewPager$2;
invoke-direct {v0}, Landroid/support/v4/view/ViewPager$2;-><init>()V
sput-object v0, Landroid/support/v4/view/ViewPager;->d:Landroid/view/animation/Interpolator;
new-instance v0, Landroid/support/v4/view/bv;
invoke-direct {v0}, Landroid/support/v4/view/bv;-><init>()V
sput-object v0, Landroid/support/v4/view/ViewPager;->ae:Landroid/support/v4/view/bv;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 7
const/4 v4, 0x0
const/4 v3, 0x1
const/4 v2, 0x0
const/4 v1, -0x1
invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
new-instance v0, Landroid/support/v4/view/bo;
invoke-direct {v0}, Landroid/support/v4/view/bo;-><init>()V
iput-object v0, p0, Landroid/support/v4/view/ViewPager;->f:Landroid/support/v4/view/bo;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/graphics/Rect;
iput v1, p0, Landroid/support/v4/view/ViewPager;->j:I
iput-object v4, p0, Landroid/support/v4/view/ViewPager;->k:Landroid/os/Parcelable;
iput-object v4, p0, Landroid/support/v4/view/ViewPager;->l:Ljava/lang/ClassLoader;
const v0, -0x800001
iput v0, p0, Landroid/support/v4/view/ViewPager;->s:F
const v0, 0x7f7fffff
iput v0, p0, Landroid/support/v4/view/ViewPager;->t:F
iput v3, p0, Landroid/support/v4/view/ViewPager;->z:I
iput v1, p0, Landroid/support/v4/view/ViewPager;->J:I
iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->S:Z
iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->T:Z
new-instance v0, Landroid/support/v4/view/ViewPager$3;
invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager$3;-><init>(Landroid/support/v4/view/ViewPager;)V
iput-object v0, p0, Landroid/support/v4/view/ViewPager;->af:Ljava/lang/Runnable;
iput v2, p0, Landroid/support/v4/view/ViewPager;->ag:I
invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->f()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 8
const/4 v4, 0x0
const/4 v3, 0x1
const/4 v2, 0x0
const/4 v1, -0x1
invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
new-instance v0, Landroid/support/v4/view/bo;
invoke-direct {v0}, Landroid/support/v4/view/bo;-><init>()V
iput-object v0, p0, Landroid/support/v4/view/ViewPager;->f:Landroid/support/v4/view/bo;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/graphics/Rect;
iput v1, p0, Landroid/support/v4/view/ViewPager;->j:I
iput-object v4, p0, Landroid/support/v4/view/ViewPager;->k:Landroid/os/Parcelable;
iput-object v4, p0, Landroid/support/v4/view/ViewPager;->l:Ljava/lang/ClassLoader;
const v0, -0x800001
iput v0, p0, Landroid/support/v4/view/ViewPager;->s:F
const v0, 0x7f7fffff
iput v0, p0, Landroid/support/v4/view/ViewPager;->t:F
iput v3, p0, Landroid/support/v4/view/ViewPager;->z:I
iput v1, p0, Landroid/support/v4/view/ViewPager;->J:I
iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->S:Z
iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->T:Z
new-instance v0, Landroid/support/v4/view/ViewPager$3;
invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager$3;-><init>(Landroid/support/v4/view/ViewPager;)V
iput-object v0, p0, Landroid/support/v4/view/ViewPager;->af:Ljava/lang/Runnable;
iput v2, p0, Landroid/support/v4/view/ViewPager;->ag:I
invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->f()V
return-void
.end method
.method private a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
.registers 7
const/4 v0, 0x0
if-nez p1, :cond_5e
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
:goto_8
if-nez p2, :cond_f
invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V
move-object v0, v1
:goto_e
return-object v0
:cond_f
invoke-virtual {p2}, Landroid/view/View;->getLeft()I
move-result v0
iput v0, v1, Landroid/graphics/Rect;->left:I
invoke-virtual {p2}, Landroid/view/View;->getRight()I
move-result v0
iput v0, v1, Landroid/graphics/Rect;->right:I
invoke-virtual {p2}, Landroid/view/View;->getTop()I
move-result v0
iput v0, v1, Landroid/graphics/Rect;->top:I
invoke-virtual {p2}, Landroid/view/View;->getBottom()I
move-result v0
iput v0, v1, Landroid/graphics/Rect;->bottom:I
invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
:goto_2b
instance-of v2, v0, Landroid/view/ViewGroup;
if-eqz v2, :cond_5c
if-eq v0, p0, :cond_5c
check-cast v0, Landroid/view/ViewGroup;
iget v2, v1, Landroid/graphics/Rect;->left:I
invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I
move-result v3
add-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->left:I
iget v2, v1, Landroid/graphics/Rect;->right:I
invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I
move-result v3
add-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->right:I
iget v2, v1, Landroid/graphics/Rect;->top:I
invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I
move-result v3
add-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->top:I
iget v2, v1, Landroid/graphics/Rect;->bottom:I
invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I
move-result v3
add-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->bottom:I
invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;
move-result-object v0
goto :goto_2b
:cond_5c
move-object v0, v1
goto :goto_e
:cond_5e
move-object v1, p1
goto :goto_8
.end method
.method private a(II)Landroid/support/v4/view/bo;
.registers 5
new-instance v0, Landroid/support/v4/view/bo;
invoke-direct {v0}, Landroid/support/v4/view/bo;-><init>()V
iput p1, v0, Landroid/support/v4/view/bo;->b:I
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/ah;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
move-result-object v1
iput-object v1, v0, Landroid/support/v4/view/bo;->a:Ljava/lang/Object;
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
invoke-virtual {v1, p1}, Landroid/support/v4/view/ah;->c(I)F
move-result v1
iput v1, v0, Landroid/support/v4/view/bo;->d:F
if-ltz p2, :cond_21
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-lt p2, v1, :cond_27
:cond_21
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_26
return-object v0
:cond_27
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
goto :goto_26
.end method
.method private a(Landroid/view/View;)Landroid/support/v4/view/bo;
.registers 6
const/4 v0, 0x0
move v1, v0
:goto_2
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_21
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/view/bo;
iget-object v2, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
iget-object v3, v0, Landroid/support/v4/view/bo;->a:Ljava/lang/Object;
invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/ah;->a(Landroid/view/View;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1d
:goto_1c
return-object v0
:cond_1d
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_2
:cond_21
const/4 v0, 0x0
goto :goto_1c
.end method
.method private a(IFI)V
.registers 15
const/4 v3, 0x0
iget v0, p0, Landroid/support/v4/view/ViewPager;->V:I
if-lez v0, :cond_71
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I
move-result v5
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I
move-result v1
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I
move-result v2
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I
move-result v6
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I
move-result v7
move v4, v3
:goto_1a
if-ge v4, v7, :cond_71
invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;
move-result-object v8
invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;
iget-boolean v9, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z
if-eqz v9, :cond_af
iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I
and-int/lit8 v0, v0, 0x7
packed-switch v0, :pswitch_data_b4
:pswitch_31
move v0, v1
move v10, v2
move v2, v1
move v1, v10
:goto_35
add-int/2addr v0, v5
invoke-virtual {v8}, Landroid/view/View;->getLeft()I
move-result v9
sub-int/2addr v0, v9
if-eqz v0, :cond_40
invoke-virtual {v8, v0}, Landroid/view/View;->offsetLeftAndRight(I)V
:goto_40
:cond_40
add-int/lit8 v0, v4, 0x1
move v4, v0
move v10, v1
move v1, v2
move v2, v10
goto :goto_1a
:pswitch_47
invoke-virtual {v8}, Landroid/view/View;->getWidth()I
move-result v0
add-int/2addr v0, v1
move v10, v1
move v1, v2
move v2, v0
move v0, v10
goto :goto_35
:pswitch_51
invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I
move-result v0
sub-int v0, v6, v0
div-int/lit8 v0, v0, 0x2
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v0
move v10, v2
move v2, v1
move v1, v10
goto :goto_35
:pswitch_61
sub-int v0, v6, v2
invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I
move-result v9
sub-int/2addr v0, v9
invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I
move-result v9
add-int/2addr v2, v9
move v10, v2
move v2, v1
move v1, v10
goto :goto_35
:cond_71
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->W:Landroid/support/v4/view/br;
if-eqz v0, :cond_7a
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->W:Landroid/support/v4/view/br;
invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/br;->a(IFI)V
:cond_7a
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Z:Landroid/support/v4/view/br;
if-eqz v0, :cond_83
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Z:Landroid/support/v4/view/br;
invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/br;->a(IFI)V
:cond_83
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ab:Landroid/support/v4/view/bs;
if-eqz v0, :cond_ab
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I
move-result v2
move v1, v3
:goto_8f
if-ge v1, v2, :cond_ab
invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;
iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z
if-nez v0, :cond_a7
invoke-virtual {v3}, Landroid/view/View;->getLeft()I
invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->g()I
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ab:Landroid/support/v4/view/bs;
:cond_a7
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_8f
:cond_ab
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->U:Z
return-void
:cond_af
move v10, v2
move v2, v1
move v1, v10
goto :goto_40
nop
:pswitch_data_b4
.packed-switch 0x1
:pswitch_51
:pswitch_31
:pswitch_47
:pswitch_31
:pswitch_61
.end packed-switch
.end method
.method private a(IZIZ)V
.registers 17
invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->e(I)Landroid/support/v4/view/bo;
move-result-object v1
const/4 v0, 0x0
if-eqz v1, :cond_1c
invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->g()I
move-result v0
int-to-float v0, v0
iget v2, p0, Landroid/support/v4/view/ViewPager;->s:F
iget v1, v1, Landroid/support/v4/view/bo;->e:F
iget v3, p0, Landroid/support/v4/view/ViewPager;->t:F
invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F
move-result v1
invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F
move-result v1
mul-float/2addr v0, v1
float-to-int v0, v0
:cond_1c
if-eqz p2, :cond_d0
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I
move-result v1
if-nez v1, :cond_3f
const/4 v0, 0x0
invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->b(Z)V
:goto_28
if-eqz p4, :cond_33
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->W:Landroid/support/v4/view/br;
if-eqz v0, :cond_33
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->W:Landroid/support/v4/view/br;
invoke-interface {v0, p1}, Landroid/support/v4/view/br;->a(I)V
:cond_33
if-eqz p4, :cond_3e
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Z:Landroid/support/v4/view/br;
if-eqz v0, :cond_3e
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Z:Landroid/support/v4/view/br;
invoke-interface {v0, p1}, Landroid/support/v4/view/br;->a(I)V
:goto_3e
:cond_3e
return-void
:cond_3f
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I
move-result v1
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I
move-result v2
sub-int v3, v0, v1
rsub-int/lit8 v4, v2, 0x0
if-nez v3, :cond_5b
if-nez v4, :cond_5b
const/4 v0, 0x0
invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->a(Z)V
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->d()V
const/4 v0, 0x0
invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->c(I)V
goto :goto_28
:cond_5b
const/4 v0, 0x1
invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->b(Z)V
const/4 v0, 0x2
invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->c(I)V
invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->g()I
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
float-to-double v8, v6
invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D
move-result-wide v8
double-to-float v6, v8
mul-float/2addr v5, v6
add-float/2addr v5, v7
invoke-static {p3}, Ljava/lang/Math;->abs(I)I
move-result v6
if-lez v6, :cond_b3
const/high16 v0, 0x447a
int-to-float v6, v6
div-float/2addr v5, v6
invoke-static {v5}, Ljava/lang/Math;->abs(F)F
move-result v5
mul-float/2addr v0, v5
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
mul-int/lit8 v0, v0, 0x4
:goto_a3
const/16 v5, 0x258
invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I
move-result v5
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;
invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V
invoke-static {p0}, Landroid/support/v4/view/at;->c(Landroid/view/View;)V
goto/16 :goto_28
:cond_b3
int-to-float v0, v0
iget-object v5, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
iget v6, p0, Landroid/support/v4/view/ViewPager;->i:I
invoke-virtual {v5, v6}, Landroid/support/v4/view/ah;->c(I)F
move-result v5
mul-float/2addr v0, v5
invoke-static {v3}, Ljava/lang/Math;->abs(I)I
move-result v5
int-to-float v5, v5
iget v6, p0, Landroid/support/v4/view/ViewPager;->o:I
int-to-float v6, v6
add-float/2addr v0, v6
div-float v0, v5, v0
const/high16 v5, 0x3f80
add-float/2addr v0, v5
const/high16 v5, 0x42c8
mul-float/2addr v0, v5
float-to-int v0, v0
goto :goto_a3
:cond_d0
if-eqz p4, :cond_db
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->W:Landroid/support/v4/view/br;
if-eqz v1, :cond_db
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->W:Landroid/support/v4/view/br;
invoke-interface {v1, p1}, Landroid/support/v4/view/br;->a(I)V
:cond_db
if-eqz p4, :cond_e6
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Z:Landroid/support/v4/view/br;
if-eqz v1, :cond_e6
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Z:Landroid/support/v4/view/br;
invoke-interface {v1, p1}, Landroid/support/v4/view/br;->a(I)V
:cond_e6
const/4 v1, 0x0
invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->a(Z)V
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V
invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->f(I)Z
goto/16 :goto_3e
.end method
.method private a(IZZ)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewPager;->a(IZZI)V
return-void
.end method
.method private a(IZZI)V
.registers 9
const/4 v3, 0x1
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
invoke-virtual {v0}, Landroid/support/v4/view/ah;->b()I
move-result v0
if-gtz v0, :cond_12
:cond_e
invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->b(Z)V
:goto_11
return-void
:cond_12
if-nez p3, :cond_24
iget v0, p0, Landroid/support/v4/view/ViewPager;->i:I
if-ne v0, p1, :cond_24
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-eqz v0, :cond_24
invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->b(Z)V
goto :goto_11
:cond_24
if-gez p1, :cond_4b
move p1, v1
:goto_27
:cond_27
iget v0, p0, Landroid/support/v4/view/ViewPager;->z:I
iget v2, p0, Landroid/support/v4/view/ViewPager;->i:I
add-int/2addr v2, v0
if-gt p1, v2, :cond_34
iget v2, p0, Landroid/support/v4/view/ViewPager;->i:I
sub-int v0, v2, v0
if-ge p1, v0, :cond_5c
:cond_34
move v2, v1
:goto_35
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v2, v0, :cond_5c
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/view/bo;
iput-boolean v3, v0, Landroid/support/v4/view/bo;->c:Z
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_35
:cond_4b
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
invoke-virtual {v0}, Landroid/support/v4/view/ah;->b()I
move-result v0
if-lt p1, v0, :cond_27
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
invoke-virtual {v0}, Landroid/support/v4/view/ah;->b()I
move-result v0
add-int/lit8 p1, v0, -0x1
goto :goto_27
:cond_5c
iget v0, p0, Landroid/support/v4/view/ViewPager;->i:I
if-eq v0, p1, :cond_61
move v1, v3
:cond_61
iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->S:Z
if-eqz v0, :cond_81
iput p1, p0, Landroid/support/v4/view/ViewPager;->i:I
if-eqz v1, :cond_72
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->W:Landroid/support/v4/view/br;
if-eqz v0, :cond_72
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->W:Landroid/support/v4/view/br;
invoke-interface {v0, p1}, Landroid/support/v4/view/br;->a(I)V
:cond_72
if-eqz v1, :cond_7d
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Z:Landroid/support/v4/view/br;
if-eqz v0, :cond_7d
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Z:Landroid/support/v4/view/br;
invoke-interface {v0, p1}, Landroid/support/v4/view/br;->a(I)V
:cond_7d
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V
goto :goto_11
:cond_81
invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->d(I)V
invoke-direct {p0, p1, p2, p4, v1}, Landroid/support/v4/view/ViewPager;->a(IZIZ)V
goto :goto_11
.end method
.method static synthetic a(Landroid/support/v4/view/ViewPager;)V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->c(I)V
return-void
.end method
.method private a(Landroid/support/v4/view/bo;ILandroid/support/v4/view/bo;)V
.registers 16
const/4 v4, 0x0
const/high16 v10, 0x3f80
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
invoke-virtual {v0}, Landroid/support/v4/view/ah;->b()I
move-result v7
invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->g()I
move-result v0
if-lez v0, :cond_56
iget v1, p0, Landroid/support/v4/view/ViewPager;->o:I
int-to-float v1, v1
int-to-float v0, v0
div-float v0, v1, v0
move v6, v0
:goto_16
if-eqz p3, :cond_c4
iget v0, p3, Landroid/support/v4/view/bo;->b:I
iget v1, p1, Landroid/support/v4/view/bo;->b:I
if-ge v0, v1, :cond_75
iget v1, p3, Landroid/support/v4/view/bo;->e:F
iget v2, p3, Landroid/support/v4/view/bo;->d:F
add-float/2addr v1, v2
add-float/2addr v1, v6
add-int/lit8 v0, v0, 0x1
move v2, v1
move v3, v4
move v1, v0
:goto_29
iget v0, p1, Landroid/support/v4/view/bo;->b:I
if-gt v1, v0, :cond_c4
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v3, v0, :cond_c4
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/view/bo;
:goto_3d
iget v5, v0, Landroid/support/v4/view/bo;->b:I
if-le v1, v5, :cond_16c
iget-object v5, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v5
add-int/lit8 v5, v5, -0x1
if-ge v3, v5, :cond_16c
add-int/lit8 v3, v3, 0x1
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/view/bo;
goto :goto_3d
:cond_56
const/4 v0, 0x0
move v6, v0
goto :goto_16
:goto_59
iget v5, v0, Landroid/support/v4/view/bo;->b:I
if-ge v2, v5, :cond_6a
iget-object v5, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
invoke-virtual {v5, v2}, Landroid/support/v4/view/ah;->c(I)F
move-result v5
add-float/2addr v5, v6
add-float/2addr v5, v1
add-int/lit8 v1, v2, 0x1
move v2, v1
move v1, v5
goto :goto_59
:cond_6a
iput v1, v0, Landroid/support/v4/view/bo;->e:F
iget v0, v0, Landroid/support/v4/view/bo;->d:F
add-float/2addr v0, v6
add-float/2addr v1, v0
add-int/lit8 v0, v2, 0x1
move v2, v1
move v1, v0
goto :goto_29
:cond_75
iget v1, p1, Landroid/support/v4/view/bo;->b:I
if-le v0, v1, :cond_c4
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
add-int/lit8 v2, v1, -0x1
iget v1, p3, Landroid/support/v4/view/bo;->e:F
add-int/lit8 v0, v0, -0x1
move v3, v2
move v2, v1
move v1, v0
:goto_88
iget v0, p1, Landroid/support/v4/view/bo;->b:I
if-lt v1, v0, :cond_c4
if-ltz v3, :cond_c4
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/view/bo;
:goto_96
iget v5, v0, Landroid/support/v4/view/bo;->b:I
if-ge v1, v5, :cond_167
if-lez v3, :cond_167
add-int/lit8 v3, v3, -0x1
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/view/bo;
goto :goto_96
:goto_a7
iget v5, v0, Landroid/support/v4/view/bo;->b:I
if-le v2, v5, :cond_b9
iget-object v5, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
invoke-virtual {v5, v2}, Landroid/support/v4/view/ah;->c(I)F
move-result v5
add-float/2addr v5, v6
sub-float v5, v1, v5
add-int/lit8 v1, v2, -0x1
move v2, v1
move v1, v5
goto :goto_a7
:cond_b9
iget v5, v0, Landroid/support/v4/view/bo;->d:F
add-float/2addr v5, v6
sub-float/2addr v1, v5
iput v1, v0, Landroid/support/v4/view/bo;->e:F
add-int/lit8 v0, v2, -0x1
move v2, v1
move v1, v0
goto :goto_88
:cond_c4
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v8
iget v2, p1, Landroid/support/v4/view/bo;->e:F
iget v0, p1, Landroid/support/v4/view/bo;->b:I
add-int/lit8 v1, v0, -0x1
iget v0, p1, Landroid/support/v4/view/bo;->b:I
if-nez v0, :cond_106
iget v0, p1, Landroid/support/v4/view/bo;->e:F
:goto_d6
iput v0, p0, Landroid/support/v4/view/ViewPager;->s:F
iget v0, p1, Landroid/support/v4/view/bo;->b:I
add-int/lit8 v3, v7, -0x1
if-ne v0, v3, :cond_10a
iget v0, p1, Landroid/support/v4/view/bo;->e:F
iget v3, p1, Landroid/support/v4/view/bo;->d:F
add-float/2addr v0, v3
sub-float/2addr v0, v10
:goto_e4
iput v0, p0, Landroid/support/v4/view/ViewPager;->t:F
add-int/lit8 v0, p2, -0x1
move v5, v0
:goto_e9
if-ltz v5, :cond_121
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/view/bo;
move v3, v2
:goto_f4
iget v2, v0, Landroid/support/v4/view/bo;->b:I
if-le v1, v2, :cond_10e
iget-object v9, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
add-int/lit8 v2, v1, -0x1
invoke-virtual {v9, v1}, Landroid/support/v4/view/ah;->c(I)F
move-result v1
add-float/2addr v1, v6
sub-float v1, v3, v1
move v3, v1
move v1, v2
goto :goto_f4
:cond_106
const v0, -0x800001
goto :goto_d6
:cond_10a
const v0, 0x7f7fffff
goto :goto_e4
:cond_10e
iget v2, v0, Landroid/support/v4/view/bo;->d:F
add-float/2addr v2, v6
sub-float v2, v3, v2
iput v2, v0, Landroid/support/v4/view/bo;->e:F
iget v0, v0, Landroid/support/v4/view/bo;->b:I
if-nez v0, :cond_11b
iput v2, p0, Landroid/support/v4/view/ViewPager;->s:F
:cond_11b
add-int/lit8 v0, v5, -0x1
add-int/lit8 v1, v1, -0x1
move v5, v0
goto :goto_e9
:cond_121
iget v0, p1, Landroid/support/v4/view/bo;->e:F
iget v1, p1, Landroid/support/v4/view/bo;->d:F
add-float/2addr v0, v1
add-float v2, v0, v6
iget v0, p1, Landroid/support/v4/view/bo;->b:I
add-int/lit8 v1, v0, 0x1
add-int/lit8 v0, p2, 0x1
move v5, v0
:goto_12f
if-ge v5, v8, :cond_164
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/view/bo;
move v3, v2
:goto_13a
iget v2, v0, Landroid/support/v4/view/bo;->b:I
if-ge v1, v2, :cond_14b
iget-object v9, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
add-int/lit8 v2, v1, 0x1
invoke-virtual {v9, v1}, Landroid/support/v4/view/ah;->c(I)F
move-result v1
add-float/2addr v1, v6
add-float/2addr v1, v3
move v3, v1
move v1, v2
goto :goto_13a
:cond_14b
iget v2, v0, Landroid/support/v4/view/bo;->b:I
add-int/lit8 v9, v7, -0x1
if-ne v2, v9, :cond_157
iget v2, v0, Landroid/support/v4/view/bo;->d:F
add-float/2addr v2, v3
sub-float/2addr v2, v10
iput v2, p0, Landroid/support/v4/view/ViewPager;->t:F
:cond_157
iput v3, v0, Landroid/support/v4/view/bo;->e:F
iget v0, v0, Landroid/support/v4/view/bo;->d:F
add-float/2addr v0, v6
add-float v2, v3, v0
add-int/lit8 v0, v5, 0x1
add-int/lit8 v1, v1, 0x1
move v5, v0
goto :goto_12f
:cond_164
iput-boolean v4, p0, Landroid/support/v4/view/ViewPager;->T:Z
return-void
:cond_167
move v11, v1
move v1, v2
move v2, v11
goto/16 :goto_a7
:cond_16c
move v11, v1
move v1, v2
move v2, v11
goto/16 :goto_59
.end method
.method private a(Landroid/view/MotionEvent;)V
.registers 5
invoke-static {p1}, Landroid/support/v4/view/ad;->b(Landroid/view/MotionEvent;)I
move-result v0
invoke-static {p1, v0}, Landroid/support/v4/view/ad;->b(Landroid/view/MotionEvent;I)I
move-result v1
iget v2, p0, Landroid/support/v4/view/ViewPager;->J:I
if-ne v1, v2, :cond_24
if-nez v0, :cond_25
const/4 v0, 0x1
:goto_f
invoke-static {p1, v0}, Landroid/support/v4/view/ad;->c(Landroid/view/MotionEvent;I)F
move-result v1
iput v1, p0, Landroid/support/v4/view/ViewPager;->F:F
invoke-static {p1, v0}, Landroid/support/v4/view/ad;->b(Landroid/view/MotionEvent;I)I
move-result v0
iput v0, p0, Landroid/support/v4/view/ViewPager;->J:I
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->K:Landroid/view/VelocityTracker;
if-eqz v0, :cond_24
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->K:Landroid/view/VelocityTracker;
invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V
:cond_24
return-void
:cond_25
const/4 v0, 0x0
goto :goto_f
.end method
.method private a(Z)V
.registers 9
const/4 v4, 0x1
const/4 v2, 0x0
iget v0, p0, Landroid/support/v4/view/ViewPager;->ag:I
const/4 v1, 0x2
if-ne v0, v1, :cond_4c
move v0, v4
:goto_8
if-eqz v0, :cond_2d
invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->b(Z)V
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;
invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I
move-result v1
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I
move-result v3
iget-object v5, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;
invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I
move-result v5
iget-object v6, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;
invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I
move-result v6
if-ne v1, v5, :cond_2a
if-eq v3, v6, :cond_2d
:cond_2a
invoke-virtual {p0, v5, v6}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V
:cond_2d
iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->y:Z
move v1, v2
move v3, v0
:goto_31
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_4e
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/view/bo;
iget-boolean v5, v0, Landroid/support/v4/view/bo;->c:Z
if-eqz v5, :cond_48
iput-boolean v2, v0, Landroid/support/v4/view/bo;->c:Z
move v3, v4
:cond_48
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_31
:cond_4c
move v0, v2
goto :goto_8
:cond_4e
if-eqz v3, :cond_57
if-eqz p1, :cond_58
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->af:Ljava/lang/Runnable;
invoke-static {p0, v0}, Landroid/support/v4/view/at;->a(Landroid/view/View;Ljava/lang/Runnable;)V
:goto_57
:cond_57
return-void
:cond_58
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->af:Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
goto :goto_57
.end method
.method private a(F)Z
.registers 12
const/4 v3, 0x1
const/4 v2, 0x0
iget v0, p0, Landroid/support/v4/view/ViewPager;->F:F
sub-float/2addr v0, p1
iput p1, p0, Landroid/support/v4/view/ViewPager;->F:F
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I
move-result v1
int-to-float v1, v1
add-float v5, v1, v0
invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->g()I
move-result v7
int-to-float v0, v7
iget v1, p0, Landroid/support/v4/view/ViewPager;->s:F
mul-float v4, v0, v1
int-to-float v0, v7
iget v1, p0, Landroid/support/v4/view/ViewPager;->t:F
mul-float v6, v0, v1
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/view/bo;
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
iget-object v8, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
move-result v8
add-int/lit8 v8, v8, -0x1
invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/view/bo;
iget v8, v0, Landroid/support/v4/view/bo;->b:I
if-eqz v8, :cond_93
iget v0, v0, Landroid/support/v4/view/bo;->e:F
int-to-float v4, v7
mul-float/2addr v0, v4
move v4, v0
move v0, v2
:goto_3e
iget v8, v1, Landroid/support/v4/view/bo;->b:I
iget-object v9, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
invoke-virtual {v9}, Landroid/support/v4/view/ah;->b()I
move-result v9
add-int/lit8 v9, v9, -0x1
if-eq v8, v9, :cond_91
iget v1, v1, Landroid/support/v4/view/bo;->e:F
int-to-float v3, v7
mul-float/2addr v1, v3
move v3, v2
:goto_4f
cmpg-float v6, v5, v4
if-gez v6, :cond_79
if-eqz v0, :cond_63
sub-float v0, v4, v5
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Q:Landroid/support/v4/widget/i;
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v0
int-to-float v2, v7
div-float/2addr v0, v2
invoke-virtual {v1, v0}, Landroid/support/v4/widget/i;->a(F)Z
move-result v2
:cond_63
:goto_63
iget v0, p0, Landroid/support/v4/view/ViewPager;->F:F
float-to-int v1, v4
int-to-float v1, v1
sub-float v1, v4, v1
add-float/2addr v0, v1
iput v0, p0, Landroid/support/v4/view/ViewPager;->F:F
float-to-int v0, v4
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I
move-result v1
invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V
float-to-int v0, v4
invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->f(I)Z
return v2
:cond_79
cmpl-float v0, v5, v1
if-lez v0, :cond_8f
if-eqz v3, :cond_8d
sub-float v0, v5, v1
iget-object v2, p0, Landroid/support/v4/view/ViewPager;->R:Landroid/support/v4/widget/i;
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v0
int-to-float v3, v7
div-float/2addr v0, v3
invoke-virtual {v2, v0}, Landroid/support/v4/widget/i;->a(F)Z
move-result v2
:cond_8d
move v4, v1
goto :goto_63
:cond_8f
move v4, v5
goto :goto_63
:cond_91
move v1, v6
goto :goto_4f
:cond_93
move v0, v3
goto :goto_3e
.end method
.method private a(Landroid/view/View;ZIII)Z
.registers 16
const/4 v2, 0x1
instance-of v0, p1, Landroid/view/ViewGroup;
if-eqz v0, :cond_5a
move-object v6, p1
check-cast v6, Landroid/view/ViewGroup;
invoke-virtual {p1}, Landroid/view/View;->getScrollX()I
move-result v8
invoke-virtual {p1}, Landroid/view/View;->getScrollY()I
move-result v9
invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v7, v0
:goto_17
if-ltz v7, :cond_5a
invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v1
add-int v0, p4, v8
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v3
if-lt v0, v3, :cond_56
add-int v0, p4, v8
invoke-virtual {v1}, Landroid/view/View;->getRight()I
move-result v3
if-ge v0, v3, :cond_56
add-int v0, p5, v9
invoke-virtual {v1}, Landroid/view/View;->getTop()I
move-result v3
if-lt v0, v3, :cond_56
add-int v0, p5, v9
invoke-virtual {v1}, Landroid/view/View;->getBottom()I
move-result v3
if-ge v0, v3, :cond_56
add-int v0, p4, v8
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v3
sub-int v4, v0, v3
add-int v0, p5, v9
invoke-virtual {v1}, Landroid/view/View;->getTop()I
move-result v3
sub-int v5, v0, v3
move-object v0, p0
move v3, p3
invoke-direct/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z
move-result v0
if-eqz v0, :cond_56
:goto_55
:cond_55
return v2
:cond_56
add-int/lit8 v0, v7, -0x1
move v7, v0
goto :goto_17
:cond_5a
if-eqz p2, :cond_63
neg-int v0, p3
invoke-static {p1, v0}, Landroid/support/v4/view/at;->a(Landroid/view/View;I)Z
move-result v0
if-nez v0, :cond_55
:cond_63
const/4 v2, 0x0
goto :goto_55
.end method
.method static synthetic b(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/ah;
.registers 2
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
return-object v0
.end method
.method private b(Landroid/view/View;)Landroid/support/v4/view/bo;
.registers 4
:goto_0
invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-eq v0, p0, :cond_12
if-eqz v0, :cond_c
instance-of v1, v0, Landroid/view/View;
if-nez v1, :cond_e
:cond_c
const/4 v0, 0x0
:goto_d
return-object v0
:cond_e
check-cast v0, Landroid/view/View;
move-object p1, v0
goto :goto_0
:cond_12
invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/bo;
move-result-object v0
goto :goto_d
.end method
.method private b(Z)V
.registers 3
iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->x:Z
if-eq v0, p1, :cond_6
iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->x:Z
:cond_6
return-void
.end method
.method static synthetic c(Landroid/support/v4/view/ViewPager;)I
.registers 2
iget v0, p0, Landroid/support/v4/view/ViewPager;->i:I
return v0
.end method
.method private c(I)V
.registers 9
const/4 v1, 0x0
iget v0, p0, Landroid/support/v4/view/ViewPager;->ag:I
if-ne v0, p1, :cond_6
:goto_5
:cond_5
return-void
:cond_6
iput p1, p0, Landroid/support/v4/view/ViewPager;->ag:I
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ab:Landroid/support/v4/view/bs;
if-eqz v0, :cond_29
if-eqz p1, :cond_25
const/4 v0, 0x1
:goto_f
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I
move-result v4
move v3, v1
:goto_14
if-ge v3, v4, :cond_29
if-eqz v0, :cond_27
const/4 v2, 0x2
:goto_19
invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;
move-result-object v5
const/4 v6, 0x0
invoke-static {v5, v2, v6}, Landroid/support/v4/view/at;->a(Landroid/view/View;ILandroid/graphics/Paint;)V
add-int/lit8 v2, v3, 0x1
move v3, v2
goto :goto_14
:cond_25
move v0, v1
goto :goto_f
:cond_27
move v2, v1
goto :goto_19
:cond_29
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->W:Landroid/support/v4/view/br;
if-eqz v0, :cond_5
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->W:Landroid/support/v4/view/br;
invoke-interface {v0, p1}, Landroid/support/v4/view/br;->b(I)V
goto :goto_5
.end method
.method private d(I)V
.registers 20
const/4 v3, 0x0
const/4 v2, 0x2
move-object/from16 v0, p0
iget v4, v0, Landroid/support/v4/view/ViewPager;->i:I
move/from16 v0, p1
if-eq v4, v0, :cond_334
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v4/view/ViewPager;->i:I
move/from16 v0, p1
if-ge v2, v0, :cond_30
const/16 v2, 0x42
:goto_14
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v4/view/ViewPager;->i:I
move-object/from16 v0, p0
invoke-direct {v0, v3}, Landroid/support/v4/view/ViewPager;->e(I)Landroid/support/v4/view/bo;
move-result-object v3
move/from16 v0, p1
move-object/from16 v1, p0
iput v0, v1, Landroid/support/v4/view/ViewPager;->i:I
move-object v4, v3
move v3, v2
:goto_26
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
if-nez v2, :cond_33
invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->h()V
:goto_2f
:cond_2f
return-void
:cond_30
const/16 v2, 0x11
goto :goto_14
:cond_33
move-object/from16 v0, p0
iget-boolean v2, v0, Landroid/support/v4/view/ViewPager;->y:Z
if-eqz v2, :cond_3d
invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->h()V
goto :goto_2f
:cond_3d
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;
move-result-object v2
if-eqz v2, :cond_2f
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
move-object/from16 v0, p0
invoke-virtual {v2, v0}, Landroid/support/v4/view/ah;->a(Landroid/view/ViewGroup;)V
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v4/view/ViewPager;->z:I
const/4 v5, 0x0
move-object/from16 v0, p0
iget v6, v0, Landroid/support/v4/view/ViewPager;->i:I
sub-int/2addr v6, v2
invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I
move-result v11
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
invoke-virtual {v5}, Landroid/support/v4/view/ah;->b()I
move-result v12
add-int/lit8 v5, v12, -0x1
move-object/from16 v0, p0
iget v6, v0, Landroid/support/v4/view/ViewPager;->i:I
add-int/2addr v2, v6
invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I
move-result v13
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v4/view/ViewPager;->b:I
if-eq v12, v2, :cond_d6
:try_start_73
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getId()I
move-result v3
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
:try_end_7e
.catch Landroid/content/res/Resources$NotFoundException; {:try_start_73 .. :try_end_7e} :catch_cc
move-result-object v2
:goto_7f
new-instance v3, Ljava/lang/IllegalStateException;
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p0
iget v5, v0, Landroid/support/v4/view/ViewPager;->b:I
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ", found: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " Pager id: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v4, " Pager class: "
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v4, " Problematic adapter: "
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v3
:catch_cc
move-exception v2
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getId()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v2
goto :goto_7f
:cond_d6
const/4 v6, 0x0
const/4 v2, 0x0
move v5, v2
:goto_d9
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ge v5, v2, :cond_331
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/view/bo;
iget v7, v2, Landroid/support/v4/view/bo;->b:I
move-object/from16 v0, p0
iget v8, v0, Landroid/support/v4/view/ViewPager;->i:I
if-lt v7, v8, :cond_16b
iget v7, v2, Landroid/support/v4/view/bo;->b:I
move-object/from16 v0, p0
iget v8, v0, Landroid/support/v4/view/ViewPager;->i:I
if-ne v7, v8, :cond_331
:goto_fd
if-nez v2, :cond_32e
if-lez v12, :cond_32e
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v4/view/ViewPager;->i:I
move-object/from16 v0, p0
invoke-direct {v0, v2, v5}, Landroid/support/v4/view/ViewPager;->a(II)Landroid/support/v4/view/bo;
move-result-object v2
move-object v10, v2
:goto_10c
if-eqz v10, :cond_28f
const/4 v9, 0x0
add-int/lit8 v8, v5, -0x1
if-ltz v8, :cond_170
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/view/bo;
:goto_11d
invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->g()I
move-result v14
if-gtz v14, :cond_172
const/4 v6, 0x0
:goto_124
move-object/from16 v0, p0
iget v7, v0, Landroid/support/v4/view/ViewPager;->i:I
add-int/lit8 v7, v7, -0x1
move/from16 v16, v7
move v7, v9
move/from16 v9, v16
move/from16 v17, v8
move v8, v5
move/from16 v5, v17
:goto_134
if-ltz v9, :cond_1b8
cmpl-float v15, v7, v6
if-ltz v15, :cond_182
if-ge v9, v11, :cond_182
if-eqz v2, :cond_1b8
iget v15, v2, Landroid/support/v4/view/bo;->b:I
if-ne v9, v15, :cond_168
iget-boolean v15, v2, Landroid/support/v4/view/bo;->c:Z
if-nez v15, :cond_168
move-object/from16 v0, p0
iget-object v15, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v15, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-object/from16 v0, p0
iget-object v15, v0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
iget-object v2, v2, Landroid/support/v4/view/bo;->a:Ljava/lang/Object;
move-object/from16 v0, p0
invoke-virtual {v15, v0, v9, v2}, Landroid/support/v4/view/ah;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
add-int/lit8 v5, v5, -0x1
add-int/lit8 v8, v8, -0x1
if-ltz v5, :cond_180
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/view/bo;
:goto_168
:cond_168
add-int/lit8 v9, v9, -0x1
goto :goto_134
:cond_16b
add-int/lit8 v2, v5, 0x1
move v5, v2
goto/16 :goto_d9
:cond_170
const/4 v2, 0x0
goto :goto_11d
:cond_172
const/high16 v6, 0x4000
iget v7, v10, Landroid/support/v4/view/bo;->d:F
sub-float/2addr v6, v7
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I
move-result v7
int-to-float v7, v7
int-to-float v15, v14
div-float/2addr v7, v15
add-float/2addr v6, v7
goto :goto_124
:cond_180
const/4 v2, 0x0
goto :goto_168
:cond_182
if-eqz v2, :cond_19c
iget v15, v2, Landroid/support/v4/view/bo;->b:I
if-ne v9, v15, :cond_19c
iget v2, v2, Landroid/support/v4/view/bo;->d:F
add-float/2addr v7, v2
add-int/lit8 v5, v5, -0x1
if-ltz v5, :cond_19a
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/view/bo;
goto :goto_168
:cond_19a
const/4 v2, 0x0
goto :goto_168
:cond_19c
add-int/lit8 v2, v5, 0x1
move-object/from16 v0, p0
invoke-direct {v0, v9, v2}, Landroid/support/v4/view/ViewPager;->a(II)Landroid/support/v4/view/bo;
move-result-object v2
iget v2, v2, Landroid/support/v4/view/bo;->d:F
add-float/2addr v7, v2
add-int/lit8 v8, v8, 0x1
if-ltz v5, :cond_1b6
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/view/bo;
goto :goto_168
:cond_1b6
const/4 v2, 0x0
goto :goto_168
:cond_1b8
iget v6, v10, Landroid/support/v4/view/bo;->d:F
add-int/lit8 v9, v8, 0x1
const/high16 v2, 0x4000
cmpg-float v2, v6, v2
if-gez v2, :cond_28a
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ge v9, v2, :cond_22c
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/view/bo;
move-object v7, v2
:goto_1d7
if-gtz v14, :cond_22e
const/4 v2, 0x0
move v5, v2
:goto_1db
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v4/view/ViewPager;->i:I
add-int/lit8 v2, v2, 0x1
move/from16 v16, v2
move-object v2, v7
move v7, v9
move/from16 v9, v16
:goto_1e7
if-ge v9, v12, :cond_28a
cmpl-float v11, v6, v5
if-ltz v11, :cond_23c
if-le v9, v13, :cond_23c
if-eqz v2, :cond_28a
iget v11, v2, Landroid/support/v4/view/bo;->b:I
if-ne v9, v11, :cond_327
iget-boolean v11, v2, Landroid/support/v4/view/bo;->c:Z
if-nez v11, :cond_327
move-object/from16 v0, p0
iget-object v11, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-object/from16 v0, p0
iget-object v11, v0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
iget-object v2, v2, Landroid/support/v4/view/bo;->a:Ljava/lang/Object;
move-object/from16 v0, p0
invoke-virtual {v11, v0, v9, v2}, Landroid/support/v4/view/ah;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ge v7, v2, :cond_23a
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/view/bo;
:goto_21f
move/from16 v16, v6
move-object v6, v2
move/from16 v2, v16
:goto_224
add-int/lit8 v9, v9, 0x1
move/from16 v16, v2
move-object v2, v6
move/from16 v6, v16
goto :goto_1e7
:cond_22c
const/4 v7, 0x0
goto :goto_1d7
:cond_22e
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I
move-result v2
int-to-float v2, v2
int-to-float v5, v14
div-float/2addr v2, v5
const/high16 v5, 0x4000
add-float/2addr v2, v5
move v5, v2
goto :goto_1db
:cond_23a
const/4 v2, 0x0
goto :goto_21f
:cond_23c
if-eqz v2, :cond_263
iget v11, v2, Landroid/support/v4/view/bo;->b:I
if-ne v9, v11, :cond_263
iget v2, v2, Landroid/support/v4/view/bo;->d:F
add-float/2addr v6, v2
add-int/lit8 v7, v7, 0x1
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ge v7, v2, :cond_261
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/view/bo;
:goto_25b
move/from16 v16, v6
move-object v6, v2
move/from16 v2, v16
goto :goto_224
:cond_261
const/4 v2, 0x0
goto :goto_25b
:cond_263
move-object/from16 v0, p0
invoke-direct {v0, v9, v7}, Landroid/support/v4/view/ViewPager;->a(II)Landroid/support/v4/view/bo;
move-result-object v2
add-int/lit8 v7, v7, 0x1
iget v2, v2, Landroid/support/v4/view/bo;->d:F
add-float/2addr v6, v2
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ge v7, v2, :cond_288
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/view/bo;
:goto_282
move/from16 v16, v6
move-object v6, v2
move/from16 v2, v16
goto :goto_224
:cond_288
const/4 v2, 0x0
goto :goto_282
:cond_28a
move-object/from16 v0, p0
invoke-direct {v0, v10, v8, v4}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/bo;ILandroid/support/v4/view/bo;)V
:cond_28f
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
move-object/from16 v0, p0
iget v5, v0, Landroid/support/v4/view/ViewPager;->i:I
if-eqz v10, :cond_2de
iget-object v2, v10, Landroid/support/v4/view/bo;->a:Ljava/lang/Object;
:goto_29b
move-object/from16 v0, p0
invoke-virtual {v4, v0, v5, v2}, Landroid/support/v4/view/ah;->b(Landroid/view/ViewGroup;ILjava/lang/Object;)V
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
move-object/from16 v0, p0
invoke-virtual {v2, v0}, Landroid/support/v4/view/ah;->b(Landroid/view/ViewGroup;)V
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I
move-result v5
const/4 v2, 0x0
move v4, v2
:goto_2af
if-ge v4, v5, :cond_2e0
move-object/from16 v0, p0
invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;
move-result-object v6
invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
check-cast v2, Landroid/support/v4/view/ViewPager$LayoutParams;
iput v4, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->f:I
iget-boolean v7, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z
if-nez v7, :cond_2da
iget v7, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->c:F
const/4 v8, 0x0
cmpl-float v7, v7, v8
if-nez v7, :cond_2da
move-object/from16 v0, p0
invoke-direct {v0, v6}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/bo;
move-result-object v6
if-eqz v6, :cond_2da
iget v7, v6, Landroid/support/v4/view/bo;->d:F
iput v7, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->c:F
iget v6, v6, Landroid/support/v4/view/bo;->b:I
iput v6, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->e:I
:cond_2da
add-int/lit8 v2, v4, 0x1
move v4, v2
goto :goto_2af
:cond_2de
const/4 v2, 0x0
goto :goto_29b
:cond_2e0
invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->h()V
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->hasFocus()Z
move-result v2
if-eqz v2, :cond_2f
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;
move-result-object v2
if-eqz v2, :cond_325
move-object/from16 v0, p0
invoke-direct {v0, v2}, Landroid/support/v4/view/ViewPager;->b(Landroid/view/View;)Landroid/support/v4/view/bo;
move-result-object v2
:goto_2f5
if-eqz v2, :cond_2ff
iget v2, v2, Landroid/support/v4/view/bo;->b:I
move-object/from16 v0, p0
iget v4, v0, Landroid/support/v4/view/ViewPager;->i:I
if-eq v2, v4, :cond_2f
:cond_2ff
const/4 v2, 0x0
:goto_300
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I
move-result v4
if-ge v2, v4, :cond_2f
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;
move-result-object v4
move-object/from16 v0, p0
invoke-direct {v0, v4}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/bo;
move-result-object v5
if-eqz v5, :cond_322
iget v5, v5, Landroid/support/v4/view/bo;->b:I
move-object/from16 v0, p0
iget v6, v0, Landroid/support/v4/view/ViewPager;->i:I
if-ne v5, v6, :cond_322
invoke-virtual {v4, v3}, Landroid/view/View;->requestFocus(I)Z
move-result v4
if-nez v4, :cond_2f
:cond_322
add-int/lit8 v2, v2, 0x1
goto :goto_300
:cond_325
const/4 v2, 0x0
goto :goto_2f5
:cond_327
move/from16 v16, v6
move-object v6, v2
move/from16 v2, v16
goto/16 :goto_224
:cond_32e
move-object v10, v2
goto/16 :goto_10c
:cond_331
move-object v2, v6
goto/16 :goto_fd
:cond_334
move-object v4, v3
move v3, v2
goto/16 :goto_26
.end method
.method private e(I)Landroid/support/v4/view/bo;
.registers 5
const/4 v0, 0x0
move v1, v0
:goto_2
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_1b
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/view/bo;
iget v2, v0, Landroid/support/v4/view/bo;->b:I
if-ne v2, p1, :cond_17
:goto_16
return-object v0
:cond_17
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_2
:cond_1b
const/4 v0, 0x0
goto :goto_16
.end method
.method static synthetic e()[I
.registers 1
sget-object v0, Landroid/support/v4/view/ViewPager;->a:[I
return-object v0
.end method
.method private f()V
.registers 5
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V
const/high16 v0, 0x4
invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setDescendantFocusability(I)V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;
move-result-object v0
new-instance v1, Landroid/widget/Scroller;
sget-object v2, Landroid/support/v4/view/ViewPager;->d:Landroid/view/animation/Interpolator;
invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
iput-object v1, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;
invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
move-result-object v1
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v2
iget v2, v2, Landroid/util/DisplayMetrics;->density:F
invoke-static {v1}, Landroid/support/v4/view/bd;->a(Landroid/view/ViewConfiguration;)I
move-result v3
iput v3, p0, Landroid/support/v4/view/ViewPager;->E:I
const/high16 v3, 0x43c8
mul-float/2addr v3, v2
float-to-int v3, v3
iput v3, p0, Landroid/support/v4/view/ViewPager;->L:I
invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I
move-result v1
iput v1, p0, Landroid/support/v4/view/ViewPager;->M:I
new-instance v1, Landroid/support/v4/widget/i;
invoke-direct {v1, v0}, Landroid/support/v4/widget/i;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Landroid/support/v4/view/ViewPager;->Q:Landroid/support/v4/widget/i;
new-instance v1, Landroid/support/v4/widget/i;
invoke-direct {v1, v0}, Landroid/support/v4/widget/i;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Landroid/support/v4/view/ViewPager;->R:Landroid/support/v4/widget/i;
const/high16 v0, 0x41c8
mul-float/2addr v0, v2
float-to-int v0, v0
iput v0, p0, Landroid/support/v4/view/ViewPager;->N:I
const/high16 v0, 0x4000
mul-float/2addr v0, v2
float-to-int v0, v0
iput v0, p0, Landroid/support/v4/view/ViewPager;->O:I
const/high16 v0, 0x4180
mul-float/2addr v0, v2
float-to-int v0, v0
iput v0, p0, Landroid/support/v4/view/ViewPager;->C:I
new-instance v0, Landroid/support/v4/view/bp;
invoke-direct {v0, p0}, Landroid/support/v4/view/bp;-><init>(Landroid/support/v4/view/ViewPager;)V
invoke-static {p0, v0}, Landroid/support/v4/view/at;->a(Landroid/view/View;Landroid/support/v4/view/a;)V
invoke-static {p0}, Landroid/support/v4/view/at;->d(Landroid/view/View;)I
move-result v0
if-nez v0, :cond_6b
invoke-static {p0}, Landroid/support/v4/view/at;->e(Landroid/view/View;)V
:cond_6b
return-void
.end method
.method private f(I)Z
.registers 9
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-nez v1, :cond_1b
iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->U:Z
const/4 v1, 0x0
invoke-direct {p0, v0, v1, v0}, Landroid/support/v4/view/ViewPager;->a(IFI)V
iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->U:Z
if-nez v1, :cond_4e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "onPageScrolled did not call superclass implementation"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1b
invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->j()Landroid/support/v4/view/bo;
move-result-object v1
invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->g()I
move-result v2
iget v3, p0, Landroid/support/v4/view/ViewPager;->o:I
add-int/2addr v3, v2
iget v4, p0, Landroid/support/v4/view/ViewPager;->o:I
int-to-float v4, v4
int-to-float v5, v2
div-float/2addr v4, v5
iget v5, v1, Landroid/support/v4/view/bo;->b:I
int-to-float v6, p1
int-to-float v2, v2
div-float v2, v6, v2
iget v6, v1, Landroid/support/v4/view/bo;->e:F
sub-float/2addr v2, v6
iget v1, v1, Landroid/support/v4/view/bo;->d:F
add-float/2addr v1, v4
div-float v1, v2, v1
int-to-float v2, v3
mul-float/2addr v2, v1
float-to-int v2, v2
iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->U:Z
invoke-direct {p0, v5, v1, v2}, Landroid/support/v4/view/ViewPager;->a(IFI)V
iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->U:Z
if-nez v0, :cond_4d
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "onPageScrolled did not call superclass implementation"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_4d
const/4 v0, 0x1
:cond_4e
return v0
.end method
.method private g()I
.registers 3
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I
move-result v0
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I
move-result v1
sub-int/2addr v0, v1
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I
move-result v1
sub-int/2addr v0, v1
return v0
.end method
.method private g(I)Z
.registers 11
const/4 v1, 0x0
const/16 v8, 0x42
const/16 v7, 0x11
const/4 v4, 0x0
const/4 v3, 0x1
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;
move-result-object v2
if-ne v2, p0, :cond_3f
move-object v0, v1
:goto_e
invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;
move-result-object v1
invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_bd
if-eq v1, v0, :cond_bd
if-ne p1, v7, :cond_a1
iget-object v2, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/graphics/Rect;
invoke-direct {p0, v2, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
move-result-object v2
iget v2, v2, Landroid/graphics/Rect;->left:I
iget-object v3, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/graphics/Rect;
invoke-direct {p0, v3, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
move-result-object v3
iget v3, v3, Landroid/graphics/Rect;->left:I
if-eqz v0, :cond_9c
if-lt v2, v3, :cond_9c
invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->l()Z
move-result v0
:goto_34
move v4, v0
:cond_35
if-eqz v4, :cond_3e
invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I
move-result v0
invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->playSoundEffect(I)V
:cond_3e
return v4
:cond_3f
if-eqz v2, :cond_e9
invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
:goto_45
instance-of v5, v0, Landroid/view/ViewGroup;
if-eqz v5, :cond_ec
if-ne v0, p0, :cond_7c
move v0, v3
:goto_4c
if-nez v0, :cond_e9
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
:goto_62
instance-of v2, v0, Landroid/view/ViewGroup;
if-eqz v2, :cond_81
const-string v2, " => "
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v6
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;
move-result-object v0
goto :goto_62
:cond_7c
invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;
move-result-object v0
goto :goto_45
:cond_81
const-string v0, "ViewPager"
new-instance v2, Ljava/lang/StringBuilder;
const-string v6, "arrowScroll tried to find focus based on non-child current focused view "
invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
move-object v0, v1
goto/16 :goto_e
:cond_9c
invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z
move-result v0
goto :goto_34
:cond_a1
if-ne p1, v8, :cond_35
iget-object v2, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/graphics/Rect;
invoke-direct {p0, v2, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
move-result-object v2
iget v2, v2, Landroid/graphics/Rect;->left:I
iget-object v5, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/graphics/Rect;
invoke-direct {p0, v5, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
move-result-object v5
iget v5, v5, Landroid/graphics/Rect;->left:I
if-eqz v0, :cond_b7
if-le v2, v5, :cond_cc
:cond_b7
invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z
move-result v0
goto/16 :goto_34
:cond_bd
if-eq p1, v7, :cond_c1
if-ne p1, v3, :cond_c7
:cond_c1
invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->l()Z
move-result v0
goto/16 :goto_34
:cond_c7
if-eq p1, v8, :cond_cc
const/4 v0, 0x2
if-ne p1, v0, :cond_35
:cond_cc
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
if-eqz v0, :cond_e6
iget v0, p0, Landroid/support/v4/view/ViewPager;->i:I
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
invoke-virtual {v1}, Landroid/support/v4/view/ah;->b()I
move-result v1
add-int/lit8 v1, v1, -0x1
if-ge v0, v1, :cond_e6
iget v0, p0, Landroid/support/v4/view/ViewPager;->i:I
add-int/lit8 v0, v0, 0x1
invoke-virtual {p0, v0, v3}, Landroid/support/v4/view/ViewPager;->a(IZ)V
move v0, v3
goto/16 :goto_34
:cond_e6
move v0, v4
goto/16 :goto_34
:cond_e9
move-object v0, v2
goto/16 :goto_e
:cond_ec
move v0, v4
goto/16 :goto_4c
.end method
.method private h()V
.registers 5
iget v0, p0, Landroid/support/v4/view/ViewPager;->ac:I
if-eqz v0, :cond_2f
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ad:Ljava/util/ArrayList;
if-nez v0, :cond_22
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ad:Ljava/util/ArrayList;
:goto_f
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I
move-result v1
const/4 v0, 0x0
:goto_14
if-ge v0, v1, :cond_28
invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;
move-result-object v2
iget-object v3, p0, Landroid/support/v4/view/ViewPager;->ad:Ljava/util/ArrayList;
invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_14
:cond_22
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ad:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
goto :goto_f
:cond_28
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ad:Ljava/util/ArrayList;
sget-object v1, Landroid/support/v4/view/ViewPager;->ae:Landroid/support/v4/view/bv;
invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
:cond_2f
return-void
.end method
.method private i()V
.registers 3
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-eqz v0, :cond_a
const/4 v1, 0x1
invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
:cond_a
return-void
.end method
.method private j()Landroid/support/v4/view/bo;
.registers 14
const/4 v3, 0x0
const/4 v2, 0x0
invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->g()I
move-result v1
if-lez v1, :cond_6e
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I
move-result v0
int-to-float v0, v0
int-to-float v4, v1
div-float/2addr v0, v4
move v9, v0
:goto_10
if-lez v1, :cond_70
iget v0, p0, Landroid/support/v4/view/ViewPager;->o:I
int-to-float v0, v0
int-to-float v1, v1
div-float/2addr v0, v1
move v1, v0
:goto_18
const/4 v5, -0x1
const/4 v4, 0x1
const/4 v0, 0x0
move v6, v2
move v7, v2
move v8, v5
move v2, v3
move v5, v4
move-object v4, v0
:goto_21
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v2, v0, :cond_6d
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/view/bo;
if-nez v5, :cond_7f
iget v10, v0, Landroid/support/v4/view/bo;->b:I
add-int/lit8 v11, v8, 0x1
if-eq v10, v11, :cond_7f
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->f:Landroid/support/v4/view/bo;
add-float/2addr v6, v7
add-float/2addr v6, v1
iput v6, v0, Landroid/support/v4/view/bo;->e:F
add-int/lit8 v6, v8, 0x1
iput v6, v0, Landroid/support/v4/view/bo;->b:I
iget-object v6, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
iget v7, v0, Landroid/support/v4/view/bo;->b:I
invoke-virtual {v6, v7}, Landroid/support/v4/view/ah;->c(I)F
move-result v6
iput v6, v0, Landroid/support/v4/view/bo;->d:F
add-int/lit8 v2, v2, -0x1
move-object v12, v0
move v0, v2
move-object v2, v12
:goto_52
iget v6, v2, Landroid/support/v4/view/bo;->e:F
iget v7, v2, Landroid/support/v4/view/bo;->d:F
add-float/2addr v7, v6
add-float/2addr v7, v1
if-nez v5, :cond_5e
cmpl-float v5, v9, v6
if-ltz v5, :cond_6d
:cond_5e
cmpg-float v4, v9, v7
if-ltz v4, :cond_6c
iget-object v4, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v4
add-int/lit8 v4, v4, -0x1
if-ne v0, v4, :cond_72
:cond_6c
move-object v4, v2
:cond_6d
return-object v4
:cond_6e
move v9, v2
goto :goto_10
:cond_70
move v1, v2
goto :goto_18
:cond_72
iget v5, v2, Landroid/support/v4/view/bo;->b:I
iget v4, v2, Landroid/support/v4/view/bo;->d:F
add-int/lit8 v0, v0, 0x1
move v7, v6
move v8, v5
move v5, v3
move v6, v4
move-object v4, v2
move v2, v0
goto :goto_21
:cond_7f
move-object v12, v0
move v0, v2
move-object v2, v12
goto :goto_52
.end method
.method private k()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->A:Z
iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->B:Z
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->K:Landroid/view/VelocityTracker;
if-eqz v0, :cond_11
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->K:Landroid/view/VelocityTracker;
invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/view/ViewPager;->K:Landroid/view/VelocityTracker;
:cond_11
return-void
.end method
.method private l()Z
.registers 3
const/4 v0, 0x1
iget v1, p0, Landroid/support/v4/view/ViewPager;->i:I
if-lez v1, :cond_d
iget v1, p0, Landroid/support/v4/view/ViewPager;->i:I
add-int/lit8 v1, v1, -0x1
invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->a(IZ)V
:goto_c
return v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method public final a()Landroid/support/v4/view/ah;
.registers 2
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
return-object v0
.end method
.method public final a(I)V
.registers 4
const/4 v1, 0x0
iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->y:Z
iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->S:Z
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_8
invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IZZ)V
return-void
:cond_c
move v0, v1
goto :goto_8
.end method
.method public final a(IZ)V
.registers 4
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->y:Z
invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->a(IZZ)V
return-void
.end method
.method public final a(Landroid/support/v4/view/ah;)V
.registers 9
const/4 v6, 0x0
const/4 v5, 0x1
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
if-eqz v0, :cond_5e
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->n:Landroid/support/v4/view/bt;
invoke-virtual {v0, v1}, Landroid/support/v4/view/ah;->b(Landroid/database/DataSetObserver;)V
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
invoke-virtual {v0, p0}, Landroid/support/v4/view/ah;->a(Landroid/view/ViewGroup;)V
move v1, v2
:goto_14
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_31
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/view/bo;
iget-object v3, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
iget v4, v0, Landroid/support/v4/view/bo;->b:I
iget-object v0, v0, Landroid/support/v4/view/bo;->a:Ljava/lang/Object;
invoke-virtual {v3, p0, v4, v0}, Landroid/support/v4/view/ah;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_14
:cond_31
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
invoke-virtual {v0, p0}, Landroid/support/v4/view/ah;->b(Landroid/view/ViewGroup;)V
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
move v1, v2
:goto_3c
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I
move-result v0
if-ge v1, v0, :cond_59
invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;
iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z
if-nez v0, :cond_55
invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->removeViewAt(I)V
add-int/lit8 v1, v1, -0x1
:cond_55
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_3c
:cond_59
iput v2, p0, Landroid/support/v4/view/ViewPager;->i:I
invoke-virtual {p0, v2, v2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V
:cond_5e
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
iput-object p1, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
iput v2, p0, Landroid/support/v4/view/ViewPager;->b:I
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
if-eqz v1, :cond_a1
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->n:Landroid/support/v4/view/bt;
if-nez v1, :cond_73
new-instance v1, Landroid/support/v4/view/bt;
invoke-direct {v1, p0, v2}, Landroid/support/v4/view/bt;-><init>(Landroid/support/v4/view/ViewPager;B)V
iput-object v1, p0, Landroid/support/v4/view/ViewPager;->n:Landroid/support/v4/view/bt;
:cond_73
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
iget-object v3, p0, Landroid/support/v4/view/ViewPager;->n:Landroid/support/v4/view/bt;
invoke-virtual {v1, v3}, Landroid/support/v4/view/ah;->a(Landroid/database/DataSetObserver;)V
iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->y:Z
iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->S:Z
iput-boolean v5, p0, Landroid/support/v4/view/ViewPager;->S:Z
iget-object v3, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
invoke-virtual {v3}, Landroid/support/v4/view/ah;->b()I
move-result v3
iput v3, p0, Landroid/support/v4/view/ViewPager;->b:I
iget v3, p0, Landroid/support/v4/view/ViewPager;->j:I
if-ltz v3, :cond_ad
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
iget-object v3, p0, Landroid/support/v4/view/ViewPager;->k:Landroid/os/Parcelable;
iget-object v4, p0, Landroid/support/v4/view/ViewPager;->l:Ljava/lang/ClassLoader;
invoke-virtual {v1, v3, v4}, Landroid/support/v4/view/ah;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
iget v1, p0, Landroid/support/v4/view/ViewPager;->j:I
invoke-direct {p0, v1, v2, v5}, Landroid/support/v4/view/ViewPager;->a(IZZ)V
const/4 v1, -0x1
iput v1, p0, Landroid/support/v4/view/ViewPager;->j:I
iput-object v6, p0, Landroid/support/v4/view/ViewPager;->k:Landroid/os/Parcelable;
iput-object v6, p0, Landroid/support/v4/view/ViewPager;->l:Ljava/lang/ClassLoader;
:goto_a1
:cond_a1
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->aa:Landroid/support/v4/view/bq;
if-eqz v1, :cond_ac
if-eq v0, p1, :cond_ac
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->aa:Landroid/support/v4/view/bq;
invoke-interface {v1, v0, p1}, Landroid/support/v4/view/bq;->a(Landroid/support/v4/view/ah;Landroid/support/v4/view/ah;)V
:cond_ac
return-void
:cond_ad
if-nez v1, :cond_b3
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->d()V
goto :goto_a1
:cond_b3
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V
goto :goto_a1
.end method
.method final a(Landroid/support/v4/view/bq;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/view/ViewPager;->aa:Landroid/support/v4/view/bq;
return-void
.end method
.method public final a(Landroid/support/v4/view/br;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/view/ViewPager;->W:Landroid/support/v4/view/br;
return-void
.end method
.method public addFocusables(Ljava/util/ArrayList;II)V
.registers 10
invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
move-result v1
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDescendantFocusability()I
move-result v2
const/high16 v0, 0x6
if-eq v2, v0, :cond_2f
const/4 v0, 0x0
:goto_d
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I
move-result v3
if-ge v0, v3, :cond_2f
invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v3}, Landroid/view/View;->getVisibility()I
move-result v4
if-nez v4, :cond_2c
invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/bo;
move-result-object v4
if-eqz v4, :cond_2c
iget v4, v4, Landroid/support/v4/view/bo;->b:I
iget v5, p0, Landroid/support/v4/view/ViewPager;->i:I
if-ne v4, v5, :cond_2c
invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V
:cond_2c
add-int/lit8 v0, v0, 0x1
goto :goto_d
:cond_2f
const/high16 v0, 0x4
if-ne v2, v0, :cond_39
invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
move-result v0
if-ne v1, v0, :cond_3f
:cond_39
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusable()Z
move-result v0
if-nez v0, :cond_40
:goto_3f
:cond_3f
return-void
:cond_40
and-int/lit8 v0, p3, 0x1
const/4 v1, 0x1
if-ne v0, v1, :cond_51
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isInTouchMode()Z
move-result v0
if-eqz v0, :cond_51
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusableInTouchMode()Z
move-result v0
if-eqz v0, :cond_3f
:cond_51
if-eqz p1, :cond_3f
invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_3f
.end method
.method public addTouchables(Ljava/util/ArrayList;)V
.registers 6
const/4 v0, 0x0
:goto_1
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I
move-result v1
if-ge v0, v1, :cond_23
invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getVisibility()I
move-result v2
if-nez v2, :cond_20
invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/bo;
move-result-object v2
if-eqz v2, :cond_20
iget v2, v2, Landroid/support/v4/view/bo;->b:I
iget v3, p0, Landroid/support/v4/view/ViewPager;->i:I
if-ne v2, v3, :cond_20
invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V
:cond_20
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_23
return-void
.end method
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.registers 8
invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
move-result v0
if-nez v0, :cond_31
invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
:goto_a
move-object v0, v1
check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;
iget-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z
instance-of v3, p1, Landroid/support/v4/view/bn;
or-int/2addr v2, v3
iput-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z
iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->w:Z
if-eqz v2, :cond_2d
if-eqz v0, :cond_26
iget-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z
if-eqz v2, :cond_26
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Cannot add pager decor view during layout"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_26
const/4 v2, 0x1
iput-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->d:Z
invoke-virtual {p0, p1, p2, v1}, Landroid/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
:goto_2c
return-void
:cond_2d
invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
goto :goto_2c
:cond_31
move-object v1, p3
goto :goto_a
.end method
.method public final b()I
.registers 2
iget v0, p0, Landroid/support/v4/view/ViewPager;->i:I
return v0
.end method
.method final b(Landroid/support/v4/view/br;)Landroid/support/v4/view/br;
.registers 3
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Z:Landroid/support/v4/view/br;
iput-object p1, p0, Landroid/support/v4/view/ViewPager;->Z:Landroid/support/v4/view/br;
return-object v0
.end method
.method public final b(I)V
.registers 5
if-gtz p1, :cond_1d
const-string v0, "ViewPager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Requested offscreen page limit "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " too small; defaulting to 1"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
const/4 p1, 0x1
:cond_1d
iget v0, p0, Landroid/support/v4/view/ViewPager;->z:I
if-eq p1, v0, :cond_26
iput p1, p0, Landroid/support/v4/view/ViewPager;->z:I
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->d()V
:cond_26
return-void
.end method
.method final c()V
.registers 11
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
invoke-virtual {v0}, Landroid/support/v4/view/ah;->b()I
move-result v8
iput v8, p0, Landroid/support/v4/view/ViewPager;->b:I
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
iget v3, p0, Landroid/support/v4/view/ViewPager;->z:I
mul-int/lit8 v3, v3, 0x2
add-int/lit8 v3, v3, 0x1
if-ge v0, v3, :cond_7a
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v0, v8, :cond_7a
move v0, v1
:goto_21
iget v3, p0, Landroid/support/v4/view/ViewPager;->i:I
move v4, v2
move v5, v3
move v6, v0
move v3, v2
:goto_27
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v3, v0, :cond_8e
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/view/bo;
iget-object v7, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
iget-object v9, v0, Landroid/support/v4/view/bo;->a:Ljava/lang/Object;
invoke-virtual {v7, v9}, Landroid/support/v4/view/ah;->a(Ljava/lang/Object;)I
move-result v7
const/4 v9, -0x1
if-eq v7, v9, :cond_c1
const/4 v9, -0x2
if-ne v7, v9, :cond_7c
iget-object v6, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
add-int/lit8 v3, v3, -0x1
if-nez v4, :cond_54
iget-object v4, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
invoke-virtual {v4, p0}, Landroid/support/v4/view/ah;->a(Landroid/view/ViewGroup;)V
move v4, v1
:cond_54
iget-object v6, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
iget v7, v0, Landroid/support/v4/view/bo;->b:I
iget-object v9, v0, Landroid/support/v4/view/bo;->a:Ljava/lang/Object;
invoke-virtual {v6, p0, v7, v9}, Landroid/support/v4/view/ah;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
iget v6, p0, Landroid/support/v4/view/ViewPager;->i:I
iget v0, v0, Landroid/support/v4/view/bo;->b:I
if-ne v6, v0, :cond_c6
iget v0, p0, Landroid/support/v4/view/ViewPager;->i:I
add-int/lit8 v5, v8, -0x1
invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I
move-result v0
invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I
move-result v5
move v0, v3
move v3, v4
move v4, v5
move v5, v1
:goto_73
add-int/lit8 v0, v0, 0x1
move v6, v5
move v5, v4
move v4, v3
move v3, v0
goto :goto_27
:cond_7a
move v0, v2
goto :goto_21
:cond_7c
iget v9, v0, Landroid/support/v4/view/bo;->b:I
if-eq v9, v7, :cond_c1
iget v6, v0, Landroid/support/v4/view/bo;->b:I
iget v9, p0, Landroid/support/v4/view/ViewPager;->i:I
if-ne v6, v9, :cond_87
move v5, v7
:cond_87
iput v7, v0, Landroid/support/v4/view/bo;->b:I
move v0, v3
move v3, v4
move v4, v5
move v5, v1
goto :goto_73
:cond_8e
if-eqz v4, :cond_95
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
invoke-virtual {v0, p0}, Landroid/support/v4/view/ah;->b(Landroid/view/ViewGroup;)V
:cond_95
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
sget-object v3, Landroid/support/v4/view/ViewPager;->c:Ljava/util/Comparator;
invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
if-eqz v6, :cond_c0
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I
move-result v4
move v3, v2
:goto_a3
if-ge v3, v4, :cond_ba
invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;
iget-boolean v6, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z
if-nez v6, :cond_b6
const/4 v6, 0x0
iput v6, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->c:F
:cond_b6
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_a3
:cond_ba
invoke-direct {p0, v5, v2, v1}, Landroid/support/v4/view/ViewPager;->a(IZZ)V
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V
:cond_c0
return-void
:cond_c1
move v0, v3
move v3, v4
move v4, v5
move v5, v6
goto :goto_73
:cond_c6
move v0, v3
move v3, v4
move v4, v5
move v5, v1
goto :goto_73
.end method
.method public canScrollHorizontally(I)Z
.registers 7
const/4 v1, 0x1
const/4 v0, 0x0
iget-object v2, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
if-nez v2, :cond_7
:goto_6
:cond_6
return v0
:cond_7
invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->g()I
move-result v2
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I
move-result v3
if-gez p1, :cond_1a
int-to-float v2, v2
iget v4, p0, Landroid/support/v4/view/ViewPager;->s:F
mul-float/2addr v2, v4
float-to-int v2, v2
if-le v3, v2, :cond_6
move v0, v1
goto :goto_6
:cond_1a
if-lez p1, :cond_6
int-to-float v2, v2
iget v4, p0, Landroid/support/v4/view/ViewPager;->t:F
mul-float/2addr v2, v4
float-to-int v2, v2
if-ge v3, v2, :cond_6
move v0, v1
goto :goto_6
.end method
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
.registers 3
instance-of v0, p1, Landroid/support/v4/view/ViewPager$LayoutParams;
if-eqz v0, :cond_c
invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
move-result v0
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public computeScroll()V
.registers 5
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;
invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z
move-result v0
if-nez v0, :cond_3e
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;
invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z
move-result v0
if-eqz v0, :cond_3e
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I
move-result v0
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I
move-result v1
iget-object v2, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;
invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I
move-result v2
iget-object v3, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;
invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I
move-result v3
if-ne v0, v2, :cond_28
if-eq v1, v3, :cond_3a
:cond_28
invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V
invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->f(I)Z
move-result v0
if-nez v0, :cond_3a
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;
invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V
const/4 v0, 0x0
invoke-virtual {p0, v0, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V
:cond_3a
invoke-static {p0}, Landroid/support/v4/view/at;->c(Landroid/view/View;)V
:goto_3d
return-void
:cond_3e
const/4 v0, 0x1
invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->a(Z)V
goto :goto_3d
.end method
.method final d()V
.registers 2
iget v0, p0, Landroid/support/v4/view/ViewPager;->i:I
invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->d(I)V
return-void
.end method
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.registers 6
const/4 v1, 0x1
const/4 v0, 0x0
invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
move-result v2
if-nez v2, :cond_18
invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I
move-result v2
if-nez v2, :cond_15
invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I
move-result v2
sparse-switch v2, :sswitch_data_46
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
invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->g(I)Z
move-result v2
goto :goto_16
:sswitch_21
const/16 v2, 0x42
invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->g(I)Z
move-result v2
goto :goto_16
:sswitch_28
sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0xb
if-lt v2, v3, :cond_15
invoke-static {p1}, Landroid/support/v4/view/s;->b(Landroid/view/KeyEvent;)Z
move-result v2
if-eqz v2, :cond_3a
const/4 v2, 0x2
invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->g(I)Z
move-result v2
goto :goto_16
:cond_3a
invoke-static {p1}, Landroid/support/v4/view/s;->a(Landroid/view/KeyEvent;)Z
move-result v2
if-eqz v2, :cond_15
invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->g(I)Z
move-result v2
goto :goto_16
nop
:sswitch_data_46
.sparse-switch
0x15 -> :sswitch_1a
0x16 -> :sswitch_21
0x3d -> :sswitch_28
.end sparse-switch
.end method
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
.registers 8
const/4 v0, 0x0
invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I
move-result v1
const/16 v2, 0x1000
if-ne v1, v2, :cond_e
invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
move-result v0
:goto_d
:cond_d
return v0
:cond_e
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I
move-result v2
move v1, v0
:goto_13
if-ge v1, v2, :cond_d
invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v3}, Landroid/view/View;->getVisibility()I
move-result v4
if-nez v4, :cond_33
invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/bo;
move-result-object v4
if-eqz v4, :cond_33
iget v4, v4, Landroid/support/v4/view/bo;->b:I
iget v5, p0, Landroid/support/v4/view/ViewPager;->i:I
if-ne v4, v5, :cond_33
invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
move-result v3
if-eqz v3, :cond_33
const/4 v0, 0x1
goto :goto_d
:cond_33
add-int/lit8 v1, v1, 0x1
goto :goto_13
.end method
.method public draw(Landroid/graphics/Canvas;)V
.registers 9
const/4 v2, 0x1
invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V
const/4 v0, 0x0
invoke-static {p0}, Landroid/support/v4/view/at;->b(Landroid/view/View;)I
move-result v1
if-eqz v1, :cond_19
if-ne v1, v2, :cond_a3
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
if-eqz v1, :cond_a3
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
invoke-virtual {v1}, Landroid/support/v4/view/ah;->b()I
move-result v1
if-le v1, v2, :cond_a3
:cond_19
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Q:Landroid/support/v4/widget/i;
invoke-virtual {v1}, Landroid/support/v4/widget/i;->a()Z
move-result v1
if-nez v1, :cond_5a
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
move-result v1
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I
move-result v0
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I
move-result v2
sub-int/2addr v0, v2
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I
move-result v2
sub-int/2addr v0, v2
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I
move-result v2
const/high16 v3, 0x4387
invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V
neg-int v3, v0
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I
move-result v4
add-int/2addr v3, v4
int-to-float v3, v3
iget v4, p0, Landroid/support/v4/view/ViewPager;->s:F
int-to-float v5, v2
mul-float/2addr v4, v5
invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V
iget-object v3, p0, Landroid/support/v4/view/ViewPager;->Q:Landroid/support/v4/widget/i;
invoke-virtual {v3, v0, v2}, Landroid/support/v4/widget/i;->a(II)V
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Q:Landroid/support/v4/widget/i;
invoke-virtual {v0, p1}, Landroid/support/v4/widget/i;->a(Landroid/graphics/Canvas;)Z
move-result v0
or-int/lit8 v0, v0, 0x0
invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V
:cond_5a
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->R:Landroid/support/v4/widget/i;
invoke-virtual {v1}, Landroid/support/v4/widget/i;->a()Z
move-result v1
if-nez v1, :cond_9d
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
move-result v1
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I
move-result v2
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I
move-result v3
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I
move-result v4
sub-int/2addr v3, v4
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I
move-result v4
sub-int/2addr v3, v4
const/high16 v4, 0x42b4
invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I
move-result v4
neg-int v4, v4
int-to-float v4, v4
iget v5, p0, Landroid/support/v4/view/ViewPager;->t:F
const/high16 v6, 0x3f80
add-float/2addr v5, v6
neg-float v5, v5
int-to-float v6, v2
mul-float/2addr v5, v6
invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V
iget-object v4, p0, Landroid/support/v4/view/ViewPager;->R:Landroid/support/v4/widget/i;
invoke-virtual {v4, v3, v2}, Landroid/support/v4/widget/i;->a(II)V
iget-object v2, p0, Landroid/support/v4/view/ViewPager;->R:Landroid/support/v4/widget/i;
invoke-virtual {v2, p1}, Landroid/support/v4/widget/i;->a(Landroid/graphics/Canvas;)Z
move-result v2
or-int/2addr v0, v2
invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V
:goto_9d
:cond_9d
if-eqz v0, :cond_a2
invoke-static {p0}, Landroid/support/v4/view/at;->c(Landroid/view/View;)V
:cond_a2
return-void
:cond_a3
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->Q:Landroid/support/v4/widget/i;
invoke-virtual {v1}, Landroid/support/v4/widget/i;->b()V
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->R:Landroid/support/v4/widget/i;
invoke-virtual {v1}, Landroid/support/v4/widget/i;->b()V
goto :goto_9d
.end method
.method protected drawableStateChanged()V
.registers 3
invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->p:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_14
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z
move-result v1
if-eqz v1, :cond_14
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDrawableState()[I
move-result-object v1
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z
:cond_14
return-void
.end method
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
.registers 2
new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;
invoke-direct {v0}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>()V
return-object v0
.end method
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
.registers 4
new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1, p1}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-object v0
.end method
.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
.registers 3
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
return-object v0
.end method
.method protected getChildDrawingOrder(II)I
.registers 5
iget v0, p0, Landroid/support/v4/view/ViewPager;->ac:I
const/4 v1, 0x2
if-ne v0, v1, :cond_9
add-int/lit8 v0, p1, -0x1
sub-int p2, v0, p2
:cond_9
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ad:Ljava/util/ArrayList;
invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;
iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->f:I
return v0
.end method
.method protected onAttachedToWindow()V
.registers 2
invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->S:Z
return-void
.end method
.method protected onDetachedFromWindow()V
.registers 2
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->af:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z
invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V
return-void
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 18
invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V
move-object/from16 v0, p0
iget v1, v0, Landroid/support/v4/view/ViewPager;->o:I
if-lez v1, :cond_c5
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v4/view/ViewPager;->p:Landroid/graphics/drawable/Drawable;
if-eqz v1, :cond_c5
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-lez v1, :cond_c5
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
if-eqz v1, :cond_c5
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I
move-result v6
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I
move-result v7
move-object/from16 v0, p0
iget v1, v0, Landroid/support/v4/view/ViewPager;->o:I
int-to-float v1, v1
int-to-float v2, v7
div-float v8, v1, v2
const/4 v5, 0x0
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/view/bo;
iget v4, v1, Landroid/support/v4/view/bo;->e:F
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v9
iget v3, v1, Landroid/support/v4/view/bo;->b:I
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
add-int/lit8 v10, v9, -0x1
invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/view/bo;
iget v10, v2, Landroid/support/v4/view/bo;->b:I
move v2, v5
move v5, v3
:goto_57
if-ge v5, v10, :cond_c5
:goto_59
iget v3, v1, Landroid/support/v4/view/bo;->b:I
if-le v5, v3, :cond_6c
if-ge v2, v9, :cond_6c
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
add-int/lit8 v2, v2, 0x1
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/view/bo;
goto :goto_59
:cond_6c
iget v3, v1, Landroid/support/v4/view/bo;->b:I
if-ne v5, v3, :cond_b6
iget v3, v1, Landroid/support/v4/view/bo;->e:F
iget v4, v1, Landroid/support/v4/view/bo;->d:F
add-float/2addr v3, v4
int-to-float v4, v7
mul-float/2addr v3, v4
iget v4, v1, Landroid/support/v4/view/bo;->e:F
iget v11, v1, Landroid/support/v4/view/bo;->d:F
add-float/2addr v4, v11
add-float/2addr v4, v8
:goto_7d
move-object/from16 v0, p0
iget v11, v0, Landroid/support/v4/view/ViewPager;->o:I
int-to-float v11, v11
add-float/2addr v11, v3
int-to-float v12, v6
cmpl-float v11, v11, v12
if-lez v11, :cond_ab
move-object/from16 v0, p0
iget-object v11, v0, Landroid/support/v4/view/ViewPager;->p:Landroid/graphics/drawable/Drawable;
float-to-int v12, v3
move-object/from16 v0, p0
iget v13, v0, Landroid/support/v4/view/ViewPager;->q:I
move-object/from16 v0, p0
iget v14, v0, Landroid/support/v4/view/ViewPager;->o:I
int-to-float v14, v14
add-float/2addr v14, v3
const/high16 v15, 0x3f00
add-float/2addr v14, v15
float-to-int v14, v14
move-object/from16 v0, p0
iget v15, v0, Landroid/support/v4/view/ViewPager;->r:I
invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
move-object/from16 v0, p0
iget-object v11, v0, Landroid/support/v4/view/ViewPager;->p:Landroid/graphics/drawable/Drawable;
move-object/from16 v0, p1
invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
:cond_ab
add-int v11, v6, v7
int-to-float v11, v11
cmpl-float v3, v3, v11
if-gtz v3, :cond_c5
add-int/lit8 v3, v5, 0x1
move v5, v3
goto :goto_57
:cond_b6
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
invoke-virtual {v3, v5}, Landroid/support/v4/view/ah;->c(I)F
move-result v11
add-float v3, v4, v11
int-to-float v12, v7
mul-float/2addr v3, v12
add-float/2addr v11, v8
add-float/2addr v4, v11
goto :goto_7d
:cond_c5
return-void
.end method
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.registers 15
const/4 v3, -0x1
const/4 v12, 0x0
const/4 v6, 0x1
const/4 v2, 0x0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
and-int/lit16 v0, v0, 0xff
const/4 v1, 0x3
if-eq v0, v1, :cond_f
if-ne v0, v6, :cond_22
:cond_f
iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->A:Z
iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->B:Z
iput v3, p0, Landroid/support/v4/view/ViewPager;->J:I
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->K:Landroid/view/VelocityTracker;
if-eqz v0, :cond_21
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->K:Landroid/view/VelocityTracker;
invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/view/ViewPager;->K:Landroid/view/VelocityTracker;
:goto_21
:cond_21
return v2
:cond_22
if-eqz v0, :cond_2e
iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->A:Z
if-eqz v1, :cond_2a
move v2, v6
goto :goto_21
:cond_2a
iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->B:Z
if-nez v1, :cond_21
:cond_2e
sparse-switch v0, :sswitch_data_13a
:goto_31
:cond_31
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->K:Landroid/view/VelocityTracker;
if-nez v0, :cond_3b
invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/view/ViewPager;->K:Landroid/view/VelocityTracker;
:cond_3b
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->K:Landroid/view/VelocityTracker;
invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->A:Z
goto :goto_21
:sswitch_43
iget v0, p0, Landroid/support/v4/view/ViewPager;->J:I
if-eq v0, v3, :cond_31
invoke-static {p1, v0}, Landroid/support/v4/view/ad;->a(Landroid/view/MotionEvent;I)I
move-result v0
invoke-static {p1, v0}, Landroid/support/v4/view/ad;->c(Landroid/view/MotionEvent;I)F
move-result v7
iget v1, p0, Landroid/support/v4/view/ViewPager;->F:F
sub-float v8, v7, v1
invoke-static {v8}, Ljava/lang/Math;->abs(F)F
move-result v9
invoke-static {p1, v0}, Landroid/support/v4/view/ad;->d(Landroid/view/MotionEvent;I)F
move-result v10
iget v0, p0, Landroid/support/v4/view/ViewPager;->I:F
sub-float v0, v10, v0
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v11
cmpl-float v0, v8, v12
if-eqz v0, :cond_9b
iget v0, p0, Landroid/support/v4/view/ViewPager;->F:F
iget v1, p0, Landroid/support/v4/view/ViewPager;->D:I
int-to-float v1, v1
cmpg-float v1, v0, v1
if-gez v1, :cond_74
cmpl-float v1, v8, v12
if-gtz v1, :cond_84
:cond_74
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I
move-result v1
iget v3, p0, Landroid/support/v4/view/ViewPager;->D:I
sub-int/2addr v1, v3
int-to-float v1, v1
cmpl-float v0, v0, v1
if-lez v0, :cond_99
cmpg-float v0, v8, v12
if-gez v0, :cond_99
:cond_84
move v0, v6
:goto_85
if-nez v0, :cond_9b
float-to-int v3, v8
float-to-int v4, v7
float-to-int v5, v10
move-object v0, p0
move-object v1, p0
invoke-direct/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z
move-result v0
if-eqz v0, :cond_9b
iput v7, p0, Landroid/support/v4/view/ViewPager;->F:F
iput v10, p0, Landroid/support/v4/view/ViewPager;->G:F
iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->B:Z
goto :goto_21
:cond_99
move v0, v2
goto :goto_85
:cond_9b
iget v0, p0, Landroid/support/v4/view/ViewPager;->E:I
int-to-float v0, v0
cmpl-float v0, v9, v0
if-lez v0, :cond_d8
const/high16 v0, 0x3f00
mul-float/2addr v0, v9
cmpl-float v0, v0, v11
if-lez v0, :cond_d8
iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->A:Z
invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->i()V
invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->c(I)V
cmpl-float v0, v8, v12
if-lez v0, :cond_d1
iget v0, p0, Landroid/support/v4/view/ViewPager;->H:F
iget v1, p0, Landroid/support/v4/view/ViewPager;->E:I
int-to-float v1, v1
add-float/2addr v0, v1
:goto_bb
iput v0, p0, Landroid/support/v4/view/ViewPager;->F:F
iput v10, p0, Landroid/support/v4/view/ViewPager;->G:F
invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->b(Z)V
:goto_c2
:cond_c2
iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->A:Z
if-eqz v0, :cond_31
invoke-direct {p0, v7}, Landroid/support/v4/view/ViewPager;->a(F)Z
move-result v0
if-eqz v0, :cond_31
invoke-static {p0}, Landroid/support/v4/view/at;->c(Landroid/view/View;)V
goto/16 :goto_31
:cond_d1
iget v0, p0, Landroid/support/v4/view/ViewPager;->H:F
iget v1, p0, Landroid/support/v4/view/ViewPager;->E:I
int-to-float v1, v1
sub-float/2addr v0, v1
goto :goto_bb
:cond_d8
iget v0, p0, Landroid/support/v4/view/ViewPager;->E:I
int-to-float v0, v0
cmpl-float v0, v11, v0
if-lez v0, :cond_c2
iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->B:Z
goto :goto_c2
:sswitch_e2
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
iput v0, p0, Landroid/support/v4/view/ViewPager;->H:F
iput v0, p0, Landroid/support/v4/view/ViewPager;->F:F
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v0
iput v0, p0, Landroid/support/v4/view/ViewPager;->I:F
iput v0, p0, Landroid/support/v4/view/ViewPager;->G:F
invoke-static {p1, v2}, Landroid/support/v4/view/ad;->b(Landroid/view/MotionEvent;I)I
move-result v0
iput v0, p0, Landroid/support/v4/view/ViewPager;->J:I
iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->B:Z
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;
invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z
iget v0, p0, Landroid/support/v4/view/ViewPager;->ag:I
const/4 v1, 0x2
if-ne v0, v1, :cond_12d
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;
invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I
move-result v0
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;
invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I
move-result v1
sub-int/2addr v0, v1
invoke-static {v0}, Ljava/lang/Math;->abs(I)I
move-result v0
iget v1, p0, Landroid/support/v4/view/ViewPager;->O:I
if-le v0, v1, :cond_12d
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;
invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V
iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->y:Z
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->d()V
iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->A:Z
invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->i()V
invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->c(I)V
goto/16 :goto_31
:cond_12d
invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->a(Z)V
iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->A:Z
goto/16 :goto_31
:sswitch_134
invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/MotionEvent;)V
goto/16 :goto_31
nop
:sswitch_data_13a
.sparse-switch
0x0 -> :sswitch_e2
0x2 -> :sswitch_43
0x6 -> :sswitch_134
.end sparse-switch
.end method
.method protected onLayout(ZIIII)V
.registers 23
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I
move-result v9
sub-int v10, p4, p2
sub-int v11, p5, p3
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I
move-result v6
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I
move-result v2
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I
move-result v5
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I
move-result v3
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I
move-result v12
const/4 v4, 0x0
const/4 v1, 0x0
move v8, v1
:goto_1f
if-ge v8, v9, :cond_be
move-object/from16 v0, p0
invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;
move-result-object v13
invoke-virtual {v13}, Landroid/view/View;->getVisibility()I
move-result v1
const/16 v7, 0x8
if-eq v1, v7, :cond_141
invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
check-cast v1, Landroid/support/v4/view/ViewPager$LayoutParams;
iget-boolean v7, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z
if-eqz v7, :cond_141
iget v7, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I
and-int/lit8 v7, v7, 0x7
iget v1, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I
and-int/lit8 v14, v1, 0x70
packed-switch v7, :pswitch_data_148
:pswitch_44
move v7, v6
:goto_45
sparse-switch v14, :sswitch_data_156
move v1, v2
move/from16 v16, v3
move v3, v2
move/from16 v2, v16
:goto_4e
add-int/2addr v7, v12
invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I
move-result v14
add-int/2addr v14, v7
invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I
move-result v15
add-int/2addr v15, v1
invoke-virtual {v13, v7, v1, v14, v15}, Landroid/view/View;->layout(IIII)V
add-int/lit8 v1, v4, 0x1
move v4, v3
move v3, v2
move v2, v5
move v5, v6
:goto_62
add-int/lit8 v6, v8, 0x1
move v8, v6
move v6, v5
move v5, v2
move v2, v4
move v4, v1
goto :goto_1f
:pswitch_6a
invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I
move-result v1
add-int/2addr v1, v6
move v7, v6
move v6, v1
goto :goto_45
:pswitch_72
invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I
move-result v1
sub-int v1, v10, v1
div-int/lit8 v1, v1, 0x2
invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I
move-result v1
move v7, v1
goto :goto_45
:pswitch_80
sub-int v1, v10, v5
invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I
move-result v7
sub-int/2addr v1, v7
invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I
move-result v7
add-int/2addr v5, v7
move v7, v1
goto :goto_45
:sswitch_8e
invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I
move-result v1
add-int/2addr v1, v2
move/from16 v16, v2
move v2, v3
move v3, v1
move/from16 v1, v16
goto :goto_4e
:sswitch_9a
invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I
move-result v1
sub-int v1, v11, v1
div-int/lit8 v1, v1, 0x2
invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I
move-result v1
move/from16 v16, v3
move v3, v2
move/from16 v2, v16
goto :goto_4e
:sswitch_ac
sub-int v1, v11, v3
invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I
move-result v14
sub-int/2addr v1, v14
invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I
move-result v14
add-int/2addr v3, v14
move/from16 v16, v3
move v3, v2
move/from16 v2, v16
goto :goto_4e
:cond_be
sub-int v1, v10, v6
sub-int v7, v1, v5
const/4 v1, 0x0
move v5, v1
:goto_c4
if-ge v5, v9, :cond_11b
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;
move-result-object v8
invoke-virtual {v8}, Landroid/view/View;->getVisibility()I
move-result v1
const/16 v10, 0x8
if-eq v1, v10, :cond_117
invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
check-cast v1, Landroid/support/v4/view/ViewPager$LayoutParams;
iget-boolean v10, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z
if-nez v10, :cond_117
move-object/from16 v0, p0
invoke-direct {v0, v8}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/bo;
move-result-object v10
if-eqz v10, :cond_117
int-to-float v12, v7
iget v10, v10, Landroid/support/v4/view/bo;->e:F
mul-float/2addr v10, v12
float-to-int v10, v10
add-int/2addr v10, v6
iget-boolean v12, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->d:Z
if-eqz v12, :cond_10a
const/4 v12, 0x0
iput-boolean v12, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->d:Z
int-to-float v12, v7
iget v1, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->c:F
mul-float/2addr v1, v12
float-to-int v1, v1
const/high16 v12, 0x4000
invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v1
sub-int v12, v11, v2
sub-int/2addr v12, v3
const/high16 v13, 0x4000
invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v12
invoke-virtual {v8, v1, v12}, Landroid/view/View;->measure(II)V
:cond_10a
invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I
move-result v1
add-int/2addr v1, v10
invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I
move-result v12
add-int/2addr v12, v2
invoke-virtual {v8, v10, v2, v1, v12}, Landroid/view/View;->layout(IIII)V
:cond_117
add-int/lit8 v1, v5, 0x1
move v5, v1
goto :goto_c4
:cond_11b
move-object/from16 v0, p0
iput v2, v0, Landroid/support/v4/view/ViewPager;->q:I
sub-int v1, v11, v3
move-object/from16 v0, p0
iput v1, v0, Landroid/support/v4/view/ViewPager;->r:I
move-object/from16 v0, p0
iput v4, v0, Landroid/support/v4/view/ViewPager;->V:I
move-object/from16 v0, p0
iget-boolean v1, v0, Landroid/support/v4/view/ViewPager;->S:Z
if-eqz v1, :cond_13b
move-object/from16 v0, p0
iget v1, v0, Landroid/support/v4/view/ViewPager;->i:I
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
move-object/from16 v0, p0
invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/view/ViewPager;->a(IZIZ)V
:cond_13b
const/4 v1, 0x0
move-object/from16 v0, p0
iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->S:Z
return-void
:cond_141
move v1, v4
move v4, v2
move v2, v5
move v5, v6
goto/16 :goto_62
nop
:sswitch_data_156
.sparse-switch
0x10 -> :sswitch_9a
0x30 -> :sswitch_8e
0x50 -> :sswitch_ac
.end sparse-switch
:pswitch_data_148
.packed-switch 0x1
:pswitch_72
:pswitch_44
:pswitch_6a
:pswitch_44
:pswitch_80
.end packed-switch
.end method
.method protected onMeasure(II)V
.registers 16
const/4 v0, 0x0
invoke-static {v0, p1}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I
move-result v0
const/4 v1, 0x0
invoke-static {v1, p2}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I
move-result v1
invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->setMeasuredDimension(II)V
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I
move-result v0
div-int/lit8 v1, v0, 0xa
iget v2, p0, Landroid/support/v4/view/ViewPager;->C:I
invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I
move-result v1
iput v1, p0, Landroid/support/v4/view/ViewPager;->D:I
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I
move-result v1
sub-int/2addr v0, v1
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I
move-result v1
sub-int v3, v0, v1
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I
move-result v0
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I
move-result v1
sub-int/2addr v0, v1
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I
move-result v1
sub-int v5, v0, v1
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I
move-result v9
const/4 v0, 0x0
move v8, v0
:goto_3b
if-ge v8, v9, :cond_bc
invoke-virtual {p0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;
move-result-object v10
invoke-virtual {v10}, Landroid/view/View;->getVisibility()I
move-result v0
const/16 v1, 0x8
if-eq v0, v1, :cond_a5
invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;
if-eqz v0, :cond_a5
iget-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z
if-eqz v1, :cond_a5
iget v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I
and-int/lit8 v6, v1, 0x7
iget v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I
and-int/lit8 v4, v1, 0x70
const/high16 v2, -0x8000
const/high16 v1, -0x8000
const/16 v7, 0x30
if-eq v4, v7, :cond_69
const/16 v7, 0x50
if-ne v4, v7, :cond_a9
:cond_69
const/4 v4, 0x1
move v7, v4
:goto_6b
const/4 v4, 0x3
if-eq v6, v4, :cond_71
const/4 v4, 0x5
if-ne v6, v4, :cond_ac
:cond_71
const/4 v4, 0x1
move v6, v4
:goto_73
if-eqz v7, :cond_af
const/high16 v2, 0x4000
:goto_77
:cond_77
iget v4, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I
const/4 v11, -0x2
if-eq v4, v11, :cond_10f
const/high16 v4, 0x4000
iget v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I
const/4 v11, -0x1
if-eq v2, v11, :cond_10c
iget v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I
:goto_85
iget v11, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I
const/4 v12, -0x2
if-eq v11, v12, :cond_10a
const/high16 v1, 0x4000
iget v11, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I
const/4 v12, -0x1
if-eq v11, v12, :cond_10a
iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I
:goto_93
invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
invoke-virtual {v10, v2, v0}, Landroid/view/View;->measure(II)V
if-eqz v7, :cond_b4
invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I
move-result v0
sub-int/2addr v5, v0
:goto_a5
:cond_a5
add-int/lit8 v0, v8, 0x1
move v8, v0
goto :goto_3b
:cond_a9
const/4 v4, 0x0
move v7, v4
goto :goto_6b
:cond_ac
const/4 v4, 0x0
move v6, v4
goto :goto_73
:cond_af
if-eqz v6, :cond_77
const/high16 v1, 0x4000
goto :goto_77
:cond_b4
if-eqz v6, :cond_a5
invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I
move-result v0
sub-int/2addr v3, v0
goto :goto_a5
:cond_bc
const/high16 v0, 0x4000
invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
iput v0, p0, Landroid/support/v4/view/ViewPager;->u:I
const/high16 v0, 0x4000
invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
iput v0, p0, Landroid/support/v4/view/ViewPager;->v:I
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->w:Z
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->d()V
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->w:Z
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I
move-result v2
const/4 v0, 0x0
move v1, v0
:goto_db
if-ge v1, v2, :cond_109
invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;
move-result-object v4
invoke-virtual {v4}, Landroid/view/View;->getVisibility()I
move-result v0
const/16 v5, 0x8
if-eq v0, v5, :cond_105
invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;
if-eqz v0, :cond_f5
iget-boolean v5, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z
if-nez v5, :cond_105
:cond_f5
int-to-float v5, v3
iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->c:F
mul-float/2addr v0, v5
float-to-int v0, v0
const/high16 v5, 0x4000
invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
iget v5, p0, Landroid/support/v4/view/ViewPager;->v:I
invoke-virtual {v4, v0, v5}, Landroid/view/View;->measure(II)V
:cond_105
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_db
:cond_109
return-void
:cond_10a
move v0, v5
goto :goto_93
:cond_10c
move v2, v3
goto/16 :goto_85
:cond_10f
move v4, v2
move v2, v3
goto/16 :goto_85
.end method
.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
.registers 11
const/4 v2, 0x1
const/4 v4, 0x0
const/4 v1, -0x1
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I
move-result v0
and-int/lit8 v3, p1, 0x2
if-eqz v3, :cond_2c
move v1, v2
move v3, v4
:goto_d
if-eq v3, v0, :cond_33
invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;
move-result-object v5
invoke-virtual {v5}, Landroid/view/View;->getVisibility()I
move-result v6
if-nez v6, :cond_31
invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/bo;
move-result-object v6
if-eqz v6, :cond_31
iget v6, v6, Landroid/support/v4/view/bo;->b:I
iget v7, p0, Landroid/support/v4/view/ViewPager;->i:I
if-ne v6, v7, :cond_31
invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z
move-result v5
if-eqz v5, :cond_31
:goto_2b
return v2
:cond_2c
add-int/lit8 v0, v0, -0x1
move v3, v0
move v0, v1
goto :goto_d
:cond_31
add-int/2addr v3, v1
goto :goto_d
:cond_33
move v2, v4
goto :goto_2b
.end method
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
.registers 5
const-string v1, " + Landroid/support/v4/view/ViewPager; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
instance-of v0, p1, Landroid/support/v4/view/ViewPager$SavedState;
if-nez v0, :cond_8
invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V
:goto_7
const-string v1, " - Landroid/support/v4/view/ViewPager; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_8
check-cast p1, Landroid/support/v4/view/ViewPager$SavedState;
invoke-virtual {p1}, Landroid/support/v4/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;
move-result-object v0
invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
if-eqz v0, :cond_26
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
iget-object v1, p1, Landroid/support/v4/view/ViewPager$SavedState;->b:Landroid/os/Parcelable;
iget-object v2, p1, Landroid/support/v4/view/ViewPager$SavedState;->c:Ljava/lang/ClassLoader;
invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ah;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->a:I
const/4 v1, 0x0
const/4 v2, 0x1
invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/view/ViewPager;->a(IZZ)V
goto :goto_7
:cond_26
iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->a:I
iput v0, p0, Landroid/support/v4/view/ViewPager;->j:I
iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->b:Landroid/os/Parcelable;
iput-object v0, p0, Landroid/support/v4/view/ViewPager;->k:Landroid/os/Parcelable;
iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->c:Ljava/lang/ClassLoader;
iput-object v0, p0, Landroid/support/v4/view/ViewPager;->l:Ljava/lang/ClassLoader;
goto :goto_7
.end method
.method public onSaveInstanceState()Landroid/os/Parcelable;
.registers 4
const-string v1, " + Landroid/support/v4/view/ViewPager; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v0
new-instance v1, Landroid/support/v4/view/ViewPager$SavedState;
invoke-direct {v1, v0}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V
iget v0, p0, Landroid/support/v4/view/ViewPager;->i:I
iput v0, v1, Landroid/support/v4/view/ViewPager$SavedState;->a:I
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
if-eqz v0, :cond_19
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
invoke-virtual {v0}, Landroid/support/v4/view/ah;->a()Landroid/os/Parcelable;
move-result-object v0
iput-object v0, v1, Landroid/support/v4/view/ViewPager$SavedState;->b:Landroid/os/Parcelable;
:cond_19
move-object v2, v1
const-string v1, " - Landroid/support/v4/view/ViewPager; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move-object v1, v2
return-object v1
.end method
.method protected onSizeChanged(IIII)V
.registers 11
const/4 v2, 0x0
invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V
if-eq p1, p3, :cond_65
iget v0, p0, Landroid/support/v4/view/ViewPager;->o:I
iget v1, p0, Landroid/support/v4/view/ViewPager;->o:I
if-lez p3, :cond_66
iget-object v3, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z
move-result v3
if-nez v3, :cond_66
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I
move-result v3
sub-int v3, p1, v3
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I
move-result v4
sub-int/2addr v3, v4
add-int/2addr v0, v3
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I
move-result v3
sub-int v3, p3, v3
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I
move-result v4
sub-int/2addr v3, v4
add-int/2addr v1, v3
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I
move-result v3
int-to-float v3, v3
int-to-float v1, v1
div-float v1, v3, v1
int-to-float v0, v0
mul-float/2addr v0, v1
float-to-int v1, v0
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I
move-result v0
invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;
invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z
move-result v0
if-nez v0, :cond_65
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;
invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I
move-result v0
iget-object v3, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;
invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I
move-result v3
sub-int v5, v0, v3
iget v0, p0, Landroid/support/v4/view/ViewPager;->i:I
invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->e(I)Landroid/support/v4/view/bo;
move-result-object v3
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;
iget v3, v3, Landroid/support/v4/view/bo;->e:F
int-to-float v4, p1
mul-float/2addr v3, v4
float-to-int v3, v3
move v4, v2
invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V
:cond_65
:goto_65
return-void
:cond_66
iget v0, p0, Landroid/support/v4/view/ViewPager;->i:I
invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->e(I)Landroid/support/v4/view/bo;
move-result-object v0
if-eqz v0, :cond_95
iget v0, v0, Landroid/support/v4/view/bo;->e:F
iget v1, p0, Landroid/support/v4/view/ViewPager;->t:F
invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F
move-result v0
:goto_76
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I
move-result v1
sub-int v1, p1, v1
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I
move-result v3
sub-int/2addr v1, v3
int-to-float v1, v1
mul-float/2addr v0, v1
float-to-int v0, v0
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I
move-result v1
if-eq v0, v1, :cond_65
invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->a(Z)V
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I
move-result v1
invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V
goto :goto_65
:cond_95
const/4 v0, 0x0
goto :goto_76
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 10
const/4 v7, -0x1
const/4 v4, 0x0
const/4 v3, 0x1
iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->P:Z
if-eqz v0, :cond_9
move v0, v3
:goto_8
return v0
:cond_9
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
if-nez v0, :cond_17
invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I
move-result v0
if-eqz v0, :cond_17
move v0, v4
goto :goto_8
:cond_17
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
if-eqz v0, :cond_23
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/ah;
invoke-virtual {v0}, Landroid/support/v4/view/ah;->b()I
move-result v0
if-nez v0, :cond_25
:cond_23
move v0, v4
goto :goto_8
:cond_25
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->K:Landroid/view/VelocityTracker;
if-nez v0, :cond_2f
invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/view/ViewPager;->K:Landroid/view/VelocityTracker;
:cond_2f
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->K:Landroid/view/VelocityTracker;
invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
and-int/lit16 v0, v0, 0xff
packed-switch v0, :pswitch_data_1c0
:pswitch_3d
:goto_3d
:cond_3d
if-eqz v4, :cond_42
invoke-static {p0}, Landroid/support/v4/view/at;->c(Landroid/view/View;)V
:cond_42
move v0, v3
goto :goto_8
:pswitch_44
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/widget/Scroller;
invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V
iput-boolean v4, p0, Landroid/support/v4/view/ViewPager;->y:Z
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->d()V
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
iput v0, p0, Landroid/support/v4/view/ViewPager;->H:F
iput v0, p0, Landroid/support/v4/view/ViewPager;->F:F
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v0
iput v0, p0, Landroid/support/v4/view/ViewPager;->I:F
iput v0, p0, Landroid/support/v4/view/ViewPager;->G:F
invoke-static {p1, v4}, Landroid/support/v4/view/ad;->b(Landroid/view/MotionEvent;I)I
move-result v0
iput v0, p0, Landroid/support/v4/view/ViewPager;->J:I
goto :goto_3d
:pswitch_65
iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->A:Z
if-nez v0, :cond_b9
iget v0, p0, Landroid/support/v4/view/ViewPager;->J:I
invoke-static {p1, v0}, Landroid/support/v4/view/ad;->a(Landroid/view/MotionEvent;I)I
move-result v0
invoke-static {p1, v0}, Landroid/support/v4/view/ad;->c(Landroid/view/MotionEvent;I)F
move-result v1
iget v2, p0, Landroid/support/v4/view/ViewPager;->F:F
sub-float v2, v1, v2
invoke-static {v2}, Ljava/lang/Math;->abs(F)F
move-result v2
invoke-static {p1, v0}, Landroid/support/v4/view/ad;->d(Landroid/view/MotionEvent;I)F
move-result v5
iget v0, p0, Landroid/support/v4/view/ViewPager;->G:F
sub-float v0, v5, v0
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v0
iget v6, p0, Landroid/support/v4/view/ViewPager;->E:I
int-to-float v6, v6
cmpl-float v6, v2, v6
if-lez v6, :cond_b9
cmpl-float v0, v2, v0
if-lez v0, :cond_b9
iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->A:Z
invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->i()V
iget v0, p0, Landroid/support/v4/view/ViewPager;->H:F
sub-float v0, v1, v0
const/4 v1, 0x0
cmpl-float v0, v0, v1
if-lez v0, :cond_cf
iget v0, p0, Landroid/support/v4/view/ViewPager;->H:F
iget v1, p0, Landroid/support/v4/view/ViewPager;->E:I
int-to-float v1, v1
add-float/2addr v0, v1
:goto_a6
iput v0, p0, Landroid/support/v4/view/ViewPager;->F:F
iput v5, p0, Landroid/support/v4/view/ViewPager;->G:F
invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->c(I)V
invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->b(Z)V
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-eqz v0, :cond_b9
invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
:cond_b9
iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->A:Z
if-eqz v0, :cond_3d
iget v0, p0, Landroid/support/v4/view/ViewPager;->J:I
invoke-static {p1, v0}, Landroid/support/v4/view/ad;->a(Landroid/view/MotionEvent;I)I
move-result v0
invoke-static {p1, v0}, Landroid/support/v4/view/ad;->c(Landroid/view/MotionEvent;I)F
move-result v0
invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->a(F)Z
move-result v0
or-int/lit8 v4, v0, 0x0
goto/16 :goto_3d
:cond_cf
iget v0, p0, Landroid/support/v4/view/ViewPager;->H:F
iget v1, p0, Landroid/support/v4/view/ViewPager;->E:I
int-to-float v1, v1
sub-float/2addr v0, v1
goto :goto_a6
:pswitch_d6
iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->A:Z
if-eqz v0, :cond_3d
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->K:Landroid/view/VelocityTracker;
const/16 v1, 0x3e8
iget v2, p0, Landroid/support/v4/view/ViewPager;->M:I
int-to-float v2, v2
invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V
iget v1, p0, Landroid/support/v4/view/ViewPager;->J:I
invoke-static {v0, v1}, Landroid/support/v4/view/ap;->a(Landroid/view/VelocityTracker;I)F
move-result v0
float-to-int v5, v0
iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->y:Z
invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->g()I
move-result v1
invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I
move-result v2
invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->j()Landroid/support/v4/view/bo;
move-result-object v6
iget v0, v6, Landroid/support/v4/view/bo;->b:I
int-to-float v2, v2
int-to-float v1, v1
div-float v1, v2, v1
iget v2, v6, Landroid/support/v4/view/bo;->e:F
sub-float/2addr v1, v2
iget v2, v6, Landroid/support/v4/view/bo;->d:F
div-float v2, v1, v2
iget v1, p0, Landroid/support/v4/view/ViewPager;->J:I
invoke-static {p1, v1}, Landroid/support/v4/view/ad;->a(Landroid/view/MotionEvent;I)I
move-result v1
invoke-static {p1, v1}, Landroid/support/v4/view/ad;->c(Landroid/view/MotionEvent;I)F
move-result v1
iget v6, p0, Landroid/support/v4/view/ViewPager;->H:F
sub-float/2addr v1, v6
float-to-int v1, v1
invoke-static {v1}, Ljava/lang/Math;->abs(I)I
move-result v1
iget v6, p0, Landroid/support/v4/view/ViewPager;->N:I
if-le v1, v6, :cond_16e
invoke-static {v5}, Ljava/lang/Math;->abs(I)I
move-result v1
iget v6, p0, Landroid/support/v4/view/ViewPager;->L:I
if-le v1, v6, :cond_16e
if-lez v5, :cond_16b
:goto_126
move v2, v0
:goto_127
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_153
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/view/bo;
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
iget-object v4, p0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v4
add-int/lit8 v4, v4, -0x1
invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/view/bo;
iget v0, v0, Landroid/support/v4/view/bo;->b:I
iget v1, v1, Landroid/support/v4/view/bo;->b:I
invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v2
:cond_153
invoke-direct {p0, v2, v3, v3, v5}, Landroid/support/v4/view/ViewPager;->a(IZZI)V
iput v7, p0, Landroid/support/v4/view/ViewPager;->J:I
invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->k()V
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Q:Landroid/support/v4/widget/i;
invoke-virtual {v0}, Landroid/support/v4/widget/i;->c()Z
move-result v0
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->R:Landroid/support/v4/widget/i;
invoke-virtual {v1}, Landroid/support/v4/widget/i;->c()Z
move-result v1
or-int v4, v0, v1
goto/16 :goto_3d
:cond_16b
add-int/lit8 v0, v0, 0x1
goto :goto_126
:cond_16e
iget v1, p0, Landroid/support/v4/view/ViewPager;->i:I
if-lt v0, v1, :cond_17b
const v1, 0x3ecccccd
:goto_175
int-to-float v0, v0
add-float/2addr v0, v2
add-float/2addr v0, v1
float-to-int v0, v0
move v2, v0
goto :goto_127
:cond_17b
const v1, 0x3f19999a
goto :goto_175
:pswitch_17f
iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->A:Z
if-eqz v0, :cond_3d
iget v0, p0, Landroid/support/v4/view/ViewPager;->i:I
invoke-direct {p0, v0, v3, v4, v4}, Landroid/support/v4/view/ViewPager;->a(IZIZ)V
iput v7, p0, Landroid/support/v4/view/ViewPager;->J:I
invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->k()V
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Q:Landroid/support/v4/widget/i;
invoke-virtual {v0}, Landroid/support/v4/widget/i;->c()Z
move-result v0
iget-object v1, p0, Landroid/support/v4/view/ViewPager;->R:Landroid/support/v4/widget/i;
invoke-virtual {v1}, Landroid/support/v4/widget/i;->c()Z
move-result v1
or-int v4, v0, v1
goto/16 :goto_3d
:pswitch_19d
invoke-static {p1}, Landroid/support/v4/view/ad;->b(Landroid/view/MotionEvent;)I
move-result v0
invoke-static {p1, v0}, Landroid/support/v4/view/ad;->c(Landroid/view/MotionEvent;I)F
move-result v1
iput v1, p0, Landroid/support/v4/view/ViewPager;->F:F
invoke-static {p1, v0}, Landroid/support/v4/view/ad;->b(Landroid/view/MotionEvent;I)I
move-result v0
iput v0, p0, Landroid/support/v4/view/ViewPager;->J:I
goto/16 :goto_3d
:pswitch_1af
invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/MotionEvent;)V
iget v0, p0, Landroid/support/v4/view/ViewPager;->J:I
invoke-static {p1, v0}, Landroid/support/v4/view/ad;->a(Landroid/view/MotionEvent;I)I
move-result v0
invoke-static {p1, v0}, Landroid/support/v4/view/ad;->c(Landroid/view/MotionEvent;I)F
move-result v0
iput v0, p0, Landroid/support/v4/view/ViewPager;->F:F
goto/16 :goto_3d
:pswitch_data_1c0
.packed-switch 0x0
:pswitch_44
:pswitch_d6
:pswitch_65
:pswitch_17f
:pswitch_3d
:pswitch_19d
:pswitch_1af
.end packed-switch
.end method
.method public removeView(Landroid/view/View;)V
.registers 3
iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->w:Z
if-eqz v0, :cond_8
invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->removeViewInLayout(Landroid/view/View;)V
:goto_7
return-void
:cond_8
invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
goto :goto_7
.end method
.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
.registers 3
invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
move-result v0
if-nez v0, :cond_a
iget-object v0, p0, Landroid/support/v4/view/ViewPager;->p:Landroid/graphics/drawable/Drawable;
if-ne p1, v0, :cond_c
:cond_a
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method