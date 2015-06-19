.class Lqr/recognize/huawei_tv/HuaweiTVAuthorize$14;
.super Ljava/lang/Object;
.source "HuaweiTVAuthorize.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->showAuthorizeFailed()V
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

    iput-object p1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$14;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$14;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    #getter for: Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mIsAuthorizeSucc:Z
    invoke-static {v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->access$3(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$14;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    invoke-virtual {v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->retryAuthorize()V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$14;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    invoke-virtual {v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->startAuthorize()V

    :cond_12
    return-void
.end method
