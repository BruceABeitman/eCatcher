.class Lqr/recognize/huawei_tv/HuaweiTVAuthorize$1;
.super Landroid/os/Handler;
.source "HuaweiTVAuthorize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
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

    iput-object p1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$1;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-static {}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "msg.what="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_a6

    :goto_22
    :pswitch_22
    return-void

    :pswitch_23
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$1;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    const/4 v1, 0x1

    #setter for: Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mIsAuthorizeSucc:Z
    invoke-static {v0, v1}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->access$1(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;Z)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$1;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$1;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    invoke-virtual {v1}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080200

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAuthResultTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->access$2(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;Ljava/lang/String;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$1;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    invoke-virtual {v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->showAuthorizeSuccess()V

    const/4 v0, 0x4

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_22

    :pswitch_47
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$1;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    #setter for: Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mIsAuthorizeSucc:Z
    invoke-static {v0, v3}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->access$1(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;Z)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$1;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$1;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    invoke-virtual {v1}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080201

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAuthResultTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->access$2(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;Ljava/lang/String;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$1;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    invoke-virtual {v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->showAuthorizeFailed()V

    goto :goto_22

    :pswitch_64
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$1;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    #setter for: Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mIsAuthorizeSucc:Z
    invoke-static {v0, v3}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->access$1(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;Z)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$1;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$1;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    invoke-virtual {v1}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080202

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAuthResultTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->access$2(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;Ljava/lang/String;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$1;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    invoke-virtual {v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->showAuthorizeFailed()V

    goto :goto_22

    :pswitch_81
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$1;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    invoke-virtual {v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->finish()V

    goto :goto_22

    :pswitch_87
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$1;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    #setter for: Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mIsAuthorizeSucc:Z
    invoke-static {v0, v3}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->access$1(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;Z)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$1;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$1;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    invoke-virtual {v1}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080203

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAuthResultTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->access$2(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;Ljava/lang/String;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$1;->this$0:Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    invoke-virtual {v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->showAuthorizeFailed()V

    goto/16 :goto_22

    nop

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_47
        :pswitch_22
        :pswitch_23
        :pswitch_22
        :pswitch_81
        :pswitch_87
        :pswitch_64
    .end packed-switch
.end method
