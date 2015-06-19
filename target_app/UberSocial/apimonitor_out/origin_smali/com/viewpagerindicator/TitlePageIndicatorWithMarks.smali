.class public Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/viewpagerindicator/a;


# static fields
.field private static final a:F = 0.25f

.field private static final b:F = 0.05f

.field private static final y:I = -0x1


# instance fields
.field private A:F

.field private B:I

.field private C:Z

.field private D:Lcom/viewpagerindicator/g;

.field private c:Landroid/support/v4/view/ViewPager;

.field private d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private e:Lcom/viewpagerindicator/j;

.field private f:I

.field private g:I

.field private h:I

.field private final i:Landroid/graphics/Paint;

.field private final j:Landroid/graphics/Paint;

.field private k:Z

.field private l:I

.field private m:I

.field private n:Landroid/graphics/Path;

.field private final o:Landroid/graphics/Paint;

.field private p:Lcom/viewpagerindicator/f;

.field private final q:Landroid/graphics/Paint;

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x7f0100b8

    invoke-direct {p0, p1, p2, v0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 24

    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v5, -0x4080

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->A:F

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->B:I

    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->getResources()Landroid/content/res/Resources;

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

    iput v7, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->x:F

    const/4 v7, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    invoke-static {v7}, Lcom/viewpagerindicator/f;->a(I)Lcom/viewpagerindicator/f;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->p:Lcom/viewpagerindicator/f;

    const/4 v7, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->r:F

    const/4 v7, 0x5

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->s:F

    const/4 v7, 0x6

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->t:F

    const/16 v7, 0xc

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->v:F

    const/16 v5, 0xb

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->u:F

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->w:F

    const/4 v5, 0x7

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->m:I

    const/16 v5, 0x9

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->l:I

    const/16 v5, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->k:Z

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

    iput-object v7, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->i:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->i:Landroid/graphics/Paint;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->i:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->o:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->o:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->o:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->x:F

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->o:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->q:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->q:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->q:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->j:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->j:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->j:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->j:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->m:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->z:I

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

    iget-object v1, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->e:Lcom/viewpagerindicator/j;

    invoke-interface {v1, p1}, Lcom/viewpagerindicator/j;->b(I)Ljava/lang/String;

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

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->getWidth()I

    move-result v3

    div-int/lit8 v4, v3, 0x2

    const/4 v0, 0x0

    :goto_16
    if-ge v0, v2, :cond_49

    invoke-direct {p0, v0, p1}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->a(ILandroid/graphics/Paint;)Landroid/graphics/RectF;

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

    iget v9, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->g:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->f:I

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

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->w:F

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

    iget-object v1, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->i:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->i:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v0, v1, v0

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->x:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->t:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->v:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->p:Lcom/viewpagerindicator/f;

    sget-object v2, Lcom/viewpagerindicator/f;->a:Lcom/viewpagerindicator/f;

    if-eq v1, v2, :cond_d

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->r:F

    add-float/2addr v0, v1

    goto :goto_d
.end method

.method private b(Landroid/graphics/RectF;FI)V
    .registers 6

    int-to-float v0, p3

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->w:F

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->w:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->right:F

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/view/ViewPager;I)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {p0, p2}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->setCurrentItem(I)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->k:Z

    return v0
.end method

.method public c()V
    .registers 1

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->invalidate()V

    return-void
.end method

.method public getClipPadding()F
    .registers 2

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->w:F

    return v0
.end method

.method public getFooterColor()I
    .registers 2

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->o:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getFooterIndicatorHeight()F
    .registers 2

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->r:F

    return v0
.end method

.method public getFooterIndicatorPadding()F
    .registers 2

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->t:F

    return v0
.end method

.method public getFooterIndicatorStyle()Lcom/viewpagerindicator/f;
    .registers 2

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->p:Lcom/viewpagerindicator/f;

    return-object v0
.end method

.method public getFooterLineHeight()F
    .registers 2

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->x:F

    return v0
.end method

.method public getSelectedColor()I
    .registers 2

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->m:I

    return v0
.end method

.method public getTextColor()I
    .registers 2

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->l:I

    return v0
.end method

.method public getTextSize()F
    .registers 2

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->i:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTitlePadding()F
    .registers 2

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->u:F

    return v0
.end method

.method public getTopPadding()F
    .registers 2

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->v:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 29

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->c:Landroid/support/v4/view/ViewPager;

    if-nez v2, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v14

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->i:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->a(Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->f:I

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_37

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->setCurrentItem(I)V

    :cond_37
    add-int/lit8 v16, v14, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float v17, v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->getLeft()I

    move-result v18

    move/from16 v0, v18

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->w:F

    add-float v5, v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->getWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->getWidth()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->getHeight()I

    move-result v21

    add-int v22, v18, v19

    move/from16 v0, v22

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->w:F

    sub-float v6, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->f:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->g:I

    int-to-float v2, v2

    cmpg-float v2, v2, v17

    if-gtz v2, :cond_112

    const/high16 v2, 0x3f80

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->g:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    move/from16 v0, v19

    int-to-float v4, v0

    div-float/2addr v2, v4

    move v13, v3

    move v3, v2

    :goto_81
    const/high16 v2, 0x3e80

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_126

    const/4 v2, 0x1

    move v12, v2

    :goto_89
    const v2, 0x3d4ccccd

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_12a

    const/4 v2, 0x1

    move v9, v2

    :goto_92
    const/high16 v2, 0x3e80

    sub-float/2addr v2, v3

    const/high16 v3, 0x3e80

    div-float v23, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->f:I

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget v4, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_b5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v2, v3, v1}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->b(Landroid/graphics/RectF;FI)V

    :cond_b5
    iget v4, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_c2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v2, v3, v1}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->a(Landroid/graphics/RectF;FI)V

    :cond_c2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->f:I

    if-lez v2, :cond_12e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->f:I

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_cf
    if-ltz v4, :cond_12e

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_10e

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v7, v2, Landroid/graphics/RectF;->left:F

    sub-float v7, v3, v7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v2, v7, v1}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->b(Landroid/graphics/RectF;FI)V

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    iget v8, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->u:F

    add-float/2addr v8, v10

    iget v10, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_10e

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->u:F

    sub-float/2addr v3, v8

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v7

    iput v3, v2, Landroid/graphics/RectF;->right:F

    :cond_10e
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_cf

    :cond_112
    add-int/lit8 v3, v3, 0x1

    const/high16 v2, 0x3f80

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->g:I

    sub-int v4, v19, v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    move/from16 v0, v19

    int-to-float v4, v0

    div-float/2addr v2, v4

    move v13, v3

    move v3, v2

    goto/16 :goto_81

    :cond_126
    const/4 v2, 0x0

    move v12, v2

    goto/16 :goto_89

    :cond_12a
    const/4 v2, 0x0

    move v9, v2

    goto/16 :goto_92

    :cond_12e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->f:I

    move/from16 v0, v16

    if-ge v2, v0, :cond_17f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->f:I

    add-int/lit8 v2, v2, 0x1

    move v4, v2

    :goto_13d
    if-ge v4, v14, :cond_17f

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_17b

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float v5, v3, v5

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v2, v5, v1}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->a(Landroid/graphics/RectF;FI)V

    add-int/lit8 v3, v4, -0x1

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    iget v7, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->u:F

    sub-float/2addr v7, v8

    iget v8, v3, Landroid/graphics/RectF;->right:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_17b

    iget v3, v3, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->u:F

    add-float/2addr v3, v7

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    iput v3, v2, Landroid/graphics/RectF;->right:F

    :cond_17b
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_13d

    :cond_17f
    const/4 v2, 0x0

    move v11, v2

    :goto_181
    if-ge v11, v14, :cond_324

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/graphics/RectF;

    iget v2, v8, Landroid/graphics/RectF;->left:F

    move/from16 v0, v18

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_19c

    iget v2, v8, Landroid/graphics/RectF;->left:F

    move/from16 v0, v22

    int-to-float v3, v0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1ae

    :cond_19c
    iget v2, v8, Landroid/graphics/RectF;->right:F

    move/from16 v0, v18

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2b8

    iget v2, v8, Landroid/graphics/RectF;->right:F

    move/from16 v0, v22

    int-to-float v3, v0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2b8

    :cond_1ae
    if-ne v11, v13, :cond_2bd

    const/4 v2, 0x1

    :goto_1b1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->i:Landroid/graphics/Paint;

    if-eqz v2, :cond_2c0

    if-eqz v9, :cond_2c0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->k:Z

    if-eqz v3, :cond_2c0

    const/4 v3, 0x1

    :goto_1c0
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->i:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->l:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->e:Lcom/viewpagerindicator/j;

    invoke-interface {v4, v11}, Lcom/viewpagerindicator/j;->c(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    if-lez v4, :cond_51c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->j:Landroid/graphics/Paint;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    const/high16 v5, 0x4080

    add-float/2addr v3, v5

    move v10, v3

    :goto_1eb
    if-lez v4, :cond_2c3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->e:Lcom/viewpagerindicator/j;

    invoke-interface {v3, v11}, Lcom/viewpagerindicator/j;->b(I)Ljava/lang/String;

    move-result-object v3

    iget v5, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v10

    sub-int v6, v11, v13

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->r:F

    neg-float v7, v7

    mul-float/2addr v6, v7

    const/high16 v7, 0x4000

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, v8, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->v:F

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->i:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_215
    if-eqz v2, :cond_252

    if-eqz v12, :cond_252

    if-lez v4, :cond_2ec

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->i:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->m:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->i:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->m:I

    ushr-int/lit8 v5, v5, 0x18

    int-to-float v5, v5

    mul-float v5, v5, v23

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->e:Lcom/viewpagerindicator/j;

    invoke-interface {v3, v11}, Lcom/viewpagerindicator/j;->b(I)Ljava/lang/String;

    move-result-object v3

    iget v5, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v10

    iget v6, v8, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->v:F

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->i:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_252
    :goto_252
    const/high16 v25, 0x4080

    if-lez v4, :cond_2b8

    if-eqz v2, :cond_2b8

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    const/16 v2, 0xff

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->j:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->i:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    const/16 v26, 0x8

    iget v2, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v10

    move/from16 v0, v26

    int-to-float v3, v0

    add-float/2addr v3, v2

    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float v4, v2, v25

    iget v2, v8, Landroid/graphics/RectF;->right:F

    move/from16 v0, v26

    int-to-float v5, v0

    add-float/2addr v5, v2

    invoke-virtual/range {p0 .. p0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->getBottom()I

    move-result v2

    int-to-float v2, v2

    sub-float v6, v2, v25

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v2, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v10

    const/high16 v3, 0x4000

    add-float/2addr v2, v3

    move/from16 v0, v26

    int-to-float v3, v0

    add-float/2addr v2, v3

    iget v3, v8, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->v:F

    add-float/2addr v3, v4

    const/high16 v4, 0x4040

    div-float v4, v25, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->j:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2b8
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto/16 :goto_181

    :cond_2bd
    const/4 v2, 0x0

    goto/16 :goto_1b1

    :cond_2c0
    const/4 v3, 0x0

    goto/16 :goto_1c0

    :cond_2c3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->e:Lcom/viewpagerindicator/j;

    invoke-interface {v3, v11}, Lcom/viewpagerindicator/j;->b(I)Ljava/lang/String;

    move-result-object v3

    iget v5, v8, Landroid/graphics/RectF;->left:F

    sub-int v6, v11, v13

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->r:F

    neg-float v7, v7

    mul-float/2addr v6, v7

    const/high16 v7, 0x4000

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, v8, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->v:F

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->i:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_215

    :cond_2ec
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->i:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->m:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->i:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->m:I

    ushr-int/lit8 v5, v5, 0x18

    int-to-float v5, v5

    mul-float v5, v5, v23

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->e:Lcom/viewpagerindicator/j;

    invoke-interface {v3, v11}, Lcom/viewpagerindicator/j;->b(I)Ljava/lang/String;

    move-result-object v3

    iget v5, v8, Landroid/graphics/RectF;->left:F

    iget v6, v8, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->v:F

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->i:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_252

    :cond_324
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->n:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->n:Landroid/graphics/Path;

    const/4 v3, 0x0

    move/from16 v0, v21

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->x:F

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->n:Landroid/graphics/Path;

    move/from16 v0, v19

    int-to-float v3, v0

    move/from16 v0, v21

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->x:F

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->n:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->n:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->o:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-lez v13, :cond_3b8

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->n:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->n:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->r:F

    div-int/lit8 v4, v21, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->n:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->r:F

    const/high16 v4, 0x3fc0

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->r:F

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->n:Landroid/graphics/Path;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->r:F

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->n:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->n:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->i:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3b8
    move/from16 v0, v16

    if-ge v13, v0, :cond_40e

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->n:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->n:Landroid/graphics/Path;

    move/from16 v0, v20

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->r:F

    sub-float/2addr v3, v4

    div-int/lit8 v4, v21, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->n:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->r:F

    neg-float v3, v3

    const/high16 v4, 0x3fc0

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->r:F

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->n:Landroid/graphics/Path;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->r:F

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->n:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->n:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->i:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_40e
    sget-object v2, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks$1;->a:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->p:Lcom/viewpagerindicator/f;

    invoke-virtual {v3}, Lcom/viewpagerindicator/f;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_520

    goto/16 :goto_9

    :pswitch_41f
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->n:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->n:Landroid/graphics/Path;

    move/from16 v0, v21

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->x:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->r:F

    sub-float/2addr v3, v4

    move/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->n:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->r:F

    add-float v3, v3, v17

    move/from16 v0, v21

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->x:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->n:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->r:F

    sub-float v3, v17, v3

    move/from16 v0, v21

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->x:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->n:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->n:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->q:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_9

    :pswitch_47e
    if-eqz v12, :cond_9

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->n:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->n:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->s:F

    sub-float/2addr v4, v5

    move/from16 v0, v21

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->x:F

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->n:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->s:F

    add-float/2addr v4, v5

    move/from16 v0, v21

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->x:F

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->n:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->s:F

    add-float/2addr v4, v5

    move/from16 v0, v21

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->x:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->r:F

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->n:Landroid/graphics/Path;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->s:F

    sub-float/2addr v2, v4

    move/from16 v0, v21

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->x:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->r:F

    sub-float/2addr v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->n:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->q:Landroid/graphics/Paint;

    const/high16 v3, 0x437f

    mul-float v3, v3, v23

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->n:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->q:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->q:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_9

    :cond_51c
    move v10, v3

    goto/16 :goto_1eb

    nop

    :pswitch_data_520
    .packed-switch 0x1
        :pswitch_41f
        :pswitch_47e
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->a(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->b(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 3

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->h:I

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_b
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 5

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->f:I

    iput p3, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->g:I

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->invalidate()V

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_10
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->h:I

    if-nez v0, :cond_9

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->f:I

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->invalidate()V

    :cond_9
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_12
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    check-cast p1, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks$SavedState;

    invoke-virtual {p1}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks$SavedState;->a:I

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->f:I

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks$SavedState;

    invoke-direct {v1, v0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->f:I

    iput v0, v1, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks$SavedState;->a:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->c:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->c:Landroid/support/v4/view/ViewPager;

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

    packed-switch v2, :pswitch_data_10c

    :pswitch_1d
    goto :goto_13

    :pswitch_1e
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->B:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->A:F

    goto :goto_13

    :pswitch_2b
    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->B:I

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    iget v3, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->A:F

    sub-float v3, v2, v3

    iget-boolean v4, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->C:Z

    if-nez v4, :cond_4a

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->z:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4a

    iput-boolean v1, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->C:Z

    :cond_4a
    iget-boolean v4, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->C:Z

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v4

    if-nez v4, :cond_5b

    iget-object v4, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    :cond_5b
    iput v2, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->A:F

    :try_start_5d
    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_62} :catch_63

    goto :goto_13

    :catch_63
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v0

    goto :goto_13

    :pswitch_69
    iget-boolean v2, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->C:Z

    if-nez v2, :cond_c3

    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->getWidth()I

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

    if-gez v5, :cond_a3

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->f:I

    if-lez v2, :cond_c3

    :try_start_92
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->c:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->f:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_9b} :catch_9d

    goto/16 :goto_13

    :catch_9d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_13

    :cond_a3
    cmpl-float v3, v4, v3

    if-lez v3, :cond_b8

    iget v3, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->f:I

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_c3

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->c:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->f:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_13

    :cond_b8
    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->D:Lcom/viewpagerindicator/g;

    if-eqz v2, :cond_c3

    iget-object v2, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->D:Lcom/viewpagerindicator/g;

    iget v3, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->f:I

    invoke-interface {v2, v3}, Lcom/viewpagerindicator/g;->a(I)V

    :cond_c3
    iput-boolean v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->C:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->B:I

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_13

    :pswitch_d7
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->A:F

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->B:I

    goto/16 :goto_13

    :pswitch_e9
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iget v4, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->B:I

    if-ne v3, v4, :cond_fe

    if-nez v2, :cond_f8

    move v0, v1

    :cond_f8
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->B:I

    :cond_fe
    iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->B:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->A:F

    goto/16 :goto_13

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_69
        :pswitch_2b
        :pswitch_69
        :pswitch_1d
        :pswitch_d7
        :pswitch_e9
    .end packed-switch
.end method

.method public setClipPadding(F)V
    .registers 2

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->w:F

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->invalidate()V

    return-void
.end method

.method public setCurrentItem(I)V
    .registers 4

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->c:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->f:I

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->invalidate()V

    return-void
.end method

.method public setFooterColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->invalidate()V

    return-void
.end method

.method public setFooterIndicatorHeight(F)V
    .registers 2

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->r:F

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->invalidate()V

    return-void
.end method

.method public setFooterIndicatorPadding(F)V
    .registers 2

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->t:F

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->invalidate()V

    return-void
.end method

.method public setFooterIndicatorStyle(Lcom/viewpagerindicator/f;)V
    .registers 2

    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->p:Lcom/viewpagerindicator/f;

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->invalidate()V

    return-void
.end method

.method public setFooterLineHeight(F)V
    .registers 4

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->x:F

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->x:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->invalidate()V

    return-void
.end method

.method public setOnCenterItemClickListener(Lcom/viewpagerindicator/g;)V
    .registers 2

    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->D:Lcom/viewpagerindicator/g;

    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->d:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setSelectedBold(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->k:Z

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->invalidate()V

    return-void
.end method

.method public setSelectedColor(I)V
    .registers 2

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->m:I

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->l:I

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .registers 3

    iget-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->invalidate()V

    return-void
.end method

.method public setTitlePadding(F)V
    .registers 2

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->u:F

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->invalidate()V

    return-void
.end method

.method public setTopPadding(F)V
    .registers 2

    iput p1, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->v:F

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->invalidate()V

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
    instance-of v1, v0, Lcom/viewpagerindicator/j;

    if-nez v1, :cond_1a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager adapter must implement TitleProvider to be used with TitlePageIndicator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    iput-object p1, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->c:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    check-cast v0, Lcom/viewpagerindicator/j;

    iput-object v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->e:Lcom/viewpagerindicator/j;

    invoke-virtual {p0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks;->invalidate()V

    return-void
.end method
