.class public final Lcom/instagram/ui/widget/a/a;
.super Landroid/widget/FrameLayout;
.source "IgImageButton.java"


# instance fields
.field private final a:Lcom/instagram/ui/widget/a/c;

.field private b:Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/animation/AlphaAnimation;

.field private f:Lcom/instagram/common/ui/a/a;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/ui/widget/a/a;-><init>(Landroid/content/Context;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/ui/widget/a/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/instagram/ui/widget/a/c;

    invoke-direct {v0, p0, v1}, Lcom/instagram/ui/widget/a/c;-><init>(Lcom/instagram/ui/widget/a/a;B)V

    iput-object v0, p0, Lcom/instagram/ui/widget/a/a;->a:Lcom/instagram/ui/widget/a/c;

    iput-boolean v2, p0, Lcom/instagram/ui/widget/a/a;->g:Z

    invoke-virtual {p0}, Lcom/instagram/ui/widget/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->layout_imagebutton:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-direct {p0}, Lcom/instagram/ui/widget/a/a;->d()V

    sget v0, Lcom/facebook/av;->image_button_image_view:I

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

    iput-object v0, p0, Lcom/instagram/ui/widget/a/a;->b:Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

    iget-object v0, p0, Lcom/instagram/ui/widget/a/a;->b:Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

    new-instance v1, Lcom/instagram/ui/widget/a/b;

    invoke-direct {v1, p0}, Lcom/instagram/ui/widget/a/b;-><init>(Lcom/instagram/ui/widget/a/a;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v0, Lcom/facebook/au;->grid_camera_icon:I

    sget v0, Lcom/facebook/av;->touch_overlay:I

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/ui/widget/a/a;->c:Landroid/view/View;

    sget v0, Lcom/facebook/av;->video_overlay:I

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/ui/widget/a/a;->d:Landroid/view/View;

    invoke-direct {p0}, Lcom/instagram/ui/widget/a/a;->b()V

    return-void
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/ui/widget/a/a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/instagram/ui/widget/a/a;->f:Lcom/instagram/common/ui/a/a;

    iget-object v1, p0, Lcom/instagram/ui/widget/a/a;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/a/a;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/ui/widget/a/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/ui/widget/a/a;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/instagram/ui/widget/a/a;)Lcom/instagram/ui/widget/a/c;
    .registers 2

    iget-object v0, p0, Lcom/instagram/ui/widget/a/a;->a:Lcom/instagram/ui/widget/a/c;

    return-object v0
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/ui/widget/a/a;->f:Lcom/instagram/common/ui/a/a;

    iget-object v1, p0, Lcom/instagram/ui/widget/a/a;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/a/a;->b(Landroid/view/View;)V

    return-void
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/ui/widget/a/a;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/instagram/ui/widget/a/a;->e:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic c(Lcom/instagram/ui/widget/a/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/ui/widget/a/a;->c()V

    return-void
.end method

.method private d()V
    .registers 4

    new-instance v0, Lcom/instagram/common/ui/a/a;

    invoke-direct {v0}, Lcom/instagram/common/ui/a/a;-><init>()V

    iput-object v0, p0, Lcom/instagram/ui/widget/a/a;->f:Lcom/instagram/common/ui/a/a;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/instagram/ui/widget/a/a;->e:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/instagram/ui/widget/a/a;->e:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/instagram/ui/widget/a/a;->e:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    return-void
.end method

.method static synthetic d(Lcom/instagram/ui/widget/a/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/ui/widget/a/a;->a()V

    return-void
.end method


# virtual methods
.method public final getImageView()Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;
    .registers 2

    iget-object v0, p0, Lcom/instagram/ui/widget/a/a;->b:Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

    return-object v0
.end method

.method public final getVideoOverlayView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/instagram/ui/widget/a/a;->d:Landroid/view/View;

    return-object v0
.end method

.method protected final onMeasure(II)V
    .registers 7

    const/high16 v3, 0x4000

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/instagram/ui/widget/a/a;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/ui/widget/a/a;->b:Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

    invoke-virtual {v1}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/instagram/ui/widget/a/a;->b:Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

    invoke-virtual {v1}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/ui/widget/a/a;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/instagram/ui/widget/a/a;->b:Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

    invoke-virtual {v2}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/instagram/ui/widget/a/a;->b:Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

    invoke-virtual {v2}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/instagram/ui/widget/a/a;->c:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public final setEnableTouchOverlay(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/ui/widget/a/a;->g:Z

    return-void
.end method
