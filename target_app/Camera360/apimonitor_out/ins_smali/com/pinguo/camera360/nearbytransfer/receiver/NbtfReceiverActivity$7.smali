.class  Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$7;
.super Ljava/lang/Object;
.source "NbtfReceiverActivity.java"
.implements Landroid/content/DialogInterface$OnCancelListener;
.field final synthetic this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
.method constructor <init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$7;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCancel(Landroid/content/DialogInterface;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$7;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->finish()V
return-void
.end method