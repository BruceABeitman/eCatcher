.class Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1$1;
.super Ljava/lang/Object;
.source "EffectDetailActivity.java"

# interfaces
.implements Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1$1;->this$2:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute(Z)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1$1;->this$2:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;->this$1:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;->access$0(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;)Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;->access$0(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;)Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$6(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;

    move-result-object v0

    iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Store;->storeEffectMoreLayUninstall(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1$1;->this$2:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;->this$1:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;->access$0(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;)Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;->access$0(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;)Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mInstallButton:Lcom/pinguo/camera360/shop/view/DetailInstallButton;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$4(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/DetailInstallButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->setState(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1$1;->this$2:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;->this$1:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;->access$0(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;)Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;->access$0(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;)Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$5(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/ui/TitleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/TitleView;->hideRightBtn()V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1$1;->this$2:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;->this$1:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;->access$0(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;)Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;->access$0(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;)Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    move-result-object v0

    #calls: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->setBackResult()V
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$7(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1$1;->this$2:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;->this$1:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;->access$0(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;)Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;->access$0(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;)Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->finish()V

    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1$1;->this$2:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;->this$1:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;
    invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;->access$0(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3$1;)Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;

    move-result-object v1

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
    invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;->access$0(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;)Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    move-result-object v1

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
    invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$6(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;

    move-result-object v1

    iget-object v1, v1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    sget-object v2, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;->uninstall:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;

    invoke-virtual {v0, v1, v2, p0}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->unregistListener(Ljava/lang/String;Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V

    return-void
.end method

.method public onProgress(I)V
    .registers 2

    return-void
.end method
