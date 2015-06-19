.class Lqr/recognize/huawei_tv/HuaweiTVAuthorize$7;
.super Ljava/lang/Object;
.source "HuaweiTVAuthorize.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->showNeedLoginCloudDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;


# direct methods
.method constructor <init>(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)V
    .registers 2

    iput-object p1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$7;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x4

    if-ne p2, v0, :cond_21

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$7;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    const/4 v1, 0x1

    #setter for: Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mIsCancelCloudLoginByBackKey:Z
    invoke-static {v0, v1}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->access$8(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;Z)V

    invoke-static {}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "End user click the back key to dismiss the dialog"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$7;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    invoke-virtual {v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->finish()V

    :cond_21
    const/4 v0, 0x0

    return v0
.end method
