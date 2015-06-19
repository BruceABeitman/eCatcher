.class Lqr/recognize/huawei_tv/HuaweiTVAuthorize$5;
.super Ljava/lang/Object;
.source "HuaweiTVAuthorize.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$5;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$5;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    const/4 v1, 0x1

    #setter for: Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mIsClickLoginCloudBtn:Z
    invoke-static {v0, v1}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->access$6(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;Z)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$5;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    const/16 v1, 0x1b9e

    const/16 v2, -0x3e7

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/login/StartLoginPageAdapter;->launchLoginPageAdapte(Landroid/app/Activity;II)V

    return-void
.end method
