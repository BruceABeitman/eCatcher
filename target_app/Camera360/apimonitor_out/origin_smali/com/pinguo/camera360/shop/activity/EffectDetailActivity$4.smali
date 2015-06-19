.class Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$4;
.super Ljava/lang/Object;
.source "EffectDetailActivity.java"

# interfaces
.implements Lcom/pinguo/camera360/shop/view/ScrollGallery$onLongPressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress()V
    .registers 6

    iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;
    invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$1(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/BannerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/shop/view/BannerView;->getCurrentItem()I

    move-result v0

    iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;
    invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$1(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/BannerView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "loading_picture_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/shop/view/BannerView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/shop/view/LoadingPictureView;

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->getEffectBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3b

    invoke-virtual {v1}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->getOriBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3b

    invoke-virtual {v1}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->getOriBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3b
    iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mOriPictureText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$8(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onLongPressUp()V
    .registers 6

    iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;
    invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$1(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/BannerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/shop/view/BannerView;->getCurrentItem()I

    move-result v0

    iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;
    invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$1(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/BannerView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "loading_picture_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/shop/view/BannerView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/shop/view/LoadingPictureView;

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->getEffectBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-virtual {v1}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->getEffectBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_35
    iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mOriPictureText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$8(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
