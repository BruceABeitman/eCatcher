.class Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$8;
.super Ljava/lang/Object;
.source "CameraModeDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$8;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$8;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mSoundMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$13(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$8;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;
    invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$9(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Lcom/pinguo/camera360/shop/view/BannerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/shop/view/BannerView;->getCurrentItem()I

    move-result v0

    iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$8;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mSoundMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$13(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_25

    :cond_24
    :goto_24
    return-void

    :cond_25
    iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$8;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mIsPlaying:Z
    invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$5(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$8;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    #calls: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->stopMp3()V
    invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$6(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)V

    goto :goto_24

    :cond_33
    iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$8;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    #calls: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->playMp3(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$14(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;Ljava/lang/String;)V

    goto :goto_24
.end method
