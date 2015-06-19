.class Lqr/recognize/huawei_tv/HuaweiTVAuthorize$6;
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

    iput-object p1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$6;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lqr/recognize/huawei_tv/HuaweiTVAuthorize$6;)Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
    .registers 2

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$6;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$6;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    const/4 v1, 0x1

    #setter for: Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mIsClickLoginCloudBtn:Z
    invoke-static {v0, v1}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->access$6(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;Z)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$6;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    #getter for: Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mThreadPool:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->access$7(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$6$1;

    invoke-direct {v1, p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$6$1;-><init>(Lqr/recognize/huawei_tv/HuaweiTVAuthorize$6;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$6;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    invoke-virtual {v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->finish()V

    return-void
.end method
