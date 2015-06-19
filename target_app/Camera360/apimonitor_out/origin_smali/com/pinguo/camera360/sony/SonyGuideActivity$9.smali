.class Lcom/pinguo/camera360/sony/SonyGuideActivity$9;
.super Ljava/lang/Object;
.source "SonyGuideActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/sony/SonyGuideActivity;->showConfigWifiDialog()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
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

    iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$9;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$9;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    #getter for: Lcom/pinguo/camera360/sony/SonyGuideActivity;->mBtnClick:Z
    invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$13(Lcom/pinguo/camera360/sony/SonyGuideActivity;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$9;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    #getter for: Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyWifiModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
    invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$3(Lcom/pinguo/camera360/sony/SonyGuideActivity;)Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->clear()V

    :cond_14
    return-void
.end method
