.class  Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment$2;
.super Ljava/lang/Object;
.source "WelcomeAdsFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;
#getter for: Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;->mAdsImageView:Landroid/widget/ImageView;
invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;->access$0(Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;)Landroid/widget/ImageView;
move-result-object v1
if-nez v1, :cond_9
:goto_8
:cond_8
return-void
:cond_9
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_17
invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z
move-result v1
if-nez v1, :cond_8
:cond_17
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;
#getter for: Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;->mAdsImageView:Landroid/widget/ImageView;
invoke-static {v2}, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;->access$0(Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;)Landroid/widget/ImageView;
move-result-object v2
#calls: Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;->recycleWelcome(Landroid/widget/ImageView;)V
invoke-static {v1, v2}, Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;->access$1(Lcom/pinguo/camera360/camera/controller/WelcomeAdsFragment;Landroid/widget/ImageView;)V
goto :goto_8
.end method