.class public Lcom/viewpagerindicator/TitlePageIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/viewpagerindicator/a;


# static fields
.field private static final a:F = 0.25f

.field private static final b:F = 0.05f

.field private static final x:I = -0x1


# instance fields
.field private A:I

.field private B:Z

.field private C:Lcom/viewpagerindicator/e;

.field private c:Landroid/support/v4/view/ViewPager;

.field private d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private e:Lcom/viewpagerindicator/i;

.field private f:I

.field private g:I

.field private h:I

.field private final i:Landroid/graphics/Paint;

.field private j:Z

.field private k:I

.field private l:I

.field private m:Landroid/graphics/Path;

.field private final n:Landroid/graphics/Paint;

.field private o:Lcom/viewpagerindicator/d;

.field private final p:Landroid/graphics/Paint;

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private y:I

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/TitlePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x7f0100b8

    invoke-direct {p0, p1, p2, v0}, Lcom/viewpagerindicator/TitlePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 24

    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v5, -0x4080

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->z:F

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->A:I

    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080020

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const v7, 0x7f0a002b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    const v8, 0x7f0b0002

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    const v9, 0x7f0a0029

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    const v10, 0x7f0a002a

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    const v11, 0x7f0a002c

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    const v12, 0x7f080021

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    const v13, 0x7f070009

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    const v14, 0x7f080022

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    const v15, 0x7f0a002d

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    const v16, 0x7f0a002e

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    const v17, 0x7f0a0028

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    const v18, 0x7f0a002f

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    sget-object v18, Lcom/twidroid/q;->TitlePageIndicator:[I

    const v19, 0x7f0d00a4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    move/from16 v3, p3

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v18

    const/16 v19, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->w:F

    const/4 v7, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    invoke-static {v7}, Lcom/viewpagerindicator/d;->a(I)Lcom/viewpagerindicator/d;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->o:Lcom/viewpagerindicator/d;

    const/4 v7, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->q:F

    const/4 v7, 0x5

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->r:F

    const/4 v7, 0x6

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->s:F

    const/16 v7, 0xc

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    const/16 v5, 0xb

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->t:F

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->v:F

    const/4 v5, 0x7

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->l:I

    const/16 v5, 0x9

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->k:I

    const/16 v5, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Z

    const/16 v5, 0xa

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    const/4 v7, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->n:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->n:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->n:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->w:F

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->n:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->p:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->p:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->y:I

    return-void
.end method

.method private a(I)I
    .registers 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, 0x4000

    if-eq v0, v2, :cond_2d

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be used in EXACTLY mode."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    return v1
.end method

.method private a(ILandroid/graphics/Paint;)Landroid/graphics/RectF;
    .registers 6

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->e:Lcom/viewpagerindicator/i;

    invoke-interface {v1, p1}, Lcom/viewpagerindicator/i;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method

.method private a(Landroid/graphics/Paint;)Ljava/util/ArrayList;
    .registers 12

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v3

    div-int/lit8 v4, v3, 0x2

    const/4 v0, 0x0

    :goto_16
    if-ge v0, v2, :cond_49

    invoke-direct {p0, v0, p1}, Lcom/viewpagerindicator/TitlePageIndicator;->a(ILandroid/graphics/Paint;)Landroid/graphics/RectF;

    move-result-object v5

    iget v6, v5, Landroid/graphics/RectF;->right:F

    iget v7, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    iget v7, v5, Landroid/graphics/RectF;->bottom:F

    iget v8, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    int-to-float v8, v4

    const/high16 v9, 0x4000

    div-float v9, v6, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/viewpagerindicator/TitlePageIndicator;->g:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/viewpagerindicator/TitlePageIndicator;->f:I

    sub-int v9, v0, v9

    mul-int/2addr v9, v3

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v5, Landroid/graphics/RectF;->left:F

    iget v8, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v8

    iput v6, v5, Landroid/graphics/RectF;->right:F

    const/4 v6, 0x0

    iput v6, v5, Landroid/graphics/RectF;->top:F

    iput v7, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_49
    return-object v1
.end method

.method private a(Landroid/graphics/RectF;FI)V
    .registers 6

    int-to-float v0, p3

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->v:F

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->left:F

    return-void
.end method

.method private b(I)I
    .registers 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, 0x4000

    if-ne v0, v2, :cond_f

    int-to-float v0, v1

    :cond_d
    :goto_d
    float-to-int v0, v0

    return v0

    :cond_f
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v0, v1, v0

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->w:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->s:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->o:Lcom/viewpagerindicator/d;

    sget-object v2, Lcom/viewpagerindicator/d;->a:Lcom/viewpagerindicator/d;

    if-eq v1, v2, :cond_d

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->q:F

    add-float/2addr v0, v1

    goto :goto_d
.end method

.method private b(Landroid/graphics/RectF;FI)V
    .registers 6

    int-to-float v0, p3

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->v:F

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->v:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->right:F

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/view/ViewPager;I)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/TitlePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {p0, p2}, Lcom/viewpagerindicator/TitlePageIndicator;->setCurrentItem(I)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Z

    return v0
.end method

.method public c()V
    .registers 1

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public getClipPadding()F
    .registers 2

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->v:F

    return v0
.end method

.method public getFooterColor()I
    .registers 2

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->n:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getFooterIndicatorHeight()F
    .registers 2

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->q:F

    return v0
.end method

.method public getFooterIndicatorPadding()F
    .registers 2

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->s:F

    return v0
.end method

.method public getFooterIndicatorStyle()Lcom/viewpagerindicator/d;
    .registers 2

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->o:Lcom/viewpagerindicator/d;

    return-object v0
.end method

.method public getFooterLineHeight()F
    .registers 2

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->w:F

    return v0
.end method

.method public getSelectedColor()I
    .registers 2

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->l:I

    return v0
.end method

.method public getTextColor()I
    .registers 2

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->k:I

    return v0
.end method

.method public getTextSize()F
    .registers 2

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTitlePadding()F
    .registers 2

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->t:F

    return v0
.end method

.method public getTopPadding()F
    .registers 2

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 27

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    if-nez v4, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v11

    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/viewpagerindicator/TitlePageIndicator;->a(Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:I

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_37

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/viewpagerindicator/TitlePageIndicator;->setCurrentItem(I)V

    :cond_37
    add-int/lit8 v13, v11, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float v14, v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getLeft()I

    move-result v15

    int-to-float v4, v15

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->v:F

    add-float v8, v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getHeight()I

    move-result v18

    add-int v19, v15, v16

    move/from16 v0, v19

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->v:F

    sub-float v20, v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->g:I

    int-to-float v4, v4

    cmpg-float v4, v4, v14

    if-gtz v4, :cond_11c

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->g:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    move/from16 v0, v16

    int-to-float v6, v0

    div-float/2addr v4, v6

    move v10, v5

    move v5, v4

    :goto_7f
    const/high16 v4, 0x3e80

    cmpg-float v4, v5, v4

    if-gtz v4, :cond_130

    const/4 v4, 0x1

    move v9, v4

    :goto_87
    const v4, 0x3d4ccccd

    cmpg-float v4, v5, v4

    if-gtz v4, :cond_134

    const/4 v4, 0x1

    move v6, v4

    :goto_90
    const/high16 v4, 0x3e80

    sub-float/2addr v4, v5

    const/high16 v5, 0x3e80

    div-float v21, v4, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:I

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->right:F

    iget v7, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v7

    iget v7, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_b1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v15}, Lcom/viewpagerindicator/TitlePageIndicator;->b(Landroid/graphics/RectF;FI)V

    :cond_b1
    iget v7, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v7, v7, v20

    if-lez v7, :cond_be

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v4, v5, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->a(Landroid/graphics/RectF;FI)V

    :cond_be
    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:I

    if-lez v4, :cond_138

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:I

    add-int/lit8 v4, v4, -0x1

    move v7, v4

    :goto_cb
    if-ltz v7, :cond_138

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v5, v8

    if-gez v5, :cond_118

    iget v5, v4, Landroid/graphics/RectF;->right:F

    iget v0, v4, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    sub-float v22, v5, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v4, v1, v15}, Lcom/viewpagerindicator/TitlePageIndicator;->b(Landroid/graphics/RectF;FI)V

    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    iget v0, v4, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->t:F

    move/from16 v24, v0

    add-float v23, v23, v24

    iget v0, v5, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    cmpl-float v23, v23, v24

    if-lez v23, :cond_118

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float v5, v5, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->t:F

    move/from16 v23, v0

    sub-float v5, v5, v23

    iput v5, v4, Landroid/graphics/RectF;->left:F

    iget v5, v4, Landroid/graphics/RectF;->left:F

    add-float v5, v5, v22

    iput v5, v4, Landroid/graphics/RectF;->right:F

    :cond_118
    add-int/lit8 v4, v7, -0x1

    move v7, v4

    goto :goto_cb

    :cond_11c
    add-int/lit8 v5, v5, 0x1

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->g:I

    sub-int v6, v16, v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    move/from16 v0, v16

    int-to-float v6, v0

    div-float/2addr v4, v6

    move v10, v5

    move v5, v4

    goto/16 :goto_7f

    :cond_130
    const/4 v4, 0x0

    move v9, v4

    goto/16 :goto_87

    :cond_134
    const/4 v4, 0x0

    move v6, v4

    goto/16 :goto_90

    :cond_138
    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:I

    if-ge v4, v13, :cond_191

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->f:I

    add-int/lit8 v4, v4, 0x1

    move v7, v4

    :goto_145
    if-ge v7, v11, :cond_191

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, v20

    if-lez v5, :cond_18d

    iget v5, v4, Landroid/graphics/RectF;->right:F

    iget v8, v4, Landroid/graphics/RectF;->left:F

    sub-float v8, v5, v8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v4, v8, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->a(Landroid/graphics/RectF;FI)V

    add-int/lit8 v5, v7, -0x1

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    iget v0, v4, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->t:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    iget v0, v5, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_18d

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->t:F

    move/from16 v22, v0

    add-float v5, v5, v22

    iput v5, v4, Landroid/graphics/RectF;->left:F

    iget v5, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v8

    iput v5, v4, Landroid/graphics/RectF;->right:F

    :cond_18d
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_145

    :cond_191
    const/4 v4, 0x0

    move v8, v4

    :goto_193
    if-ge v8, v11, :cond_272

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    int-to-float v7, v15

    cmpl-float v5, v5, v7

    if-lez v5, :cond_1ab

    iget v5, v4, Landroid/graphics/RectF;->left:F

    move/from16 v0, v19

    int-to-float v7, v0

    cmpg-float v5, v5, v7

    if-ltz v5, :cond_1bb

    :cond_1ab
    iget v5, v4, Landroid/graphics/RectF;->right:F

    int-to-float v7, v15

    cmpl-float v5, v5, v7

    if-lez v5, :cond_267

    iget v5, v4, Landroid/graphics/RectF;->right:F

    move/from16 v0, v19

    int-to-float v7, v0

    cmpg-float v5, v5, v7

    if-gez v5, :cond_267

    :cond_1bb
    if-ne v8, v10, :cond_26c

    const/4 v5, 0x1

    :goto_1be
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    if-eqz v5, :cond_26f

    if-eqz v6, :cond_26f

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Z

    if-eqz v7, :cond_26f

    const/4 v7, 0x1

    :goto_1cf
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->k:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->e:Lcom/viewpagerindicator/i;

    invoke-interface {v7, v8}, Lcom/viewpagerindicator/i;->a(I)Ljava/lang/String;

    move-result-object v7

    iget v0, v4, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    sub-int v22, v8, v10

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->q:F

    move/from16 v23, v0

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    const/high16 v23, 0x4000

    mul-float v22, v22, v23

    add-float v20, v20, v22

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    move/from16 v23, v0

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz v5, :cond_267

    if-eqz v9, :cond_267

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->l:I

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->l:I

    ushr-int/lit8 v7, v7, 0x18

    int-to-float v7, v7

    mul-float v7, v7, v21

    float-to-int v7, v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->e:Lcom/viewpagerindicator/i;

    invoke-interface {v5, v8}, Lcom/viewpagerindicator/i;->a(I)Ljava/lang/String;

    move-result-object v5

    iget v7, v4, Landroid/graphics/RectF;->left:F

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    move/from16 v20, v0

    add-float v4, v4, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v7, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_267
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto/16 :goto_193

    :cond_26c
    const/4 v5, 0x0

    goto/16 :goto_1be

    :cond_26f
    const/4 v7, 0x0

    goto/16 :goto_1cf

    :cond_272
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    const/4 v5, 0x0

    move/from16 v0, v18

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->w:F

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    move/from16 v0, v16

    int-to-float v5, v0

    move/from16 v0, v18

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->w:F

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->n:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-lez v10, :cond_306

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->q:F

    div-int/lit8 v6, v18, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->q:F

    const/high16 v6, 0x3fc0

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->q:F

    neg-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->q:F

    const/high16 v7, 0x4000

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_306
    if-ge v10, v13, :cond_35a

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    move/from16 v0, v17

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->q:F

    sub-float/2addr v5, v6

    div-int/lit8 v6, v18, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->q:F

    neg-float v5, v5

    const/high16 v6, 0x3fc0

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->q:F

    neg-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->q:F

    const/high16 v7, 0x4000

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_35a
    sget-object v4, Lcom/viewpagerindicator/TitlePageIndicator$1;->a:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->o:Lcom/viewpagerindicator/d;

    invoke-virtual {v5}, Lcom/viewpagerindicator/d;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_466

    goto/16 :goto_9

    :pswitch_36b
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    move/from16 v0, v18

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->w:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->q:F

    sub-float/2addr v5, v6

    invoke-virtual {v4, v14, v5}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->q:F

    add-float/2addr v5, v14

    move/from16 v0, v18

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->w:F

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->q:F

    sub-float v5, v14, v5

    move/from16 v0, v18

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->w:F

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_9

    :pswitch_3c7
    if-eqz v9, :cond_9

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    iget v6, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->r:F

    sub-float/2addr v6, v7

    move/from16 v0, v18

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/viewpagerindicator/TitlePageIndicator;->w:F

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    iget v6, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->r:F

    add-float/2addr v6, v7

    move/from16 v0, v18

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/viewpagerindicator/TitlePageIndicator;->w:F

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    iget v6, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->r:F

    add-float/2addr v6, v7

    move/from16 v0, v18

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/viewpagerindicator/TitlePageIndicator;->w:F

    sub-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/viewpagerindicator/TitlePageIndicator;->q:F

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicator;->r:F

    sub-float/2addr v4, v6

    move/from16 v0, v18

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->w:F

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viewpagerindicator/TitlePageIndicator;->q:F

    sub-float/2addr v6, v7

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->p:Landroid/graphics/Paint;

    const/high16 v5, 0x437f

    mul-float v5, v5, v21

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->m:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicator;->p:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicator;->p:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_9

    nop

    :pswitch_data_466
    .packed-switch 0x1
        :pswitch_36b
        :pswitch_3c7
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/viewpagerindicator/TitlePageIndicator;->a(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/viewpagerindicator/TitlePageIndicator;->b(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/viewpagerindicator/TitlePageIndicator;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 3

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->h:I

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_b
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 5

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->f:I

    iput p3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->g:I

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_10
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->h:I

    if-nez v0, :cond_9

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->f:I

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    :cond_9
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_12
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    check-cast p1, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    invoke-virtual {p1}, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;->a:I

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->f:I

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->f:I

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;->a:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

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

    packed-switch v2, :pswitch_data_106

    :pswitch_1d
    goto :goto_13

    :pswitch_1e
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->A:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->z:F

    goto :goto_13

    :pswitch_2b
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->A:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->z:F

    sub-float v2, v0, v2

    iget-boolean v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->B:Z

    if-nez v3, :cond_4a

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/viewpagerindicator/TitlePageIndicator;->y:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4a

    iput-boolean v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->B:Z

    :cond_4a
    iget-boolean v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->B:Z

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v3

    if-nez v3, :cond_5b

    iget-object v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    :cond_5b
    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->z:F

    :try_start_5d
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_62} :catch_63

    goto :goto_13

    :catch_63
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    :pswitch_68
    iget-boolean v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->B:Z

    if-nez v2, :cond_bc

    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->getWidth()I

    move-result v3

    int-to-float v4, v3

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    int-to-float v3, v3

    const/high16 v5, 0x40c0

    div-float/2addr v3, v5

    sub-float v5, v4, v3

    add-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    cmpg-float v5, v4, v5

    if-gez v5, :cond_9c

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->f:I

    if-lez v2, :cond_bc

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->f:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_13

    :cond_9c
    cmpl-float v3, v4, v3

    if-lez v3, :cond_b1

    iget v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->f:I

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_bc

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->f:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_13

    :cond_b1
    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->C:Lcom/viewpagerindicator/e;

    if-eqz v2, :cond_bc

    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->C:Lcom/viewpagerindicator/e;

    iget v3, p0, Lcom/viewpagerindicator/TitlePageIndicator;->f:I

    invoke-interface {v2, v3}, Lcom/viewpagerindicator/e;->a(I)V

    :cond_bc
    iput-boolean v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->B:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->A:I

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_13

    :pswitch_d0
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/viewpagerindicator/TitlePageIndicator;->z:F

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->A:I

    goto/16 :goto_13

    :pswitch_e2
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iget v4, p0, Lcom/viewpagerindicator/TitlePageIndicator;->A:I

    if-ne v3, v4, :cond_f7

    if-nez v2, :cond_f1

    move v0, v1

    :cond_f1
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->A:I

    :cond_f7
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->A:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->z:F

    goto/16 :goto_13

    nop

    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_68
        :pswitch_2b
        :pswitch_68
        :pswitch_1d
        :pswitch_d0
        :pswitch_e2
    .end packed-switch
.end method

.method public setClipPadding(F)V
    .registers 2

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->v:F

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setCurrentItem(I)V
    .registers 4

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->f:I

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setFooterColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setFooterIndicatorHeight(F)V
    .registers 2

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->q:F

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setFooterIndicatorPadding(F)V
    .registers 2

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->s:F

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setFooterIndicatorStyle(Lcom/viewpagerindicator/d;)V
    .registers 2

    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->o:Lcom/viewpagerindicator/d;

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setFooterLineHeight(F)V
    .registers 4

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->w:F

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->n:Landroid/graphics/Paint;

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->w:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setOnCenterItemClickListener(Lcom/viewpagerindicator/e;)V
    .registers 2

    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->C:Lcom/viewpagerindicator/e;

    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setSelectedBold(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->j:Z

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setSelectedColor(I)V
    .registers 2

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->l:I

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->k:I

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .registers 3

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setTitlePadding(F)V
    .registers 2

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->t:F

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setTopPadding(F)V
    .registers 2

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->u:F

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

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
    instance-of v1, v0, Lcom/viewpagerindicator/i;

    if-nez v1, :cond_1a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager adapter must implement TitleProvider to be used with TitlePageIndicator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/viewpagerindicator/TitlePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    check-cast v0, Lcom/viewpagerindicator/i;

    iput-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicator;->e:Lcom/viewpagerindicator/i;

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicator;->invalidate()V

    return-void
.end method
