.class Lqr/recognize/huawei_tv/HuaweiTVAuthorize$C360AnimationiListener;
.super Ljava/lang/Object;
.source "HuaweiTVAuthorize.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C360AnimationiListener"
.end annotation


# instance fields
.field final synthetic this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;


# direct methods
.method constructor <init>(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)V
    .registers 2

    iput-object p1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$C360AnimationiListener;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$C360AnimationiListener;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$C360AnimationiListener;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    #getter for: Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mIsAuthorizeSucc:Z
    invoke-static {v1}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->access$3(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->updateAuthResultUI(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
