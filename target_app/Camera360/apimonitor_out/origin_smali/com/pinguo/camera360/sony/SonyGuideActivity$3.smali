.class Lcom/pinguo/camera360/sony/SonyGuideActivity$3;
.super Ljava/lang/Object;
.source "SonyGuideActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/sony/SonyGuideActivity;->wifiConnectFail(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$3;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$3;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    #calls: Lcom/pinguo/camera360/sony/SonyGuideActivity;->dismissScanDialog()V
    invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$1(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V

    iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$3;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    #calls: Lcom/pinguo/camera360/sony/SonyGuideActivity;->dismissWifiDialog()V
    invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$5(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V

    iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$3;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    #calls: Lcom/pinguo/camera360/sony/SonyGuideActivity;->dismissWifiDialogList()V
    invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$6(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V

    iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$3;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    #calls: Lcom/pinguo/camera360/sony/SonyGuideActivity;->dismissConnectingDialog()V
    invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$7(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V

    return-void
.end method
