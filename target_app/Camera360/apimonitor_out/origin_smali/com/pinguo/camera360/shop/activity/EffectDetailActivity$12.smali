.class Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$12;
.super Ljava/lang/Object;
.source "EffectDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->checkSdkVersionAvailable()Z
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

    iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$12;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    new-instance v0, Lcom/pinguo/camera360/updateOnline/SimpleUpdateCallBack;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$12;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/updateOnline/SimpleUpdateCallBack;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager;->manualUpdate(Lcom/pinguo/camera360/updateOnline/UpdateInterface;)V

    return-void
.end method
