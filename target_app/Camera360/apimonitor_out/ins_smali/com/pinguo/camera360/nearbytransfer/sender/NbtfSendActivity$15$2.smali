.class  Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15$2;
.super Ljava/lang/Object;
.source "NbtfSendActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;
.method constructor <init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15$2;->this$1:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15$2;->this$1:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;
#getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;->access$0(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;)Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->enterSendFragment()V
return-void
.end method