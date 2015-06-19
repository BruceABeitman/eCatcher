.class public Landroid/support/v4/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"
.field static final a:Landroid/support/v4/widget/w;
.field private b:I
.field private c:I
.field private d:Landroid/graphics/drawable/Drawable;
.field private final e:I
.field private f:Z
.field private g:Landroid/view/View;
.field private h:F
.field private i:F
.field private j:I
.field private k:Z
.field private l:I
.field private m:F
.field private n:F
.field private o:Landroid/support/v4/widget/v;
.field private final p:Landroid/support/v4/widget/ad;
.field private q:Z
.field private r:Z
.field private final s:Landroid/graphics/Rect;
.field private final t:Ljava/util/ArrayList;
.method static constructor <clinit>()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x11
if-lt v0, v1, :cond_e
new-instance v0, Landroid/support/v4/widget/z;
invoke-direct {v0}, Landroid/support/v4/widget/z;-><init>()V
sput-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->a:Landroid/support/v4/widget/w;
:goto_d
return-void
:cond_e
const/16 v1, 0x10
if-lt v0, v1, :cond_1a
new-instance v0, Landroid/support/v4/widget/y;
invoke-direct {v0}, Landroid/support/v4/widget/y;-><init>()V
sput-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->a:Landroid/support/v4/widget/w;
goto :goto_d
:cond_1a
new-instance v0, Landroid/support/v4/widget/x;
invoke-direct {v0}, Landroid/support/v4/widget/x;-><init>()V
sput-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->a:Landroid/support/v4/widget/w;
goto :goto_d
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 9
const/4 v4, 0x1
const/4 v3, 0x0
const/high16 v2, 0x3f00
invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const v0, -0x33333334
iput v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->b:I
iput-boolean v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->r:Z
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->s:Landroid/graphics/Rect;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->t:Ljava/util/ArrayList;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
const/high16 v1, 0x4200
mul-float/2addr v1, v0
add-float/2addr v1, v2
float-to-int v1, v1
iput v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->e:I
invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
invoke-virtual {p0, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->setWillNotDraw(Z)V
new-instance v1, Landroid/support/v4/widget/s;
invoke-direct {v1, p0}, Landroid/support/v4/widget/s;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;)V
invoke-static {p0, v1}, Landroid/support/v4/view/at;->a(Landroid/view/View;Landroid/support/v4/view/a;)V
invoke-static {p0}, Landroid/support/v4/view/at;->e(Landroid/view/View;)V
new-instance v1, Landroid/support/v4/widget/u;
invoke-direct {v1, p0, v3}, Landroid/support/v4/widget/u;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;B)V
invoke-static {p0, v2, v1}, Landroid/support/v4/widget/ad;->a(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ae;)Landroid/support/v4/widget/ad;
move-result-object v1
iput-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/ad;
iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/ad;
invoke-virtual {v1, v4}, Landroid/support/v4/widget/ad;->a(I)V
iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/ad;
const/high16 v2, 0x43c8
mul-float/2addr v0, v2
invoke-virtual {v1, v0}, Landroid/support/v4/widget/ad;->a(F)V
return-void
.end method
.method static synthetic a(Landroid/support/v4/widget/SlidingPaneLayout;I)V
.registers 5
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;
if-nez v0, :cond_8
const/4 v0, 0x0
iput v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F
:cond_7
:goto_7
return-void
:cond_8
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I
move-result v1
iget v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I
add-int/2addr v1, v2
sub-int v1, p1, v1
int-to-float v1, v1
iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->j:I
int-to-float v2, v2
div-float/2addr v1, v2
iput v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F
iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->l:I
if-eqz v1, :cond_29
iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F
invoke-direct {p0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->b(F)V
:cond_29
iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->c:Z
if-eqz v0, :cond_36
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;
iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F
iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->b:I
invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/view/View;FI)V
:cond_36
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Landroid/support/v4/widget/v;
if-eqz v0, :cond_7
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Landroid/support/v4/widget/v;
iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F
goto :goto_7
.end method
.method static synthetic a(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->c(Landroid/view/View;)V
return-void
.end method
.method private a(Landroid/view/View;FI)V
.registers 10
const/4 v5, 0x2
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
const/4 v1, 0x0
cmpl-float v1, p2, v1
if-lez v1, :cond_43
if-eqz p3, :cond_43
const/high16 v1, -0x100
and-int/2addr v1, p3
ushr-int/lit8 v1, v1, 0x18
int-to-float v1, v1
mul-float/2addr v1, p2
float-to-int v1, v1
shl-int/lit8 v1, v1, 0x18
const v2, 0xffffff
and-int/2addr v2, p3
or-int/2addr v1, v2
iget-object v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;
if-nez v2, :cond_28
new-instance v2, Landroid/graphics/Paint;
invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V
iput-object v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;
:cond_28
iget-object v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;
new-instance v3, Landroid/graphics/PorterDuffColorFilter;
sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;
invoke-direct {v3, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V
invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
invoke-static {p1}, Landroid/support/v4/view/at;->f(Landroid/view/View;)I
move-result v1
if-eq v1, v5, :cond_3f
iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;
invoke-static {p1, v5, v0}, Landroid/support/v4/view/at;->a(Landroid/view/View;ILandroid/graphics/Paint;)V
:cond_3f
invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->c(Landroid/view/View;)V
:goto_42
:cond_42
return-void
:cond_43
invoke-static {p1}, Landroid/support/v4/view/at;->f(Landroid/view/View;)I
move-result v1
if-eqz v1, :cond_42
iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;
if-eqz v1, :cond_53
iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
:cond_53
new-instance v0, Landroid/support/v4/widget/t;
invoke-direct {v0, p0, p1}, Landroid/support/v4/widget/t;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->t:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-static {p0, v0}, Landroid/support/v4/view/at;->a(Landroid/view/View;Ljava/lang/Runnable;)V
goto :goto_42
.end method
.method private a(F)Z
.registers 7
const/4 v1, 0x0
iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z
if-nez v0, :cond_7
move v0, v1
:goto_6
return v0
:cond_7
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I
move-result v2
iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I
add-int/2addr v0, v2
int-to-float v0, v0
iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->j:I
int-to-float v2, v2
mul-float/2addr v2, p1
add-float/2addr v0, v2
float-to-int v0, v0
iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/ad;
iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;
iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getTop()I
move-result v4
invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/widget/ad;->a(Landroid/view/View;II)Z
move-result v0
if-eqz v0, :cond_35
invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->c()V
invoke-static {p0}, Landroid/support/v4/view/at;->c(Landroid/view/View;)V
const/4 v0, 0x1
goto :goto_6
:cond_35
move v0, v1
goto :goto_6
.end method
.method static synthetic a(Landroid/support/v4/widget/SlidingPaneLayout;)Z
.registers 2
iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->k:Z
return v0
.end method
.method static synthetic a(Landroid/support/v4/widget/SlidingPaneLayout;Z)Z
.registers 2
iput-boolean p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->q:Z
return p1
.end method
.method static synthetic b(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/support/v4/widget/ad;
.registers 2
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/ad;
return-object v0
.end method
.method private b(F)V
.registers 10
const/4 v1, 0x0
const/high16 v7, 0x3f80
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
iget-boolean v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->c:Z
if-eqz v2, :cond_46
iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I
if-gtz v0, :cond_46
const/4 v0, 0x1
:goto_14
invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I
move-result v2
:goto_18
if-ge v1, v2, :cond_48
invoke-virtual {p0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;
move-result-object v3
iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;
if-eq v3, v4, :cond_43
iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->i:F
sub-float v4, v7, v4
iget v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->l:I
int-to-float v5, v5
mul-float/2addr v4, v5
float-to-int v4, v4
iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->i:F
sub-float v5, v7, p1
iget v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->l:I
int-to-float v6, v6
mul-float/2addr v5, v6
float-to-int v5, v5
sub-int/2addr v4, v5
invoke-virtual {v3, v4}, Landroid/view/View;->offsetLeftAndRight(I)V
if-eqz v0, :cond_43
iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->i:F
sub-float v4, v7, v4
iget v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->c:I
invoke-direct {p0, v3, v4, v5}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/view/View;FI)V
:cond_43
add-int/lit8 v1, v1, 0x1
goto :goto_18
:cond_46
move v0, v1
goto :goto_14
:cond_48
return-void
.end method
.method static synthetic c(Landroid/support/v4/widget/SlidingPaneLayout;)F
.registers 2
iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F
return v0
.end method
.method private c(Landroid/view/View;)V
.registers 3
sget-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->a:Landroid/support/v4/widget/w;
invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/w;->a(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
return-void
.end method
.method static synthetic d(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;
.registers 2
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;
return-object v0
.end method
.method private d()Z
.registers 3
const/4 v0, 0x0
iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->r:Z
if-nez v1, :cond_c
const/4 v1, 0x0
invoke-direct {p0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->a(F)Z
move-result v1
if-eqz v1, :cond_f
:cond_c
iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->q:Z
const/4 v0, 0x1
:cond_f
return v0
.end method
.method static synthetic e(Landroid/support/v4/widget/SlidingPaneLayout;)I
.registers 2
iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->j:I
return v0
.end method
.method static synthetic f(Landroid/support/v4/widget/SlidingPaneLayout;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->t:Ljava/util/ArrayList;
return-object v0
.end method
.method final a()V
.registers 2
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Landroid/support/v4/widget/v;
if-eqz v0, :cond_6
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Landroid/support/v4/widget/v;
:cond_6
const/16 v0, 0x20
invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V
return-void
.end method
.method final a(Landroid/view/View;)V
.registers 18
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I
move-result v7
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I
move-result v1
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I
move-result v2
sub-int v8, v1, v2
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I
move-result v9
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getHeight()I
move-result v1
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I
move-result v2
sub-int v10, v1, v2
if-eqz p1, :cond_92
invoke-static/range {p1 .. p1}, Landroid/support/v4/view/at;->i(Landroid/view/View;)Z
move-result v1
if-eqz v1, :cond_79
const/4 v1, 0x1
:goto_25
if-eqz v1, :cond_92
invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I
move-result v4
invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I
move-result v3
invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I
move-result v2
invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I
move-result v1
:goto_37
const/4 v5, 0x0
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I
move-result v11
move v6, v5
:goto_3d
if-ge v6, v11, :cond_99
move-object/from16 v0, p0
invoke-virtual {v0, v6}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;
move-result-object v12
move-object/from16 v0, p1
if-eq v12, v0, :cond_99
invoke-virtual {v12}, Landroid/view/View;->getLeft()I
move-result v5
invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I
move-result v5
invoke-virtual {v12}, Landroid/view/View;->getTop()I
move-result v13
invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I
move-result v13
invoke-virtual {v12}, Landroid/view/View;->getRight()I
move-result v14
invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I
move-result v14
invoke-virtual {v12}, Landroid/view/View;->getBottom()I
move-result v15
invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I
move-result v15
if-lt v5, v4, :cond_97
if-lt v13, v2, :cond_97
if-gt v14, v3, :cond_97
if-gt v15, v1, :cond_97
const/4 v5, 0x4
:goto_72
invoke-virtual {v12, v5}, Landroid/view/View;->setVisibility(I)V
add-int/lit8 v5, v6, 0x1
move v6, v5
goto :goto_3d
:cond_79
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x12
if-ge v1, v2, :cond_90
invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v1
if-eqz v1, :cond_90
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I
move-result v1
const/4 v2, -0x1
if-ne v1, v2, :cond_8e
const/4 v1, 0x1
goto :goto_25
:cond_8e
const/4 v1, 0x0
goto :goto_25
:cond_90
const/4 v1, 0x0
goto :goto_25
:cond_92
const/4 v1, 0x0
move v2, v1
move v3, v1
move v4, v1
goto :goto_37
:cond_97
const/4 v5, 0x0
goto :goto_72
:cond_99
return-void
.end method
.method final b()V
.registers 2
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Landroid/support/v4/widget/v;
if-eqz v0, :cond_6
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->o:Landroid/support/v4/widget/v;
:cond_6
const/16 v0, 0x20
invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V
return-void
.end method
.method final b(Landroid/view/View;)Z
.registers 5
const/4 v1, 0x0
if-nez p1, :cond_5
move v0, v1
:goto_4
return v0
:cond_5
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z
if-eqz v2, :cond_1c
iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->c:Z
if-eqz v0, :cond_1c
iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F
const/4 v2, 0x0
cmpl-float v0, v0, v2
if-lez v0, :cond_1c
const/4 v0, 0x1
goto :goto_4
:cond_1c
move v0, v1
goto :goto_4
.end method
.method final c()V
.registers 7
const/4 v1, 0x0
invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I
move-result v2
move v0, v1
:goto_6
if-ge v0, v2, :cond_19
invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v3}, Landroid/view/View;->getVisibility()I
move-result v4
const/4 v5, 0x4
if-ne v4, v5, :cond_16
invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V
:cond_16
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_19
return-void
.end method
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
.registers 3
instance-of v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
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
.registers 2
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/ad;
invoke-virtual {v0}, Landroid/support/v4/widget/ad;->g()Z
move-result v0
if-eqz v0, :cond_11
iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z
if-nez v0, :cond_12
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/ad;
invoke-virtual {v0}, Landroid/support/v4/widget/ad;->f()V
:goto_11
:cond_11
return-void
:cond_12
invoke-static {p0}, Landroid/support/v4/view/at;->c(Landroid/view/View;)V
goto :goto_11
.end method
.method public draw(Landroid/graphics/Canvas;)V
.registers 7
const/4 v1, 0x1
invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V
invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I
move-result v0
if-le v0, v1, :cond_15
invoke-virtual {p0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;
move-result-object v0
:goto_e
if-eqz v0, :cond_14
iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->d:Landroid/graphics/drawable/Drawable;
if-nez v1, :cond_17
:goto_14
:cond_14
return-void
:cond_15
const/4 v0, 0x0
goto :goto_e
:cond_17
iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->d:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v1
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v2
invoke-virtual {v0}, Landroid/view/View;->getTop()I
move-result v3
invoke-virtual {v0}, Landroid/view/View;->getBottom()I
move-result v0
sub-int v1, v2, v1
iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->d:Landroid/graphics/drawable/Drawable;
invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->d:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
goto :goto_14
.end method
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
.registers 11
const/4 v1, 0x0
invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
const/4 v2, 0x2
invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I
move-result v2
iget-boolean v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z
if-eqz v3, :cond_34
iget-boolean v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->b:Z
if-nez v3, :cond_34
iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;
if-eqz v3, :cond_34
iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->s:Landroid/graphics/Rect;
invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z
iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->s:Landroid/graphics/Rect;
iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->s:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->right:I
iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;
invoke-virtual {v5}, Landroid/view/View;->getLeft()I
move-result v5
invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I
move-result v4
iput v4, v3, Landroid/graphics/Rect;->right:I
iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->s:Landroid/graphics/Rect;
invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z
:cond_34
sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v4, 0xb
if-ge v3, v4, :cond_83
iget-boolean v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->c:Z
if-eqz v3, :cond_88
iget v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F
const/4 v4, 0x0
cmpl-float v3, v3, v4
if-lez v3, :cond_88
invoke-virtual {p2}, Landroid/view/View;->isDrawingCacheEnabled()Z
move-result v3
if-nez v3, :cond_4f
const/4 v3, 0x1
invoke-virtual {p2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
:cond_4f
invoke-virtual {p2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;
move-result-object v3
if-eqz v3, :cond_69
invoke-virtual {p2}, Landroid/view/View;->getLeft()I
move-result v4
int-to-float v4, v4
invoke-virtual {p2}, Landroid/view/View;->getTop()I
move-result v5
int-to-float v5, v5
iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;
invoke-virtual {p1, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
move v0, v1
:goto_65
invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V
return v0
:cond_69
const-string v0, "SlidingPaneLayout"
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "drawChild: child view "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, " returned null drawing cache"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:cond_83
:goto_83
invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
move-result v0
goto :goto_65
:cond_88
invoke-virtual {p2}, Landroid/view/View;->isDrawingCacheEnabled()Z
move-result v0
if-eqz v0, :cond_83
invoke-virtual {p2, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
goto :goto_83
.end method
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
.registers 2
new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>()V
return-object v0
.end method
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
.registers 4
new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-object v0
.end method
.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
.registers 3
instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;
if-eqz v0, :cond_c
new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;
invoke-direct {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
:goto_b
return-object v0
:cond_c
new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
invoke-direct {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
goto :goto_b
.end method
.method protected onAttachedToWindow()V
.registers 2
invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->r:Z
return-void
.end method
.method protected onDetachedFromWindow()V
.registers 4
invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->r:Z
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->t:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v2
move v1, v0
:goto_e
if-ge v1, v2, :cond_1f
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->t:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/widget/t;
invoke-virtual {v0}, Landroid/support/v4/widget/t;->run()V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_e
:cond_1f
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->t:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
return-void
.end method
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.registers 8
const/4 v2, 0x0
const/4 v1, 0x1
invoke-static {p1}, Landroid/support/v4/view/ad;->a(Landroid/view/MotionEvent;)I
move-result v3
iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z
if-nez v0, :cond_2d
if-nez v3, :cond_2d
invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I
move-result v0
if-le v0, v1, :cond_2d
invoke-virtual {p0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_2d
iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/ad;
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v4
float-to-int v4, v4
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v5
float-to-int v5, v5
invoke-static {v0, v4, v5}, Landroid/support/v4/widget/ad;->b(Landroid/view/View;II)Z
move-result v0
if-nez v0, :cond_41
move v0, v1
:goto_2b
iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->q:Z
:cond_2d
iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z
if-eqz v0, :cond_37
iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->k:Z
if-eqz v0, :cond_43
if-eqz v3, :cond_43
:cond_37
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/ad;
invoke-virtual {v0}, Landroid/support/v4/widget/ad;->e()V
invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
move-result v2
:goto_40
:cond_40
return v2
:cond_41
move v0, v2
goto :goto_2b
:cond_43
const/4 v0, 0x3
if-eq v3, v0, :cond_48
if-ne v3, v1, :cond_4e
:cond_48
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/ad;
invoke-virtual {v0}, Landroid/support/v4/widget/ad;->e()V
goto :goto_40
:cond_4e
packed-switch v3, :pswitch_data_b0
:pswitch_51
:cond_51
move v0, v2
:goto_52
iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/ad;
invoke-virtual {v3, p1}, Landroid/support/v4/widget/ad;->a(Landroid/view/MotionEvent;)Z
move-result v3
if-nez v3, :cond_5c
if-eqz v0, :cond_40
:cond_5c
move v2, v1
goto :goto_40
:pswitch_5e
iput-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->k:Z
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v3
iput v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->m:F
iput v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->n:F
iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/ad;
iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;
float-to-int v0, v0
float-to-int v3, v3
invoke-static {v4, v0, v3}, Landroid/support/v4/widget/ad;->b(Landroid/view/View;II)Z
move-result v0
if-eqz v0, :cond_51
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;
invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->b(Landroid/view/View;)Z
move-result v0
if-eqz v0, :cond_51
move v0, v1
goto :goto_52
:pswitch_82
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v3
iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->m:F
sub-float/2addr v0, v4
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v0
iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->n:F
sub-float/2addr v3, v4
invoke-static {v3}, Ljava/lang/Math;->abs(F)F
move-result v3
iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/ad;
invoke-virtual {v4}, Landroid/support/v4/widget/ad;->d()I
move-result v4
int-to-float v4, v4
cmpl-float v4, v0, v4
if-lez v4, :cond_51
cmpl-float v0, v3, v0
if-lez v0, :cond_51
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/ad;
invoke-virtual {v0}, Landroid/support/v4/widget/ad;->e()V
iput-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->k:Z
goto :goto_40
nop
:pswitch_data_b0
.packed-switch 0x0
:pswitch_5e
:pswitch_51
:pswitch_82
.end packed-switch
.end method
.method protected onLayout(ZIIII)V
.registers 20
sub-int v6, p4, p2
invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I
move-result v3
invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I
move-result v7
invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I
move-result v8
invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I
move-result v9
iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->r:Z
if-eqz v0, :cond_22
iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z
if-eqz v0, :cond_88
iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->q:Z
if-eqz v0, :cond_88
const/high16 v0, 0x3f80
:goto_20
iput v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F
:cond_22
const/4 v0, 0x0
move v5, v0
move v4, v3
:goto_25
if-ge v5, v9, :cond_a1
invoke-virtual {p0, v5}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;
move-result-object v10
invoke-virtual {v10}, Landroid/view/View;->getVisibility()I
move-result v0
const/16 v1, 0x8
if-eq v0, v1, :cond_e2
invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I
move-result v11
const/4 v2, 0x0
iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->b:Z
if-eqz v1, :cond_8c
iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I
iget v12, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I
add-int/2addr v1, v12
sub-int v12, v6, v7
iget v13, p0, Landroid/support/v4/widget/SlidingPaneLayout;->e:I
sub-int/2addr v12, v13
invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I
move-result v12
sub-int/2addr v12, v4
sub-int/2addr v12, v1
iput v12, p0, Landroid/support/v4/widget/SlidingPaneLayout;->j:I
iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I
add-int/2addr v1, v4
add-int/2addr v1, v12
div-int/lit8 v13, v11, 0x2
add-int/2addr v1, v13
sub-int v13, v6, v7
if-le v1, v13, :cond_8a
const/4 v1, 0x1
:goto_60
iput-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->c:Z
int-to-float v1, v12
iget v12, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F
mul-float/2addr v1, v12
float-to-int v1, v1
iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I
add-int/2addr v0, v1
add-int/2addr v0, v4
int-to-float v1, v1
iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->j:I
int-to-float v4, v4
div-float/2addr v1, v4
iput v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F
:goto_72
sub-int v1, v0, v2
add-int v2, v1, v11
invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I
move-result v4
add-int/2addr v4, v8
invoke-virtual {v10, v1, v8, v2, v4}, Landroid/view/View;->layout(IIII)V
invoke-virtual {v10}, Landroid/view/View;->getWidth()I
move-result v1
add-int/2addr v3, v1
:goto_83
add-int/lit8 v1, v5, 0x1
move v5, v1
move v4, v0
goto :goto_25
:cond_88
const/4 v0, 0x0
goto :goto_20
:cond_8a
const/4 v1, 0x0
goto :goto_60
:cond_8c
iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z
if-eqz v0, :cond_e0
iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->l:I
if-eqz v0, :cond_e0
const/high16 v0, 0x3f80
iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F
sub-float/2addr v0, v1
iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->l:I
int-to-float v1, v1
mul-float/2addr v0, v1
float-to-int v0, v0
:goto_9e
move v2, v0
move v0, v3
goto :goto_72
:cond_a1
iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->r:Z
if-eqz v0, :cond_cc
iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z
if-eqz v0, :cond_d0
iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->l:I
if-eqz v0, :cond_b2
iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F
invoke-direct {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->b(F)V
:cond_b2
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->c:Z
if-eqz v0, :cond_c7
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;
iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F
iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->b:I
invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/view/View;FI)V
:cond_c7
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;
invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/view/View;)V
:cond_cc
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->r:Z
return-void
:cond_d0
const/4 v0, 0x0
:goto_d1
if-ge v0, v9, :cond_c7
invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;
move-result-object v1
const/4 v2, 0x0
iget v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->b:I
invoke-direct {p0, v1, v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/view/View;FI)V
add-int/lit8 v0, v0, 0x1
goto :goto_d1
:cond_e0
move v0, v2
goto :goto_9e
:cond_e2
move v0, v4
goto :goto_83
.end method
.method protected onMeasure(II)V
.registers 18
invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v3
invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v2
invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v1
invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v0
const/high16 v4, 0x4000
if-eq v3, v4, :cond_7b
invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z
move-result v4
if-eqz v4, :cond_73
const/high16 v4, -0x8000
if-eq v3, v4, :cond_242
if-nez v3, :cond_242
const/16 v2, 0x12c
move v9, v1
move v10, v2
move v2, v0
:goto_25
const/4 v1, 0x0
const/4 v0, -0x1
sparse-switch v9, :sswitch_data_248
move v14, v0
move v0, v1
move v1, v14
:goto_2d
const/4 v3, 0x0
const/4 v6, 0x0
invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I
move-result v2
sub-int v2, v10, v2
invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I
move-result v4
sub-int v5, v2, v4
invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I
move-result v11
const/4 v2, 0x2
if-le v11, v2, :cond_49
const-string v2, "SlidingPaneLayout"
const-string v4, "onMeasure: More than two child views are not supported."
invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:cond_49
const/4 v2, 0x0
iput-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;
const/4 v2, 0x0
move v8, v2
move v7, v0
move v2, v3
:goto_50
if-ge v8, v11, :cond_135
invoke-virtual {p0, v8}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;
move-result-object v12
invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
invoke-virtual {v12}, Landroid/view/View;->getVisibility()I
move-result v3
const/16 v4, 0x8
if-ne v3, v4, :cond_b2
const/4 v3, 0x0
iput-boolean v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->c:Z
move v0, v5
move v3, v2
move v4, v7
move v2, v6
:goto_6b
add-int/lit8 v5, v8, 0x1
move v8, v5
move v6, v2
move v7, v4
move v2, v3
move v5, v0
goto :goto_50
:cond_73
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Width must have an exact value or MATCH_PARENT"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_7b
if-nez v1, :cond_242
invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z
move-result v3
if-eqz v3, :cond_8d
if-nez v1, :cond_242
const/high16 v1, -0x8000
const/16 v0, 0x12c
move v9, v1
move v10, v2
move v2, v0
goto :goto_25
:cond_8d
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Height must not be UNSPECIFIED"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:sswitch_95
invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I
move-result v0
sub-int v0, v2, v0
invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I
move-result v1
sub-int/2addr v0, v1
move v1, v0
goto :goto_2d
:sswitch_a2
invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I
move-result v0
sub-int v0, v2, v0
invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I
move-result v2
sub-int/2addr v0, v2
move v14, v0
move v0, v1
move v1, v14
goto/16 :goto_2d
:cond_b2
iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->a:F
const/4 v4, 0x0
cmpl-float v3, v3, v4
if-lez v3, :cond_c0
iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->a:F
add-float/2addr v2, v3
iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I
if-eqz v3, :cond_23c
:cond_c0
iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I
iget v4, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I
add-int/2addr v3, v4
iget v4, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I
const/4 v13, -0x2
if-ne v4, v13, :cond_107
sub-int v3, v10, v3
const/high16 v4, -0x8000
invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v3
:goto_d2
iget v4, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I
const/4 v13, -0x2
if-ne v4, v13, :cond_11e
const/high16 v4, -0x8000
invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v4
:goto_dd
invoke-virtual {v12, v3, v4}, Landroid/view/View;->measure(II)V
invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I
move-result v3
invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I
move-result v4
const/high16 v13, -0x8000
if-ne v9, v13, :cond_f2
if-le v4, v7, :cond_f2
invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I
move-result v7
:cond_f2
sub-int v4, v5, v3
if-gez v4, :cond_133
const/4 v3, 0x1
:goto_f7
iput-boolean v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->b:Z
or-int/2addr v3, v6
iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->b:Z
if-eqz v0, :cond_100
iput-object v12, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;
:cond_100
move v0, v4
move v4, v7
move v14, v2
move v2, v3
move v3, v14
goto/16 :goto_6b
:cond_107
iget v4, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I
const/4 v13, -0x1
if-ne v4, v13, :cond_115
sub-int v3, v10, v3
const/high16 v4, 0x4000
invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v3
goto :goto_d2
:cond_115
iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I
const/high16 v4, 0x4000
invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v3
goto :goto_d2
:cond_11e
iget v4, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I
const/4 v13, -0x1
if-ne v4, v13, :cond_12a
const/high16 v4, 0x4000
invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v4
goto :goto_dd
:cond_12a
iget v4, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I
const/high16 v13, 0x4000
invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v4
goto :goto_dd
:cond_133
const/4 v3, 0x0
goto :goto_f7
:cond_135
if-nez v6, :cond_13c
const/4 v0, 0x0
cmpl-float v0, v2, v0
if-lez v0, :cond_227
:cond_13c
iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->e:I
sub-int v12, v10, v0
const/4 v0, 0x0
move v9, v0
:goto_142
if-ge v9, v11, :cond_227
invoke-virtual {p0, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;
move-result-object v13
invoke-virtual {v13}, Landroid/view/View;->getVisibility()I
move-result v0
const/16 v3, 0x8
if-eq v0, v3, :cond_198
invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
invoke-virtual {v13}, Landroid/view/View;->getVisibility()I
move-result v3
const/16 v4, 0x8
if-eq v3, v4, :cond_198
iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I
if-nez v3, :cond_19c
iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->a:F
const/4 v4, 0x0
cmpl-float v3, v3, v4
if-lez v3, :cond_19c
const/4 v3, 0x1
move v8, v3
:goto_16b
if-eqz v8, :cond_19f
const/4 v3, 0x0
move v4, v3
:goto_16f
if-eqz v6, :cond_1c5
iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;
if-eq v13, v3, :cond_1c5
iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I
if-gez v3, :cond_198
if-gt v4, v12, :cond_182
iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->a:F
const/4 v4, 0x0
cmpl-float v3, v3, v4
if-lez v3, :cond_198
:cond_182
if-eqz v8, :cond_1ba
iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I
const/4 v4, -0x2
if-ne v3, v4, :cond_1a5
const/high16 v0, -0x8000
invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
:goto_18f
const/high16 v3, 0x4000
invoke-static {v12, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v3
invoke-virtual {v13, v3, v0}, Landroid/view/View;->measure(II)V
:cond_198
:goto_198
add-int/lit8 v0, v9, 0x1
move v9, v0
goto :goto_142
:cond_19c
const/4 v3, 0x0
move v8, v3
goto :goto_16b
:cond_19f
invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I
move-result v3
move v4, v3
goto :goto_16f
:cond_1a5
iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I
const/4 v4, -0x1
if-ne v3, v4, :cond_1b1
const/high16 v0, 0x4000
invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
goto :goto_18f
:cond_1b1
iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I
const/high16 v3, 0x4000
invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
goto :goto_18f
:cond_1ba
invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I
move-result v0
const/high16 v3, 0x4000
invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
goto :goto_18f
:cond_1c5
iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->a:F
const/4 v8, 0x0
cmpl-float v3, v3, v8
if-lez v3, :cond_198
iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I
if-nez v3, :cond_205
iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I
const/4 v8, -0x2
if-ne v3, v8, :cond_1f0
const/high16 v3, -0x8000
invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v3
:goto_1db
if-eqz v6, :cond_210
iget v8, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I
iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I
add-int/2addr v0, v8
sub-int v0, v10, v0
const/high16 v8, 0x4000
invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v8
if-eq v4, v0, :cond_198
invoke-virtual {v13, v8, v3}, Landroid/view/View;->measure(II)V
goto :goto_198
:cond_1f0
iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I
const/4 v8, -0x1
if-ne v3, v8, :cond_1fc
const/high16 v3, 0x4000
invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v3
goto :goto_1db
:cond_1fc
iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I
const/high16 v8, 0x4000
invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v3
goto :goto_1db
:cond_205
invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I
move-result v3
const/high16 v8, 0x4000
invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v3
goto :goto_1db
:cond_210
const/4 v8, 0x0
invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I
move-result v8
iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->a:F
int-to-float v8, v8
mul-float/2addr v0, v8
div-float/2addr v0, v2
float-to-int v0, v0
add-int/2addr v0, v4
const/high16 v4, 0x4000
invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
invoke-virtual {v13, v0, v3}, Landroid/view/View;->measure(II)V
goto/16 :goto_198
:cond_227
invoke-virtual {p0, v10, v7}, Landroid/support/v4/widget/SlidingPaneLayout;->setMeasuredDimension(II)V
iput-boolean v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/ad;
invoke-virtual {v0}, Landroid/support/v4/widget/ad;->a()I
move-result v0
if-eqz v0, :cond_23b
if-nez v6, :cond_23b
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/ad;
invoke-virtual {v0}, Landroid/support/v4/widget/ad;->f()V
:cond_23b
return-void
:cond_23c
move v0, v5
move v3, v2
move v4, v7
move v2, v6
goto/16 :goto_6b
:cond_242
move v9, v1
move v10, v2
move v2, v0
goto/16 :goto_25
nop
:sswitch_data_248
.sparse-switch
-0x80000000 -> :sswitch_a2
0x40000000 -> :sswitch_95
.end sparse-switch
.end method
.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
.registers 4
const-string v1, " + Landroid/support/v4/widget/SlidingPaneLayout; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
check-cast p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;
invoke-virtual {p1}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;
move-result-object v0
invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V
iget-boolean v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->a:Z
if-eqz v0, :cond_23
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;
iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->r:Z
if-nez v0, :cond_1b
const/high16 v0, 0x3f80
invoke-direct {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->a(F)Z
move-result v0
if-eqz v0, :cond_1e
:cond_1b
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->q:Z
:goto_1e
:cond_1e
iget-boolean v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->a:Z
iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->q:Z
const-string v1, " - Landroid/support/v4/widget/SlidingPaneLayout; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_23
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;
invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->d()Z
goto :goto_1e
.end method
.method protected onSaveInstanceState()Landroid/os/Parcelable;
.registers 4
const-string v1, " + Landroid/support/v4/widget/SlidingPaneLayout; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v0
new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;
invoke-direct {v1, v0}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V
iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z
if-eqz v0, :cond_1f
iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z
if-eqz v0, :cond_19
iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->h:F
const/high16 v2, 0x3f80
cmpl-float v0, v0, v2
if-nez v0, :cond_1d
:cond_19
const/4 v0, 0x1
:goto_1a
iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->a:Z
move-object v2, v1
const-string v1, " - Landroid/support/v4/widget/SlidingPaneLayout; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move-object v1, v2
return-object v1
:cond_1d
const/4 v0, 0x0
goto :goto_1a
:cond_1f
iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->q:Z
goto :goto_1a
.end method
.method protected onSizeChanged(IIII)V
.registers 6
invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V
if-eq p1, p3, :cond_8
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->r:Z
:cond_8
return-void
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 7
iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z
if-nez v0, :cond_9
invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
:goto_8
return v0
:cond_9
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/ad;
invoke-virtual {v0, p1}, Landroid/support/v4/widget/ad;->b(Landroid/view/MotionEvent;)V
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
and-int/lit16 v0, v0, 0xff
packed-switch v0, :pswitch_data_60
:cond_17
:goto_17
const/4 v0, 0x1
goto :goto_8
:pswitch_19
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v1
iput v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->m:F
iput v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->n:F
goto :goto_17
:pswitch_26
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;
invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->b(Landroid/view/View;)Z
move-result v0
if-eqz v0, :cond_17
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v1
iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->m:F
sub-float v2, v0, v2
iget v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->n:F
sub-float v3, v1, v3
iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/ad;
invoke-virtual {v4}, Landroid/support/v4/widget/ad;->d()I
move-result v4
mul-float/2addr v2, v2
mul-float/2addr v3, v3
add-float/2addr v2, v3
mul-int v3, v4, v4
int-to-float v3, v3
cmpg-float v2, v2, v3
if-gez v2, :cond_17
iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->p:Landroid/support/v4/widget/ad;
iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;
float-to-int v0, v0
float-to-int v1, v1
invoke-static {v2, v0, v1}, Landroid/support/v4/widget/ad;->b(Landroid/view/View;II)Z
move-result v0
if-eqz v0, :cond_17
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;
invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->d()Z
goto :goto_17
:pswitch_data_60
.packed-switch 0x0
:pswitch_19
:pswitch_26
.end packed-switch
.end method
.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
.registers 4
invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V
invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInTouchMode()Z
move-result v0
if-nez v0, :cond_14
iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->f:Z
if-nez v0, :cond_14
iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->g:Landroid/view/View;
if-ne p1, v0, :cond_15
const/4 v0, 0x1
:goto_12
iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->q:Z
:cond_14
return-void
:cond_15
const/4 v0, 0x0
goto :goto_12
.end method