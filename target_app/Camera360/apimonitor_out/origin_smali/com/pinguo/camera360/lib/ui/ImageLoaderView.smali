.class public Lcom/pinguo/camera360/lib/ui/ImageLoaderView;
.super Landroid/widget/ImageView;
.source "ImageLoaderView.java"


# instance fields
.field private mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

.field private mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x1

    const v1, 0x7f0202c2

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x1

    const v1, 0x7f0202c2

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const/4 v2, 0x1

    const v1, 0x7f0202c2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/lib/ui/ImageLoaderView;)Lcom/nostra13/universalimageloader/core/ImageLoader;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-object v0
.end method


# virtual methods
.method public setCacheInMemory(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isCacheInMemory()Z

    move-result v0

    or-int/2addr v0, p1

    if-eqz v0, :cond_1e

    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    :cond_1e
    return-void
.end method

.method public setCacheOnDisc(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isCacheInMemory()Z

    move-result v0

    or-int/2addr v0, p1

    if-eqz v0, :cond_1e

    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    :cond_1e
    return-void
.end method

.method public setDefaultImage(I)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getStubImage()I

    move-result v0

    if-eq p1, v0, :cond_25

    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    :cond_25
    return-void
.end method

.method public setImageLoadingListener(Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->mListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v0, p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    if-nez p1, :cond_a

    const-string/jumbo p1, ""

    :cond_a
    iget-object v0, p0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    iget-object v2, p0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->mListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    invoke-virtual {v0, p1, p0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setImageUrl(Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v0, p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    new-instance v2, Lcom/pinguo/camera360/lib/ui/ImageLoaderView$1;

    invoke-direct {v2, p0, p2}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView$1;-><init>(Lcom/pinguo/camera360/lib/ui/ImageLoaderView;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    goto :goto_9
.end method

.method public setOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-void
.end method
