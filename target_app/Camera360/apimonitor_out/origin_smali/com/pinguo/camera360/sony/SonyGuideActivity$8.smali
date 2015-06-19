.class Lcom/pinguo/camera360/sony/SonyGuideActivity$8;
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

.field private final synthetic val$passwordView:Lcom/pinguo/camera360/login/EditTextWithLine;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/sony/SonyGuideActivity;Lcom/pinguo/camera360/login/EditTextWithLine;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$8;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    iput-object p2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$8;->val$passwordView:Lcom/pinguo/camera360/login/EditTextWithLine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$8;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    const/4 v1, 0x1

    #setter for: Lcom/pinguo/camera360/sony/SonyGuideActivity;->mBtnClick:Z
    invoke-static {v0, v1}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$9(Lcom/pinguo/camera360/sony/SonyGuideActivity;Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$8;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$8;->val$passwordView:Lcom/pinguo/camera360/login/EditTextWithLine;

    #calls: Lcom/pinguo/camera360/sony/SonyGuideActivity;->hideSoftInputMethod(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$10(Lcom/pinguo/camera360/sony/SonyGuideActivity;Landroid/view/View;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$8;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    #getter for: Lcom/pinguo/camera360/sony/SonyGuideActivity;->mSonyWifiModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
    invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$3(Lcom/pinguo/camera360/sony/SonyGuideActivity;)Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->clear()V

    return-void
.end method
