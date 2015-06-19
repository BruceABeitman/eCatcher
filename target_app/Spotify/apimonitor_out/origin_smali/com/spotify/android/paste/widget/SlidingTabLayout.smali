.class public Lcom/spotify/android/paste/widget/SlidingTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/support/v4/view/ViewPager;

.field private h:Landroid/support/v4/view/br;

.field private final i:Lcom/spotify/android/paste/widget/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/spotify/android/paste/widget/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/spotify/android/paste/b;->u:I

    invoke-direct {p0, p1, p2, v0}, Lcom/spotify/android/paste/widget/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    const/16 v4, 0x18

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-class v0, Lcom/spotify/android/paste/widget/SlidingTabLayout;

    invoke-static {v0, p0}, Lcom/spotify/android/paste/widget/f;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    sget-object v0, Lcom/spotify/android/paste/e;->w:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/spotify/android/paste/widget/SlidingTabLayout;->a:I

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/spotify/android/paste/widget/SlidingTabLayout;->b:I

    const/16 v1, 0x8

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/spotify/android/paste/widget/SlidingTabLayout;->c:I

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/spotify/android/paste/widget/SlidingTabLayout;->d:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v3}, Lcom/spotify/android/paste/widget/SlidingTabLayout;->setHorizontalScrollBarEnabled(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/SlidingTabLayout;->setFillViewport(Z)V

    new-instance v0, Lcom/spotify/android/paste/widget/l;

    invoke-direct {v0, p1, p2, p3}, Lcom/spotify/android/paste/widget/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/spotify/android/paste/widget/SlidingTabLayout;->i:Lcom/spotify/android/paste/widget/l;

    iget-object v0, p0, Lcom/spotify/android/paste/widget/SlidingTabLayout;->i:Lcom/spotify/android/paste/widget/l;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/spotify/android/paste/widget/SlidingTabLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/android/paste/widget/SlidingTabLayout;)Lcom/spotify/android/paste/widget/l;
    .registers 2

    iget-object v0, p0, Lcom/spotify/android/paste/widget/SlidingTabLayout;->i:Lcom/spotify/android/paste/widget/l;

    return-object v0
.end method

.method private a(II)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/android/paste/widget/SlidingTabLayout;->i:Lcom/spotify/android/paste/widget/l;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/l;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_c

    if-ltz p1, :cond_c

    if-lt p1, v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/spotify/android/paste/widget/SlidingTabLayout;->i:Lcom/spotify/android/paste/widget/l;

    invoke-virtual {v0, p1}, Lcom/spotify/android/paste/widget/l;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    if-gtz p1, :cond_1e

    if-lez p2, :cond_21

    :cond_1e
    iget v1, p0, Lcom/spotify/android/paste/widget/SlidingTabLayout;->d:I

    sub-int/2addr v0, v1

    :cond_21
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/spotify/android/paste/widget/SlidingTabLayout;->scrollTo(II)V

    goto :goto_c
.end method

.method static synthetic a(Lcom/spotify/android/paste/widget/SlidingTabLayout;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/spotify/android/paste/widget/SlidingTabLayout;->a(II)V

    return-void
.end method

.method static synthetic b(Lcom/spotify/android/paste/widget/SlidingTabLayout;)Landroid/support/v4/view/br;
    .registers 2

    iget-object v0, p0, Lcom/spotify/android/paste/widget/SlidingTabLayout;->h:Landroid/support/v4/view/br;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/android/paste/widget/SlidingTabLayout;)Landroid/support/v4/view/ViewPager;
    .registers 2

    iget-object v0, p0, Lcom/spotify/android/paste/widget/SlidingTabLayout;->g:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/support/v4/view/ViewPager;)V
    .registers 14

    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/spotify/android/paste/widget/SlidingTabLayout;->i:Lcom/spotify/android/paste/widget/l;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/l;->removeAllViews()V

    iput-object p1, p0, Lcom/spotify/android/paste/widget/SlidingTabLayout;->g:Landroid/support/v4/view/ViewPager;

    if-eqz p1, :cond_ab

    new-instance v0, Lcom/spotify/android/paste/widget/i;

    invoke-direct {v0, p0, v3}, Lcom/spotify/android/paste/widget/i;-><init>(Lcom/spotify/android/paste/widget/SlidingTabLayout;B)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/br;)V

    iget-object v0, p0, Lcom/spotify/android/paste/widget/SlidingTabLayout;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->a()Landroid/support/v4/view/ah;

    move-result-object v5

    new-instance v6, Lcom/spotify/android/paste/widget/j;

    invoke-direct {v6, p0, v3}, Lcom/spotify/android/paste/widget/j;-><init>(Lcom/spotify/android/paste/widget/SlidingTabLayout;B)V

    move v2, v3

    :goto_20
    invoke-virtual {v5}, Landroid/support/v4/view/ah;->b()I

    move-result v0

    if-ge v2, v0, :cond_ab

    iget v0, p0, Lcom/spotify/android/paste/widget/SlidingTabLayout;->e:I

    if-eqz v0, :cond_ac

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/spotify/android/paste/widget/SlidingTabLayout;->e:I

    iget-object v7, p0, Lcom/spotify/android/paste/widget/SlidingTabLayout;->i:Lcom/spotify/android/paste/widget/l;

    invoke-virtual {v0, v1, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget v0, p0, Lcom/spotify/android/paste/widget/SlidingTabLayout;->f:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_42
    if-nez v1, :cond_81

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v8, 0x11

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setGravity(I)V

    iget v8, p0, Lcom/spotify/android/paste/widget/SlidingTabLayout;->a:I

    if-eqz v8, :cond_a4

    iget v8, p0, Lcom/spotify/android/paste/widget/SlidingTabLayout;->a:I

    invoke-static {v7, v1, v8}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;Landroid/widget/TextView;I)V

    :goto_5b
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x101030e

    invoke-virtual {v8, v9, v7, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v7, v7, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setAllCaps(Z)V

    iget v7, p0, Lcom/spotify/android/paste/widget/SlidingTabLayout;->b:I

    iget v8, p0, Lcom/spotify/android/paste/widget/SlidingTabLayout;->c:I

    iget v9, p0, Lcom/spotify/android/paste/widget/SlidingTabLayout;->b:I

    iget v10, p0, Lcom/spotify/android/paste/widget/SlidingTabLayout;->c:I

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_81
    if-nez v0, :cond_8e

    const-class v7, Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8e

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    :cond_8e
    if-eqz v0, :cond_97

    invoke-virtual {v5, v2}, Landroid/support/v4/view/ah;->b(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_97
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/android/paste/widget/SlidingTabLayout;->i:Lcom/spotify/android/paste/widget/l;

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/l;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_20

    :cond_a4
    const/4 v7, 0x2

    const/high16 v8, 0x4140

    invoke-virtual {v1, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_5b

    :cond_ab
    return-void

    :cond_ac
    move-object v0, v4

    move-object v1, v4

    goto :goto_42
.end method

.method public final a(Landroid/support/v4/view/br;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/android/paste/widget/SlidingTabLayout;->h:Landroid/support/v4/view/br;

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/spotify/android/paste/widget/SlidingTabLayout;->g:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/spotify/android/paste/widget/SlidingTabLayout;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/spotify/android/paste/widget/SlidingTabLayout;->a(II)V

    :cond_11
    return-void
.end method
