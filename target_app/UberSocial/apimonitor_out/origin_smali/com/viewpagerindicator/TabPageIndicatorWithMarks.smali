.class public Lcom/viewpagerindicator/TabPageIndicatorWithMarks;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Lcom/viewpagerindicator/a;


# instance fields
.field private A:Z

.field private B:I

.field a:I

.field b:Ljava/lang/Runnable;

.field c:I

.field public d:Z

.field public e:Z

.field private f:Lcom/viewpagerindicator/b;

.field private g:Landroid/view/View$OnClickListener;

.field private final h:I

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/support/v4/view/ViewPager;

.field private k:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Ljava/lang/Integer;

.field private q:Ljava/lang/Integer;

.field private r:Lcom/viewpagerindicator/j;

.field private s:I

.field private t:I

.field private u:F

.field private v:Z

.field private w:Landroid/view/LayoutInflater;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x7f0100b9

    invoke-direct {p0, p1, p2, v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$1;

    invoke-direct {v0, p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$1;-><init>(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)V

    iput-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->g:Landroid/view/View$OnClickListener;

    const/16 v0, 0x14

    iput v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->h:I

    iput-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->l:Landroid/view/View;

    iput-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->m:Landroid/view/View;

    iput-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->n:Landroid/view/View;

    iput-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->o:Landroid/view/View;

    iput-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->p:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->q:Ljava/lang/Integer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->u:F

    iput-boolean v5, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->A:Z

    iput-boolean v5, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->d:Z

    iput-boolean v5, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->e:Z

    iput v6, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->B:I

    invoke-direct {p0, p2}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->a(Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/twidroid/q;->TabPageIndicator:[I

    const v1, 0x7f0d00a2

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v3, 0x7f080021

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const v4, 0x7f070008

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->s:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->t:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->setArrowsEnabled(Z)V

    invoke-virtual {p0, v5}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->setHorizontalScrollBarEnabled(Z)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->w:Landroid/view/LayoutInflater;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->i:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->i:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Landroid/support/v4/view/ViewPager;
    .registers 2

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->j:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private a(Landroid/util/AttributeSet;ILjava/lang/String;)Ljava/lang/Integer;
    .registers 5

    invoke-interface {p1, p2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_13
    return-object v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private a(I)V
    .registers 4

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->b:Ljava/lang/Runnable;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_f
    new-instance v1, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$3;

    invoke-direct {v1, p0, v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$3;-><init>(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;Landroid/view/View;)V

    iput-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->b:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .registers 5

    if-eqz p1, :cond_34

    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_34

    iget-object v2, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->p:Ljava/lang/Integer;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->p:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1d

    :cond_15
    const-string v2, "leftArrow"

    invoke-direct {p0, p1, v0, v2}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->a(Landroid/util/AttributeSet;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->p:Ljava/lang/Integer;

    :cond_1d
    iget-object v2, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->q:Ljava/lang/Integer;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->q:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_31

    :cond_29
    const-string v2, "rightArrow"

    invoke-direct {p0, p1, v0, v2}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->a(Landroid/util/AttributeSet;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->q:Ljava/lang/Integer;

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_34
    return-void
.end method

.method private a(Landroid/view/View;IIII)V
    .registers 8

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_16

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_16
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method private a(Ljava/lang/String;IIZZ)V
    .registers 15

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->w:Landroid/view/LayoutInflater;

    const v1, 0x7f030095

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;

    iget v6, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->z:I

    iget v7, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->u:F

    iget-boolean v8, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->e:Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v8}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->a(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;Ljava/lang/String;IIZIFZ)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->i:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f80

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p5, :cond_59

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_59
    return-void
.end method

.method static synthetic b(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Lcom/viewpagerindicator/b;
    .registers 2

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->f:Lcom/viewpagerindicator/b;

    return-object v0
.end method

.method static synthetic c(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->n:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->i:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private e()V
    .registers 3

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->n:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->n:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->o:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->o:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method static synthetic f(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Z
    .registers 2

    invoke-direct {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->k()Z

    move-result v0

    return v0
.end method

.method private g()V
    .registers 3

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->l:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->l:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method static synthetic g(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)V
    .registers 1

    invoke-direct {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->e()V

    return-void
.end method

.method private h()V
    .registers 3

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->l:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->l:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method static synthetic h(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Z
    .registers 2

    invoke-direct {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->l()Z

    move-result v0

    return v0
.end method

.method private i()V
    .registers 3

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->m:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method static synthetic i(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)V
    .registers 1

    invoke-direct {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->f()V

    return-void
.end method

.method private j()V
    .registers 3

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->m:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->m:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method static synthetic j(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)V
    .registers 1

    invoke-direct {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->g()V

    return-void
.end method

.method static synthetic k(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)V
    .registers 1

    invoke-direct {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->i()V

    return-void
.end method

.method private k()Z
    .registers 2

    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->getScrollX()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static synthetic l(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)V
    .registers 1

    invoke-direct {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->h()V

    return-void
.end method

.method private l()Z
    .registers 3

    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    if-ge v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private m()V
    .registers 2

    new-instance v0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$2;

    invoke-direct {v0, p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$2;-><init>(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)V

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic m(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)V
    .registers 1

    invoke-direct {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->j()V

    return-void
.end method

.method private n()V
    .registers 12

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->l:Landroid/view/View;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    :goto_b
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->m:Landroid/view/View;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    :goto_15
    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->a()Z

    move-result v0

    if-eqz v0, :cond_34

    move-object v0, p0

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->a(Landroid/view/View;IIII)V

    iget-object v6, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->n:Landroid/view/View;

    move-object v5, p0

    move v7, v2

    move v8, v4

    move v9, v4

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->a(Landroid/view/View;IIII)V

    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->o:Landroid/view/View;

    move-object v0, p0

    move v2, v4

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->a(Landroid/view/View;IIII)V

    :goto_33
    return-void

    :cond_34
    move-object v2, p0

    move-object v3, p0

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-direct/range {v2 .. v7}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->a(Landroid/view/View;IIII)V

    iget-object v3, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->n:Landroid/view/View;

    move-object v2, p0

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-direct/range {v2 .. v7}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->a(Landroid/view/View;IIII)V

    iget-object v3, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->o:Landroid/view/View;

    move-object v2, p0

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-direct/range {v2 .. v7}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->a(Landroid/view/View;IIII)V

    goto :goto_33

    :cond_4f
    move v3, v4

    goto :goto_15

    :cond_51
    move v2, v4

    goto :goto_b
.end method

.method static synthetic n(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)V
    .registers 1

    invoke-direct {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->m()V

    return-void
.end method

.method static synthetic o(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)V
    .registers 1

    invoke-direct {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->n()V

    return-void
.end method

.method static synthetic p(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic q(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic r(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)I
    .registers 2

    iget v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->x:I

    return v0
.end method

.method static synthetic s(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)Lcom/viewpagerindicator/j;
    .registers 2

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->r:Lcom/viewpagerindicator/j;

    return-object v0
.end method

.method static synthetic t(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)I
    .registers 2

    iget v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->s:I

    return v0
.end method

.method static synthetic u(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)I
    .registers 2

    iget v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->t:I

    return v0
.end method


# virtual methods
.method public a(Landroid/support/v4/view/ViewPager;I)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {p0, p2}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->setCurrentItem(I)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->v:Z

    return v0
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->n:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method public c()V
    .registers 10

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->j:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->j:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/viewpagerindicator/j;

    move-object v0, v6

    check-cast v0, Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v8

    iget v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->x:I

    if-le v0, v8, :cond_23

    add-int/lit8 v0, v8, -0x1

    iput v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->x:I

    :cond_23
    move v2, v7

    :goto_24
    if-ge v2, v8, :cond_3e

    invoke-interface {v6, v2}, Lcom/viewpagerindicator/j;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v2}, Lcom/viewpagerindicator/j;->c(I)I

    move-result v3

    iget v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->y:I

    if-ne v0, v2, :cond_3c

    const/4 v4, 0x1

    :goto_33
    iget-boolean v5, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->A:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->a(Ljava/lang/String;IIZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_3c
    move v4, v7

    goto :goto_33

    :cond_3e
    iget v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->x:I

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->setCurrentItem(I)V

    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->requestLayout()V

    goto :goto_5
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->o:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->o:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_88

    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_88

    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->p:Ljava/lang/Integer;

    if-eqz v1, :cond_92

    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->p:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_92

    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->p:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :goto_2e
    iput-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->q:Ljava/lang/Integer;

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->q:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->q:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    :cond_46
    iput-object v2, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->m:Landroid/view/View;

    const v1, 0x7f0901c7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->n:Landroid/view/View;

    const v1, 0x7f0901c8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->o:Landroid/view/View;

    iget v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->B:I

    if-ltz v0, :cond_6c

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->n:Landroid/view/View;

    iget v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->B:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->o:Landroid/view/View;

    iget v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->B:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_6c
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$4;

    invoke-direct {v1, p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$4;-><init>(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$5;

    invoke-direct {v1, p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$5;-><init>(Lcom/viewpagerindicator/TabPageIndicatorWithMarks;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_88
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->post(Ljava/lang/Runnable;)Z

    :cond_91
    return-void

    :cond_92
    move-object v1, v2

    goto :goto_2e
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    invoke-direct {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->m()V

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->i:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_f
    if-ge v1, v2, :cond_24

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;

    if-eqz v3, :cond_20

    check-cast v0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;

    invoke-virtual {v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks$TabView;->a()V

    :cond_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_24
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 8

    const/high16 v4, 0x4000

    const/4 v1, 0x1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-ne v2, v4, :cond_3f

    move v0, v1

    :goto_a
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->setFillViewport(Z)V

    iget-object v3, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-le v3, v1, :cond_4a

    if-eq v2, v4, :cond_1b

    const/high16 v1, -0x8000

    if-ne v2, v1, :cond_4a

    :cond_1b
    const/4 v1, 0x2

    if-le v3, v1, :cond_41

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f0ccccd

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->c:I

    :goto_2a
    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->getMeasuredWidth()I

    move-result v1

    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->getMeasuredWidth()I

    move-result v2

    if-eqz v0, :cond_3e

    if-eq v1, v2, :cond_3e

    iget v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->x:I

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->setCurrentItem(I)V

    :cond_3e
    return-void

    :cond_3f
    const/4 v0, 0x0

    goto :goto_a

    :cond_41
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->c:I

    goto :goto_2a

    :cond_4a
    const/4 v1, -0x1

    iput v1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->c:I

    goto :goto_2a
.end method

.method public onPageScrollStateChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->k:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->k:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_9
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 5

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->k:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->k:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_9
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->k:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->k:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_c
    return-void
.end method

.method public setAddTabDelimiters(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->A:Z

    return-void
.end method

.method public setArrowsEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->v:Z

    invoke-direct {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->m()V

    return-void
.end method

.method public setColorSelectedText(I)V
    .registers 2

    iput p1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->s:I

    return-void
.end method

.method public setCurrentItem(I)V
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->j:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iput p1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->x:I

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_1d
    if-ge v2, v3, :cond_31

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v2, p1, :cond_2f

    const/4 v0, 0x1

    :goto_28
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1d

    :cond_2f
    move v0, v1

    goto :goto_28

    :cond_31
    invoke-direct {p0, p1}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->a(I)V

    goto :goto_7
.end method

.method public setFadersBackgroundColor(I)V
    .registers 2

    iput p1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->B:I

    return-void
.end method

.method public setHighlightColor(I)V
    .registers 2

    iput p1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->z:I

    return-void
.end method

.method public setHighlightPosition(I)V
    .registers 2

    iput p1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->y:I

    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->k:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setOnTabIndicatorScollUpListener(Lcom/viewpagerindicator/b;)V
    .registers 2

    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->f:Lcom/viewpagerindicator/b;

    return-void
.end method

.method public setSelectedColor(I)V
    .registers 2

    iput p1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->a:I

    return-void
.end method

.method public setTabIndicatorLabelTextAllCaps(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->d:Z

    return-void
.end method

.method public setTabLabelTextSize(F)V
    .registers 2

    iput p1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->u:F

    return-void
.end method

.method public setTextColor(I)V
    .registers 2

    iput p1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->t:I

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

    const-string v1, "ViewPager adapter must implement TitleProviderWithMark to be used with TabPageIndicator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    check-cast v0, Lcom/viewpagerindicator/j;

    iput-object v0, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->r:Lcom/viewpagerindicator/j;

    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->j:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->c()V

    return-void
.end method

.method public settabLabelTextAllBold(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/viewpagerindicator/TabPageIndicatorWithMarks;->e:Z

    return-void
.end method
