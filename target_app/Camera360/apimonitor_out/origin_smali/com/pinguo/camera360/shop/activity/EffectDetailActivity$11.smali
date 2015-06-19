.class Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$11;
.super Ljava/lang/Object;
.source "EffectDetailActivity.java"

# interfaces
.implements Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->doInstall()V
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

    iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$11;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute(Z)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$11;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$11;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
    invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$6(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;

    move-result-object v1

    #calls: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->checkEngineMin(Lcom/pinguo/camera360/shop/model/entity/Product;)Z
    invoke-static {v0, v1}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$19(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;Lcom/pinguo/camera360/shop/model/entity/Product;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$11;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
    invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$6(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->install(Lcom/pinguo/camera360/shop/model/entity/Product;)V

    :goto_1c
    return-void

    :cond_1d
    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$11;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$6(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$11;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    const v1, 0x7f080260

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$11;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mInstallButton:Lcom/pinguo/camera360/shop/view/DetailInstallButton;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$4(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/DetailInstallButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->setState(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$11;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mInstallingProgress:Lcom/pinguo/camera360/shop/view/ProgressButton;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$3(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/ProgressButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/shop/view/ProgressButton;->setProgress(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$11;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$5(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/ui/TitleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/TitleView;->hideRightBtn()V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$11;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->tvPrice:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$20(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$11;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    const v2, 0x7f08025f

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c
.end method

.method public onProgress(I)V
    .registers 2

    return-void
.end method
