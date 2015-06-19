.class Lcom/pinguo/camera360/mycenter/MsgCenterActivity$4;
.super Ljava/lang/Object;
.source "MsgCenterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->onClick(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$4;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$4;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;

    #getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMessageList:Ljava/util/List;
    invoke-static {v1}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$0(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->delMsg(Ljava/util/List;)V

    iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$4;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;

    #getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMessageList:Ljava/util/List;
    invoke-static {v0}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$0(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$4;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;

    #getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMsgAdapter:Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;
    invoke-static {v0}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$4(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$4;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;

    #getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mHederRightView:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$6(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$4;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;

    #getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mNoMsgTipView:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$7(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->clearNewMessageFlag()V

    invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$4;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;

    #getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMessageList:Ljava/util/List;
    invoke-static {v1}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$0(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->updateLocalMsgs(Ljava/util/List;)V

    return-void
.end method
