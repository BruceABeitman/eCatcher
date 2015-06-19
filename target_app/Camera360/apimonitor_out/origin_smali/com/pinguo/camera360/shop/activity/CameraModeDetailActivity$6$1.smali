.class Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6$1;
.super Ljava/lang/Object;
.source "CameraModeDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;->onUninstallClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6$1;->this$1:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6;

    iput-object p2, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    new-instance v0, Lcom/pinguo/camera360/updateOnline/SimpleUpdateCallBack;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$6$1;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/updateOnline/SimpleUpdateCallBack;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/pinguo/camera360/updateOnline/GlobalUpdateManager;->manualUpdate(Lcom/pinguo/camera360/updateOnline/UpdateInterface;)V

    return-void
.end method
