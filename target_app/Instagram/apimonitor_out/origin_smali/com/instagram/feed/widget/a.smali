.class public Lcom/instagram/feed/widget/a;
.super Landroid/widget/ViewAnimator;
.source "IgProgressImageView.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/widget/e;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/instagram/ui/e/a;

.field private c:Lcom/instagram/common/ui/widget/imageview/IgImageView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/widget/TextView;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/feed/widget/a;->a:Ljava/util/List;

    invoke-static {}, Lcom/instagram/ui/e/d;->a()Lcom/instagram/ui/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/widget/a;->b:Lcom/instagram/ui/e/a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/feed/widget/a;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/feed/widget/a;->a:Ljava/util/List;

    invoke-static {}, Lcom/instagram/ui/e/d;->a()Lcom/instagram/ui/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/widget/a;->b:Lcom/instagram/ui/e/a;

    invoke-direct {p0, p2}, Lcom/instagram/feed/widget/a;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/feed/widget/a;)Lcom/instagram/common/ui/widget/imageview/IgImageView;
    .registers 2

    invoke-direct {p0}, Lcom/instagram/feed/widget/a;->getIgImageView()Lcom/instagram/common/ui/widget/imageview/IgImageView;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/util/AttributeSet;)V
    .registers 8

    const/4 v5, -0x2

    const/16 v4, 0x11

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/instagram/feed/widget/a;->removeAllViews()V

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Lcom/instagram/feed/widget/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/bb;->IgProgressImageView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/facebook/bb;->IgProgressImageView_perfTrackingCategory:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/feed/widget/a;->f:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1e
    invoke-direct {p0}, Lcom/instagram/feed/widget/a;->getIgImageView()Lcom/instagram/common/ui/widget/imageview/IgImageView;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/instagram/feed/widget/a;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/instagram/feed/widget/a;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/instagram/feed/widget/a;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/instagram/feed/widget/a;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/instagram/feed/widget/a;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic b(Lcom/instagram/feed/widget/a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/feed/widget/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/feed/widget/a;)Landroid/widget/ProgressBar;
    .registers 2

    invoke-direct {p0}, Lcom/instagram/feed/widget/a;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/feed/widget/a;)Lcom/instagram/ui/e/a;
    .registers 2

    iget-object v0, p0, Lcom/instagram/feed/widget/a;->b:Lcom/instagram/ui/e/a;

    return-object v0
.end method

.method static synthetic e(Lcom/instagram/feed/widget/a;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/instagram/feed/widget/a;->a:Ljava/util/List;

    return-object v0
.end method

.method private getIgImageView()Lcom/instagram/common/ui/widget/imageview/IgImageView;
    .registers 3

    iget-object v0, p0, Lcom/instagram/feed/widget/a;->c:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    if-nez v0, :cond_30

    new-instance v0, Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-virtual {p0}, Lcom/instagram/feed/widget/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/common/ui/widget/imageview/IgImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/feed/widget/a;->c:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    iget-object v0, p0, Lcom/instagram/feed/widget/a;->c:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/instagram/feed/widget/a;->c:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    new-instance v1, Lcom/instagram/feed/widget/c;

    invoke-direct {v1, p0}, Lcom/instagram/feed/widget/c;-><init>(Lcom/instagram/feed/widget/a;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setProgressListener(Lcom/instagram/common/ui/widget/imageview/g;)V

    iget-object v0, p0, Lcom/instagram/feed/widget/a;->c:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setReportProgress(Z)V

    iget-object v0, p0, Lcom/instagram/feed/widget/a;->c:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    new-instance v1, Lcom/instagram/feed/widget/d;

    invoke-direct {v1, p0}, Lcom/instagram/feed/widget/d;-><init>(Lcom/instagram/feed/widget/a;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setOnLoadListener(Lcom/instagram/common/ui/widget/imageview/f;)V

    :cond_30
    iget-object v0, p0, Lcom/instagram/feed/widget/a;->c:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    return-object v0
.end method

.method private getProgressBar()Landroid/widget/ProgressBar;
    .registers 4

    iget-object v0, p0, Lcom/instagram/feed/widget/a;->d:Landroid/widget/ProgressBar;

    if-nez v0, :cond_2b

    new-instance v0, Lcom/instagram/feed/widget/f;

    invoke-virtual {p0}, Lcom/instagram/feed/widget/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/feed/widget/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/feed/widget/a;->d:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/instagram/feed/widget/a;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/instagram/feed/widget/a;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/instagram/feed/widget/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/au;->feed_image_determinate_progress:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/instagram/feed/widget/a;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_2b
    iget-object v0, p0, Lcom/instagram/feed/widget/a;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private getTextView()Landroid/widget/TextView;
    .registers 3

    iget-object v0, p0, Lcom/instagram/feed/widget/a;->e:Landroid/widget/TextView;

    if-nez v0, :cond_27

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/feed/widget/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/feed/widget/a;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/instagram/feed/widget/a;->e:Landroid/widget/TextView;

    sget v1, Lcom/facebook/az;->tap_to_reload:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/instagram/feed/widget/a;->e:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/instagram/feed/widget/a;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/instagram/feed/widget/b;

    invoke-direct {v1, p0}, Lcom/instagram/feed/widget/b;-><init>(Lcom/instagram/feed/widget/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_27
    iget-object v0, p0, Lcom/instagram/feed/widget/a;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method private getUIContentState$1a5ad91a()I
    .registers 2

    invoke-virtual {p0}, Lcom/instagram/feed/widget/a;->getDisplayedChild()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    sget v0, Lcom/instagram/ui/e/b;->a:I

    :goto_9
    return v0

    :pswitch_a
    sget v0, Lcom/instagram/ui/e/b;->e:I

    goto :goto_9

    :pswitch_d
    sget v0, Lcom/instagram/ui/e/b;->b:I

    goto :goto_9

    :pswitch_10
    sget v0, Lcom/instagram/ui/e/b;->c:I

    goto :goto_9

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_a
        :pswitch_d
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/instagram/feed/widget/e;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/feed/widget/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a()Z
    .registers 2

    invoke-direct {p0}, Lcom/instagram/feed/widget/a;->getIgImageView()Lcom/instagram/common/ui/widget/imageview/IgImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->c()Z

    move-result v0

    return v0
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/feed/widget/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/instagram/feed/widget/a;->getIgImageView()Lcom/instagram/common/ui/widget/imageview/IgImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/ViewAnimator;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/instagram/feed/widget/a;->b:Lcom/instagram/ui/e/a;

    iget-object v1, p0, Lcom/instagram/feed/widget/a;->f:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/instagram/ui/e/a;->a(Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/feed/widget/a;->b:Lcom/instagram/ui/e/a;

    invoke-direct {p0}, Lcom/instagram/feed/widget/a;->getUIContentState$1a5ad91a()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/instagram/ui/e/a;->a(Landroid/view/View;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/ViewAnimator;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/instagram/feed/widget/a;->b:Lcom/instagram/ui/e/a;

    invoke-virtual {v0, p0}, Lcom/instagram/ui/e/a;->a(Landroid/view/View;)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/feed/widget/a;->b:Lcom/instagram/ui/e/a;

    sget v1, Lcom/instagram/ui/e/b;->b:I

    invoke-virtual {v0, p0, v1}, Lcom/instagram/ui/e/a;->a(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/instagram/feed/widget/a;->getIgImageView()Lcom/instagram/common/ui/widget/imageview/IgImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setUrl(Ljava/lang/String;)V

    return-void
.end method
