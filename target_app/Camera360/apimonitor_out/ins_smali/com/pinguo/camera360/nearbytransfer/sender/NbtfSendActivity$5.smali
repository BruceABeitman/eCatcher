.class  Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$5;
.super Ljava/lang/Object;
.source "NbtfSendActivity.java"
.implements Landroid/content/DialogInterface$OnCancelListener;
.field final synthetic this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
.method constructor <init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$5;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCancel(Landroid/content/DialogInterface;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$5;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->back2MainActivity()V
return-void
.end method