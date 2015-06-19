.class Lcom/pinguo/camera360/shop/activity/StoreActivity$1$1;
.super Ljava/lang/Object;
.source "StoreActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/shop/activity/StoreActivity$1;->onBackClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/shop/activity/StoreActivity$1;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/StoreActivity$1;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$1$1;->this$1:Lcom/pinguo/camera360/shop/activity/StoreActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$1$1;->this$1:Lcom/pinguo/camera360/shop/activity/StoreActivity$1;

    #getter for: Lcom/pinguo/camera360/shop/activity/StoreActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity$1;->access$0(Lcom/pinguo/camera360/shop/activity/StoreActivity$1;)Lcom/pinguo/camera360/shop/activity/StoreActivity;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopModel:Lcom/pinguo/camera360/shop/model/IShopModel;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->access$0(Lcom/pinguo/camera360/shop/activity/StoreActivity;)Lcom/pinguo/camera360/shop/model/IShopModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/shop/model/IShopModel;->destroy()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$1$1;->this$1:Lcom/pinguo/camera360/shop/activity/StoreActivity$1;

    #getter for: Lcom/pinguo/camera360/shop/activity/StoreActivity$1;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity$1;->access$0(Lcom/pinguo/camera360/shop/activity/StoreActivity$1;)Lcom/pinguo/camera360/shop/activity/StoreActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->finish()V

    return-void
.end method
