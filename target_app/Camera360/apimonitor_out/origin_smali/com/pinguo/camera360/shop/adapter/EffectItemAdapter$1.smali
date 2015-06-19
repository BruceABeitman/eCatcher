.class Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$1;
.super Ljava/lang/Object;
.source "EffectItemAdapter.java"

# interfaces
.implements Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->bindView(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;

.field private final synthetic val$position:I

.field private final synthetic val$product:Lcom/pinguo/camera360/shop/model/entity/Product;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;Lcom/pinguo/camera360/shop/model/entity/Product;I)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$1;->this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;

    iput-object p2, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$1;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;

    iput p3, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$1;->val$position:I

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

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$1;->this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$1;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;

    #calls: Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->showInterruptDialog(Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)V
    invoke-static {v0, v1, p1}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->access$7(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$1;->this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$1;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;

    #calls: Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->doUseEffect(Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)V
    invoke-static {v0, v1, p1}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->access$8(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)V

    goto :goto_11
.end method

.method public onInstallingClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onUninstallClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$1;->this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$1;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;

    #calls: Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->checkNetWorkAvailable(Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)Z
    invoke-static {v0, v1, p1}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->access$3(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$1;->this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$1;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;

    #calls: Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->checkSdkVersionAvailable(Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)Z
    invoke-static {v0, v1, p1}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->access$4(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$1;->this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;

    iget v1, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$1;->val$position:I

    iget-object v2, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$1;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    #calls: Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->checkMemberOnly(ILcom/pinguo/camera360/shop/model/entity/Product;Landroid/content/Context;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->access$5(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;ILcom/pinguo/camera360/shop/model/entity/Product;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$1;->this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$1;->val$product:Lcom/pinguo/camera360/shop/model/entity/Product;

    #calls: Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->doInstall(Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)V
    invoke-static {v0, v1, p1}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->access$6(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)V

    :cond_2b
    return-void
.end method
