.class Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$7;
.super Ljava/lang/Object;
.source "EffectDetailActivity.java"

# interfaces
.implements Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;


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

    iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$7;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstalledClick(Landroid/view/View;)V
    .registers 4

    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->needInterrupt()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$7;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->showInterruptDialog(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$17(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;Landroid/content/Context;)V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$7;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->doUseEffect(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$18(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;Landroid/content/Context;)V

    goto :goto_13
.end method

.method public onInstallingClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onUninstallClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$7;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    #calls: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->checkNetWorkAvailable()Z
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$13(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$7;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    #calls: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->checkSdkVersionAvailable()Z
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$14(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$7;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    #calls: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->checkMemberOnly()Z
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$15(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$7;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    #calls: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->doInstall()V
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$16(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)V

    :cond_1d
    return-void
.end method
