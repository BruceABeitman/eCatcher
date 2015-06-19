.class Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$4;
.super Ljava/lang/Object;
.source "EffectItemAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->checkSdkVersionAvailable(Lcom/pinguo/camera360/shop/model/entity/Product;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$4;->this$0:Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;

    iput-object p2, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    new-instance v0, Lcom/pinguo/camera360/updateOnline/SimpleUpdateCallBack;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter$4;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/updateOnline/SimpleUpdateCallBack;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager;->manualUpdate(Lcom/pinguo/camera360/updateOnline/UpdateInterface;)V

    return-void
.end method
