.class Lcom/pinguo/camera360/lib/ui/ImageLoaderView$1;
.super Ljava/lang/Object;
.source "ImageLoaderView.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setImageUrl(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

.field private final synthetic val$backupUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/lib/ui/ImageLoaderView;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView$1;->this$0:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

    iput-object p2, p0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView$1;->val$backupUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .registers 4

    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .registers 7

    instance-of v1, p2, Landroid/widget/ImageView;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView$1;->this$0:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

    #getter for: Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;
    invoke-static {v1}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->access$0(Lcom/pinguo/camera360/lib/ui/ImageLoaderView;)Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getLoadingUriForView(Landroid/widget/ImageView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView$1;->this$0:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

    iget-object v2, p0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView$1;->val$backupUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setImageUrl(Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    return-void
.end method
