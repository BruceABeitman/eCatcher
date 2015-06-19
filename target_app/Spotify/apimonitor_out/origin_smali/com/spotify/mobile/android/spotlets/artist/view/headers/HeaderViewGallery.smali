.class public Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/artist/view/g;
.implements Lcom/spotify/mobile/android/spotlets/artist/view/h;
.implements Lcom/spotify/mobile/android/spotlets/artist/view/headers/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/spotify/mobile/android/spotlets/artist/view/g",
        "<",
        "Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;",
        ">;",
        "Lcom/spotify/mobile/android/spotlets/artist/view/h;",
        "Lcom/spotify/mobile/android/spotlets/artist/view/headers/a;"
    }
.end annotation


# instance fields
.field private a:Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/ViewGroup;

.field private d:Lcom/spotify/mobile/android/spotlets/artist/view/headers/b;

.field private e:I

.field private f:I

.field private g:Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;

.field private h:Z

.field private i:Landroid/widget/ImageView;

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->e:I

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->f:I

    iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->j:Z

    iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->k:Z

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->e:I

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->f:I

    iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->j:Z

    iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->k:Z

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->d()V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;)Lcom/spotify/mobile/android/spotlets/artist/view/headers/b;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->d:Lcom/spotify/mobile/android/spotlets/artist/view/headers/b;

    return-object v0
.end method

.method private a(Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;)V
    .registers 9

    const/4 v0, 0x0

    const/high16 v6, 0x4000

    iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->k:Z

    if-nez v1, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->f:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->f:I

    int-to-float v3, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    sub-float v1, v3, v1

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_6a

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v5, v3

    mul-float/2addr v3, v4

    cmpg-float v4, v3, v2

    if-gez v4, :cond_51

    cmpg-float v2, v1, v0

    if-gez v2, :cond_6a

    :goto_46
    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->offsetTopAndBottom(I)V

    goto :goto_7

    :cond_51
    div-float v0, v3, v6

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->b()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    sub-float v4, v3, v2

    div-float/2addr v4, v6

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v2, v3, v2

    neg-float v2, v2

    div-float/2addr v2, v6

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float/2addr v0, v1

    goto :goto_46

    :cond_6a
    move v0, v1

    goto :goto_46
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->e()V

    return-void
.end method

.method private d()V
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030099

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a031a

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->c:Landroid/view/ViewGroup;

    const v0, 0x7f0a0291

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->a:Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;

    const v0, 0x7f0a031c

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->g:Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;

    const v0, 0x7f0a0258

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->b:Landroid/widget/TextView;

    const v0, 0x7f0a031b

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->g:Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->a:Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;->a(Landroid/support/v4/view/ViewPager;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->a:Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery$1;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery$1;-><init>(Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->a(Lcom/spotify/mobile/android/spotlets/artist/view/c;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->a:Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery$2;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery$2;-><init>(Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->a(Lcom/spotify/mobile/android/spotlets/artist/view/b;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->g:Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;->setVisibility(I)V

    :cond_70
    return-void
.end method

.method private e()V
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->a:Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1d

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->a:Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;

    if-eqz v2, :cond_19

    check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->a(Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;)V

    :cond_19
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1d
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->k:Z

    return-void
.end method

.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->a:Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->a(I)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_73

    invoke-virtual {p1, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-nez v2, :cond_73

    iget-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->j:Z

    if-nez v2, :cond_71

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->a:Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->getVisibility()I

    move-result v2

    if-nez v2, :cond_71

    move v2, v0

    :goto_28
    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->g:Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040010

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_40
    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->h:Z

    :cond_42
    :goto_42
    invoke-virtual {p1, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->f:I

    invoke-virtual {p1, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->e:I

    sub-int v1, v0, v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->c:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->c:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->offsetTopAndBottom(I)V

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->e:I

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->e()V

    goto :goto_a

    :cond_71
    move v2, v1

    goto :goto_28

    :cond_73
    iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->j:Z

    iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->h:Z

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->g:Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;->getVisibility()I

    move-result v2

    if-nez v2, :cond_87

    :goto_7f
    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->g:Lcom/spotify/mobile/android/spotlets/artist/view/PageIndicator;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/eb;->a(Landroid/view/View;)V

    goto :goto_42

    :cond_87
    move v0, v1

    goto :goto_7f
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->a(Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Image;",
            ">;)V"
        }
    .end annotation

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->a:Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_13
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_19
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->a:Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->a:Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/artist/adapters/c;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p2, p0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/c;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/spotify/mobile/android/spotlets/artist/view/g;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->a(Landroid/support/v4/view/ah;)V

    goto :goto_13
.end method

.method public final b()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->a:Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/GalleryViewPager;->b()I

    move-result v0

    return v0
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->b:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->c:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->e:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->offsetTopAndBottom(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    const/high16 v3, 0x4000

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_f
    return-void

    :cond_10
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    :cond_2c
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-super {p0, v2, v3}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0, v1, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewGallery;->setMeasuredDimension(II)V

    goto :goto_f
.end method
