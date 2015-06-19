.class  Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$9;
.super Ljava/lang/Object;
.source "NbtfSendActivity.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
.method constructor <init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$9;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$9; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$9;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
const/4 v1, 0x0
#setter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mStopSendDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-static {v0, v1}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$1(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;)V
const-string v1, " - Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$9; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method