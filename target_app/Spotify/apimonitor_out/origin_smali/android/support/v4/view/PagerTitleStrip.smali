.class public Landroid/support/v4/view/PagerTitleStrip;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/bn;


# static fields
.field private static final n:[I

.field private static final o:[I

.field private static final q:Landroid/support/v4/view/aj;


# instance fields
.field a:Landroid/support/v4/view/ViewPager;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:I

.field private f:I

.field private g:F

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private final l:Landroid/support/v4/view/ai;

.field private m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/view/ah;",
            ">;"
        }
    .end annotation
.end field

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2a

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->n:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101038c

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->o:[I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_21

    new-instance v0, Landroid/support/v4/view/al;

    invoke-direct {v0}, Landroid/support/v4/view/al;-><init>()V

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->q:Landroid/support/v4/view/aj;

    :goto_20
    return-void

    :cond_21
    new-instance v0, Landroid/support/v4/view/ak;

    invoke-direct {v0}, Landroid/support/v4/view/ak;-><init>()V

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->q:Landroid/support/v4/view/aj;

    goto :goto_20

    nop

    :array_2a
    .array-data 0x4
        0x34t 0x0t 0x1t 0x1t
        0x95t 0x0t 0x1t 0x1t
        0x98t 0x0t 0x1t 0x1t
        0xaft 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    const/4 v5, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/view/PagerTitleStrip;->f:I

    const/high16 v1, -0x4080

    iput v1, p0, Landroid/support/v4/view/PagerTitleStrip;->g:F

    new-instance v1, Landroid/support/v4/view/ai;

    invoke-direct {v1, p0, v0}, Landroid/support/v4/view/ai;-><init>(Landroid/support/v4/view/PagerTitleStrip;B)V

    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->l:Landroid/support/v4/view/ai;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    sget-object v1, Landroid/support/v4/view/PagerTitleStrip;->n:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_4c

    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v3, p1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v3, p1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v3, p1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_4c
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    if-eqz v3, :cond_63

    int-to-float v3, v3

    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_63
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-virtual {v1, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7c
    const/4 v3, 0x3

    const/16 v4, 0x50

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/PagerTitleStrip;->i:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/PagerTitleStrip;->e:I

    const/16 v1, 0x99

    iput v1, p0, Landroid/support/v4/view/PagerTitleStrip;->p:I

    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->p:I

    shl-int/lit8 v1, v1, 0x18

    iget v3, p0, Landroid/support/v4/view/PagerTitleStrip;->e:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    if-eqz v2, :cond_d1

    sget-object v1, Landroid/support/v4/view/PagerTitleStrip;->o:[I

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_d1
    if-eqz v0, :cond_f3

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/PagerTitleStrip;->a(Landroid/widget/TextView;)V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/PagerTitleStrip;->a(Landroid/widget/TextView;)V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/PagerTitleStrip;->a(Landroid/widget/TextView;)V

    :goto_e2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4180

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->h:I

    return-void

    :cond_f3
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    goto :goto_e2
.end method

.method static synthetic a(Landroid/support/v4/view/PagerTitleStrip;)F
    .registers 2

    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->g:F

    return v0
.end method

.method private static a(Landroid/widget/TextView;)V
    .registers 2

    sget-object v0, Landroid/support/v4/view/PagerTitleStrip;->q:Landroid/support/v4/view/aj;

    invoke-interface {v0, p0}, Landroid/support/v4/view/aj;->a(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method a()I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :cond_b
    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->h:I

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    return-void
.end method

.method a(IFZ)V
    .registers 22

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/PagerTitleStrip;->f:I

    move/from16 v0, p1

    if-eq v0, v2, :cond_126

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->a()Landroid/support/v4/view/ah;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->a(ILandroid/support/v4/view/ah;)V

    :cond_17
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v4/view/PagerTitleStrip;->k:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v4, v3, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getHeight()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v12

    add-int v2, v9, v4

    add-int v13, v10, v4

    sub-int v2, v7, v2

    sub-int v14, v2, v13

    const/high16 v2, 0x3f00

    add-float v2, v2, p2

    const/high16 v15, 0x3f80

    cmpl-float v15, v2, v15

    if-lez v15, :cond_63

    const/high16 v15, 0x3f80

    sub-float/2addr v2, v15

    :cond_63
    sub-int v13, v7, v13

    int-to-float v14, v14

    mul-float/2addr v2, v14

    float-to-int v2, v2

    sub-int v2, v13, v2

    sub-int v13, v2, v4

    add-int v14, v13, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBaseline()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getBaseline()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getBaseline()I

    move-result v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v15

    sub-int v2, v15, v2

    sub-int v3, v15, v3

    sub-int/2addr v15, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v16

    add-int v16, v16, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v17

    add-int v17, v17, v15

    move/from16 v0, v16

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, v17

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->i:I

    move/from16 v16, v0

    and-int/lit8 v16, v16, 0x70

    sparse-switch v16, :sswitch_data_146

    add-int v4, v11, v2

    add-int/2addr v3, v11

    add-int v2, v11, v15

    :goto_d0
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v3

    invoke-virtual {v8, v13, v3, v14, v11}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/view/PagerTitleStrip;->h:I

    sub-int v3, v13, v3

    sub-int/2addr v3, v5

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    add-int/2addr v5, v3

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v4

    invoke-virtual {v8, v3, v4, v5, v9}, Landroid/widget/TextView;->layout(IIII)V

    sub-int v3, v7, v10

    sub-int/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/view/PagerTitleStrip;->h:I

    add-int/2addr v4, v14

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    add-int v5, v3, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v4, v3, v2, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/PagerTitleStrip;->g:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v4/view/PagerTitleStrip;->k:Z

    :goto_125
    return-void

    :cond_126
    if-nez p3, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/PagerTitleStrip;->g:F

    cmpl-float v2, p2, v2

    if-nez v2, :cond_17

    goto :goto_125

    :sswitch_131
    sub-int/2addr v8, v11

    sub-int/2addr v8, v12

    sub-int v4, v8, v4

    div-int/lit8 v8, v4, 0x2

    add-int v4, v8, v2

    add-int/2addr v3, v8

    add-int v2, v8, v15

    goto :goto_d0

    :sswitch_13d
    sub-int/2addr v8, v12

    sub-int/2addr v8, v4

    add-int v4, v8, v2

    add-int/2addr v3, v8

    add-int v2, v8, v15

    goto :goto_d0

    nop

    :sswitch_data_146
    .sparse-switch
        0x10 -> :sswitch_131
        0x50 -> :sswitch_13d
    .end sparse-switch
.end method

.method final a(ILandroid/support/v4/view/ah;)V
    .registers 9

    const/high16 v5, -0x8000

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_81

    invoke-virtual {p2}, Landroid/support/v4/view/ah;->b()I

    move-result v0

    :goto_a
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/view/PagerTitleStrip;->j:Z

    if-lez p1, :cond_85

    if-eqz p2, :cond_85

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p2, v2}, Landroid/support/v4/view/ah;->b(I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_17
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    if-eqz p2, :cond_83

    if-ge p1, v0, :cond_83

    invoke-virtual {p2, p1}, Landroid/support/v4/view/ah;->b(I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_26
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, p1, 0x1

    if-ge v2, v0, :cond_35

    if-eqz p2, :cond_35

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v4/view/ah;->b(I)Ljava/lang/CharSequence;

    move-result-object v3

    :cond_35
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v0, v0

    const v3, 0x3f4ccccd

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->measure(II)V

    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->measure(II)V

    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->measure(II)V

    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->f:I

    iget-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->k:Z

    if-nez v0, :cond_7e

    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->g:F

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->a(IFZ)V

    :cond_7e
    iput-boolean v1, p0, Landroid/support/v4/view/PagerTitleStrip;->j:Z

    return-void

    :cond_81
    move v0, v1

    goto :goto_a

    :cond_83
    move-object v2, v3

    goto :goto_26

    :cond_85
    move-object v2, v3

    goto :goto_17
.end method

.method final a(Landroid/support/v4/view/ah;Landroid/support/v4/view/ah;)V
    .registers 4

    if-eqz p1, :cond_a

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->l:Landroid/support/v4/view/ai;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ah;->b(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->m:Ljava/lang/ref/WeakReference;

    :cond_a
    if-eqz p2, :cond_18

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->l:Landroid/support/v4/view/ai;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/ah;->a(Landroid/database/DataSetObserver;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->m:Ljava/lang/ref/WeakReference;

    :cond_18
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2f

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->f:I

    const/high16 v0, -0x4080

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->g:F

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/view/PagerTitleStrip;->a(ILandroid/support/v4/view/ah;)V

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    :cond_2f
    return-void
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->h:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/view/ViewPager;

    if-nez v1, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PagerTitleStrip must be a direct child of a ViewPager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    check-cast v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->a()Landroid/support/v4/view/ah;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->l:Landroid/support/v4/view/ai;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/br;)Landroid/support/v4/view/br;

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->l:Landroid/support/v4/view/ai;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/bq;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_35

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ah;

    :goto_31
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->a(Landroid/support/v4/view/ah;Landroid/support/v4/view/ah;)V

    return-void

    :cond_35
    const/4 v0, 0x0

    goto :goto_31
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->a()Landroid/support/v4/view/ah;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->a(Landroid/support/v4/view/ah;Landroid/support/v4/view/ah;)V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/br;)Landroid/support/v4/view/br;

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/bq;)V

    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    :cond_1d
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_13

    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->g:F

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_d

    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->g:F

    :cond_d
    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->f:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/support/v4/view/PagerTitleStrip;->a(IFZ)V

    :cond_13
    return-void
.end method

.method protected onMeasure(II)V
    .registers 13

    const/high16 v9, 0x4000

    const/high16 v8, -0x8000

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-eq v0, v9, :cond_1e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must measure with an exact width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->a()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    sub-int v5, v3, v4

    int-to-float v6, v2

    const v7, 0x3f4ccccd

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v7, v6, v5}, Landroid/widget/TextView;->measure(II)V

    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v7, v6, v5}, Landroid/widget/TextView;->measure(II)V

    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v7, v6, v5}, Landroid/widget/TextView;->measure(II)V

    if-ne v1, v9, :cond_50

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/PagerTitleStrip;->setMeasuredDimension(II)V

    :goto_4f
    return-void

    :cond_50
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/support/v4/view/PagerTitleStrip;->setMeasuredDimension(II)V

    goto :goto_4f
.end method

.method public requestLayout()V
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->j:Z

    if-nez v0, :cond_7

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_7
    return-void
.end method
