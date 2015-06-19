.class Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$11;
.super Ljava/lang/Object;
.source "CameraModeDetailActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->playMp3(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$11;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$11;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$16(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$11;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    const/4 v1, 0x0

    #setter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0, v1}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$17(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;Landroid/graphics/drawable/AnimationDrawable;)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$11;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mPlaySoundBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$18(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020426

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$11;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    const/4 v1, 0x0

    #setter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mIsPlaying:Z
    invoke-static {v0, v1}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$19(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;Z)V

    return-void
.end method
