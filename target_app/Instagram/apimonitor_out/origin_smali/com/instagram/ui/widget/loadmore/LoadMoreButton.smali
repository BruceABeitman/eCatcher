.class public Lcom/instagram/ui/widget/loadmore/LoadMoreButton;
.super Landroid/widget/ViewAnimator;
.source "LoadMoreButton.java"


# instance fields
.field a:Lcom/instagram/ui/widget/loadmore/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()Landroid/view/View;
    .registers 3

    new-instance v0, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;

    invoke-virtual {p0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/common/ui/widget/spinner/SpinnerImageView;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/au;->spinner_large:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-object v0
.end method

.method private b()Landroid/view/View;
    .registers 4

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/au;->loadmore_add_compound:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/instagram/ui/widget/loadmore/a;

    invoke-direct {v1, p0}, Lcom/instagram/ui/widget/loadmore/a;-><init>(Lcom/instagram/ui/widget/loadmore/LoadMoreButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static b(Lcom/instagram/ui/widget/loadmore/c;)Z
    .registers 2

    invoke-interface {p0}, Lcom/instagram/ui/widget/loadmore/c;->h()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-interface {p0}, Lcom/instagram/ui/widget/loadmore/c;->d()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p0}, Lcom/instagram/ui/widget/loadmore/c;->e()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-interface {p0}, Lcom/instagram/ui/widget/loadmore/c;->i()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-interface {p0}, Lcom/instagram/ui/widget/loadmore/c;->g()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-interface {p0}, Lcom/instagram/ui/widget/loadmore/c;->f()Z

    move-result v0

    if-nez v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private c()Landroid/view/View;
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->load_more_private_user:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/instagram/ui/widget/loadmore/c;)V
    .registers 5

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-direct {p0, p1}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->e(Lcom/instagram/ui/widget/loadmore/c;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->d()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private d()Landroid/view/View;
    .registers 4

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/au;->loadmore_icon_refresh_compound:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/instagram/ui/widget/loadmore/b;

    invoke-direct {v1, p0}, Lcom/instagram/ui/widget/loadmore/b;-><init>(Lcom/instagram/ui/widget/loadmore/LoadMoreButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private d(Lcom/instagram/ui/widget/loadmore/c;)V
    .registers 4

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->b(Lcom/instagram/ui/widget/loadmore/c;)Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->setVisibility(I)V

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-virtual {p0, v1}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->setVisibility(I)V

    invoke-interface {p1}, Lcom/instagram/ui/widget/loadmore/c;->h()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->setDisplayedChild(I)V

    goto :goto_c

    :cond_1b
    invoke-interface {p1}, Lcom/instagram/ui/widget/loadmore/c;->e()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->setDisplayedChild(I)V

    goto :goto_c

    :cond_26
    invoke-interface {p1}, Lcom/instagram/ui/widget/loadmore/c;->i()Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->setDisplayedChild(I)V

    goto :goto_c

    :cond_31
    invoke-interface {p1}, Lcom/instagram/ui/widget/loadmore/c;->f()Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {p0, v1}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->setDisplayedChild(I)V

    goto :goto_c

    :cond_3b
    invoke-interface {p1}, Lcom/instagram/ui/widget/loadmore/c;->g()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->setDisplayedChild(I)V

    goto :goto_c
.end method

.method private e(Lcom/instagram/ui/widget/loadmore/c;)Landroid/view/View;
    .registers 5

    invoke-interface {p1, p0}, Lcom/instagram/ui/widget/loadmore/c;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->load_more_empty:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_6
.end method


# virtual methods
.method public final a(Lcom/instagram/ui/widget/loadmore/c;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->a:Lcom/instagram/ui/widget/loadmore/c;

    invoke-virtual {p0}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->getChildCount()I

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->c(Lcom/instagram/ui/widget/loadmore/c;)V

    :cond_b
    invoke-direct {p0, p1}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->d(Lcom/instagram/ui/widget/loadmore/c;)V

    return-void
.end method
