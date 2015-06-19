.class Lqr/recognize/huawei_tv/HuaweiTVAuthorize$6$1;
.super Ljava/lang/Object;
.source "HuaweiTVAuthorize.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqr/recognize/huawei_tv/HuaweiTVAuthorize$6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lqr/recognize/huawei_tv/HuaweiTVAuthorize$6;


# direct methods
.method constructor <init>(Lqr/recognize/huawei_tv/HuaweiTVAuthorize$6;)V
    .registers 2

    iput-object p1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$6$1;->this$1:Lqr/recognize/huawei_tv/HuaweiTVAuthorize$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$6$1;->this$1:Lqr/recognize/huawei_tv/HuaweiTVAuthorize$6;

    #getter for: Lqr/recognize/huawei_tv/HuaweiTVAuthorize$6;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
    invoke-static {v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$6;->access$0(Lqr/recognize/huawei_tv/HuaweiTVAuthorize$6;)Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    move-result-object v0

    #getter for: Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mHuaweiTvModel:Lqr/recognize/huawei_tv/HuaweiTvModel;
    invoke-static {v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->access$4(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)Lqr/recognize/huawei_tv/HuaweiTvModel;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lqr/recognize/huawei_tv/HuaweiTvModel;->startAuthorize(I)V

    return-void
.end method
