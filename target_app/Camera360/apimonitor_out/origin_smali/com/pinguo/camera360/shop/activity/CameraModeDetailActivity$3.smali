.class Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$3;
.super Ljava/lang/Object;
.source "CameraModeDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->initViews()V
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

    iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$3;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$3;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;

    #calls: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->showDetailPopupWindow()V
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$7(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)V

    return-void
.end method
