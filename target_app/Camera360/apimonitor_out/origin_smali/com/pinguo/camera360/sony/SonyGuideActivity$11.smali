.class Lcom/pinguo/camera360/sony/SonyGuideActivity$11;
.super Ljava/lang/Object;
.source "SonyGuideActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$11;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$11;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    const/4 v2, 0x1

    #setter for: Lcom/pinguo/camera360/sony/SonyGuideActivity;->mBtnClick:Z
    invoke-static {v1, v2}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$9(Lcom/pinguo/camera360/sony/SonyGuideActivity;Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$11;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    const/4 v2, 0x0

    #setter for: Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialogs:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    invoke-static {v1, v2}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$15(Lcom/pinguo/camera360/sony/SonyGuideActivity;Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;)V

    iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$11;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    #getter for: Lcom/pinguo/camera360/sony/SonyGuideActivity;->mAccessPonits:Ljava/util/List;
    invoke-static {v1}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$16(Lcom/pinguo/camera360/sony/SonyGuideActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;

    iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$11;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    #getter for: Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyWifiModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
    invoke-static {v1}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$3(Lcom/pinguo/camera360/sony/SonyGuideActivity;)Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->connectSonyWifiAccessPoint(Lcom/pinguo/camera360/sony/wifi/AccessPoint;)V

    return-void
.end method
