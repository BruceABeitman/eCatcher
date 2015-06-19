.class public Landroid/support/v4/view/ActionBarTabStrip;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/bn;


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Landroid/support/v4/view/ah;

.field private c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/support/v4/view/k;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:I

.field private m:I

.field private n:I

.field private final o:Landroid/support/v4/view/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ActionBarTabStrip;->c:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ActionBarTabStrip;->d:Ljava/util/Queue;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ActionBarTabStrip;->n:I

    new-instance v0, Landroid/support/v4/view/j;

    invoke-direct {v0, p0, v2}, Landroid/support/v4/view/j;-><init>(Landroid/support/v4/view/ActionBarTabStrip;B)V

    iput-object v0, p0, Landroid/support/v4/view/ActionBarTabStrip;->o:Landroid/support/v4/view/j;

    invoke-virtual {p0, v2}, Landroid/support/v4/view/ActionBarTabStrip;->setOrientation(I)V

    sget-object v0, Lcom/spotify/music/d;->d:[I

    const v1, 0x7f100003

    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ActionBarTabStrip;->e:I

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ActionBarTabStrip;->f:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ActionBarTabStrip;->j:I

    :cond_44
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ActionBarTabStrip;->g:I

    :cond_50
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5d

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ActionBarTabStrip;->h:I

    :cond_5d
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ActionBarTabStrip;->i:I

    :cond_69
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_77

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/view/ActionBarTabStrip;->k:Landroid/graphics/drawable/Drawable;

    :cond_77
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x3f80

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/view/ActionBarTabStrip;->l:I

    const/high16 v1, 0x4100

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ActionBarTabStrip;->m:I

    iget v0, p0, Landroid/support/v4/view/ActionBarTabStrip;->e:I

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ActionBarTabStrip;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/view/ActionBarTabStrip;I)I
    .registers 2

    iput p1, p0, Landroid/support/v4/view/ActionBarTabStrip;->n:I

    return p1
.end method

.method static synthetic a(Landroid/support/v4/view/ActionBarTabStrip;)Landroid/support/v4/view/ah;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/view/ActionBarTabStrip;->b:Landroid/support/v4/view/ah;

    return-object v0
.end method

.method private a()V
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/view/ActionBarTabStrip;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Landroid/support/v4/view/ActionBarTabStrip;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    move v1, v2

    :goto_c
    invoke-virtual {p0}, Landroid/support/v4/view/ActionBarTabStrip;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2b

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ActionBarTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/support/v4/view/k;

    if-eqz v3, :cond_25

    iget-object v3, p0, Landroid/support/v4/view/ActionBarTabStrip;->c:Ljava/util/Queue;

    check-cast v0, Landroid/support/v4/view/k;

    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_25
    iget-object v3, p0, Landroid/support/v4/view/ActionBarTabStrip;->d:Ljava/util/Queue;

    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_2b
    invoke-virtual {p0}, Landroid/support/v4/view/ActionBarTabStrip;->removeAllViews()V

    iget-object v0, p0, Landroid/support/v4/view/ActionBarTabStrip;->b:Landroid/support/v4/view/ah;

    if-nez v0, :cond_33

    :cond_32
    return-void

    :cond_33
    move v1, v2

    :goto_34
    iget-object v0, p0, Landroid/support/v4/view/ActionBarTabStrip;->b:Landroid/support/v4/view/ah;

    invoke-virtual {v0}, Landroid/support/v4/view/ah;->b()I

    move-result v0

    if-ge v1, v0, :cond_32

    if-eqz v1, :cond_4b

    iget-object v0, p0, Landroid/support/v4/view/ActionBarTabStrip;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_b9

    :goto_48
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ActionBarTabStrip;->addView(Landroid/view/View;)V

    :cond_4b
    iget-object v0, p0, Landroid/support/v4/view/ActionBarTabStrip;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/k;

    if-nez v0, :cond_ab

    new-instance v0, Landroid/support/v4/view/k;

    invoke-direct {v0, p0}, Landroid/support/v4/view/k;-><init>(Landroid/support/v4/view/ActionBarTabStrip;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x3f80

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v3}, Landroid/support/v4/view/k;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v4/view/k;->setSingleLine(Z)V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/k;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget v3, p0, Landroid/support/v4/view/ActionBarTabStrip;->g:I

    if-eqz v3, :cond_7a

    iget v3, p0, Landroid/support/v4/view/ActionBarTabStrip;->g:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/k;->setTextSize(IF)V

    :cond_7a
    iget v3, p0, Landroid/support/v4/view/ActionBarTabStrip;->h:I

    if-eqz v3, :cond_84

    const/4 v3, 0x0

    iget v4, p0, Landroid/support/v4/view/ActionBarTabStrip;->h:I

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/view/k;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_84
    iget v3, p0, Landroid/support/v4/view/ActionBarTabStrip;->i:I

    if-eqz v3, :cond_8d

    iget v3, p0, Landroid/support/v4/view/ActionBarTabStrip;->i:I

    invoke-virtual {v0, v3}, Landroid/support/v4/view/k;->setTextColor(I)V

    :cond_8d
    iget-object v3, p0, Landroid/support/v4/view/ActionBarTabStrip;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_a2

    iget-object v3, p0, Landroid/support/v4/view/ActionBarTabStrip;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/v4/view/ActionBarTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/view/k;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_a2
    iget v3, p0, Landroid/support/v4/view/ActionBarTabStrip;->j:I

    if-eqz v3, :cond_ab

    iget v3, p0, Landroid/support/v4/view/ActionBarTabStrip;->j:I

    invoke-virtual {v0, v3}, Landroid/support/v4/view/k;->setMinHeight(I)V

    :cond_ab
    invoke-virtual {v0, v1}, Landroid/support/v4/view/k;->a(I)V

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ActionBarTabStrip;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/support/v4/view/k;->refreshDrawableState()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_34

    :cond_b9
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/view/ActionBarTabStrip;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Landroid/support/v4/view/ActionBarTabStrip;->l:I

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v4, p0, Landroid/support/v4/view/ActionBarTabStrip;->m:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v4, p0, Landroid/support/v4/view/ActionBarTabStrip;->m:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v3, p0, Landroid/support/v4/view/ActionBarTabStrip;->f:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_48
.end method

.method static synthetic b(Landroid/support/v4/view/ActionBarTabStrip;)Landroid/support/v4/view/ViewPager;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/view/ActionBarTabStrip;->a:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v4/view/ActionBarTabStrip;)I
    .registers 2

    iget v0, p0, Landroid/support/v4/view/ActionBarTabStrip;->n:I

    return v0
.end method

.method static synthetic d(Landroid/support/v4/view/ActionBarTabStrip;)V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/view/ActionBarTabStrip;->a()V

    return-void
.end method


# virtual methods
.method final a(Landroid/support/v4/view/ah;Landroid/support/v4/view/ah;)V
    .registers 4

    if-eqz p1, :cond_7

    iget-object v0, p0, Landroid/support/v4/view/ActionBarTabStrip;->o:Landroid/support/v4/view/j;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ah;->b(Landroid/database/DataSetObserver;)V

    :cond_7
    if-eqz p2, :cond_e

    iget-object v0, p0, Landroid/support/v4/view/ActionBarTabStrip;->o:Landroid/support/v4/view/j;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/ah;->a(Landroid/database/DataSetObserver;)V

    :cond_e
    iget-object v0, p0, Landroid/support/v4/view/ActionBarTabStrip;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_17

    iput-object p2, p0, Landroid/support/v4/view/ActionBarTabStrip;->b:Landroid/support/v4/view/ah;

    invoke-direct {p0}, Landroid/support/v4/view/ActionBarTabStrip;->a()V

    :cond_17
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/support/v4/view/ActionBarTabStrip;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/view/ViewPager;

    if-nez v1, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ActionBarTabStrip must be a direct child of a ViewPager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    check-cast v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->a()Landroid/support/v4/view/ah;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/view/ActionBarTabStrip;->o:Landroid/support/v4/view/j;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/br;)Landroid/support/v4/view/br;

    iget-object v2, p0, Landroid/support/v4/view/ActionBarTabStrip;->o:Landroid/support/v4/view/j;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/bq;)V

    iput-object v0, p0, Landroid/support/v4/view/ActionBarTabStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ActionBarTabStrip;->n:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ActionBarTabStrip;->a(Landroid/support/v4/view/ah;Landroid/support/v4/view/ah;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/view/ActionBarTabStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->a()Landroid/support/v4/view/ah;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ActionBarTabStrip;->a(Landroid/support/v4/view/ah;Landroid/support/v4/view/ah;)V

    iget-object v0, p0, Landroid/support/v4/view/ActionBarTabStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/br;)Landroid/support/v4/view/br;

    iget-object v0, p0, Landroid/support/v4/view/ActionBarTabStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/bq;)V

    iput-object v1, p0, Landroid/support/v4/view/ActionBarTabStrip;->a:Landroid/support/v4/view/ViewPager;

    return-void
.end method
