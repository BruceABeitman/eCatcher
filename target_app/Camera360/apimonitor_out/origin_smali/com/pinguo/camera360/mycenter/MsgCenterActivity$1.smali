.class Lcom/pinguo/camera360/mycenter/MsgCenterActivity$1;
.super Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;
.source "MsgCenterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$1;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;

    invoke-direct {p0}, Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 4

    invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->setOnUpdateMsgResult(Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;)V

    iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$1;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;

    #calls: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->cancelProgressDialog()V
    invoke-static {v0}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$1(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)V

    iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$1;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;

    #calls: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->onMsgListDataOk()V
    invoke-static {v0}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$2(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$1;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/mycenter/PGMessage;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->setOnUpdateMsgResult(Lcom/pinguo/camera360/mycenter/PGMessageManager$OnUpdateMsgResult;)V

    iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$1;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;

    #calls: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->cancelProgressDialog()V
    invoke-static {v0}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$1(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)V

    iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$1;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;

    #calls: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->onMsgListDataOk()V
    invoke-static {v0}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$2(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)V

    return-void
.end method
