.class  Lcom/pinguo/camera360/updateOnline/NormalUpdateManager$1;
.super Ljava/lang/Object;
.source "NormalUpdateManager.java"
.implements Landroid/content/DialogInterface$OnCancelListener;
.field final synthetic this$0:Lcom/pinguo/camera360/updateOnline/NormalUpdateManager;
.method constructor <init>(Lcom/pinguo/camera360/updateOnline/NormalUpdateManager;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/updateOnline/NormalUpdateManager$1;->this$0:Lcom/pinguo/camera360/updateOnline/NormalUpdateManager;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCancel(Landroid/content/DialogInterface;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/NormalUpdateManager$1;->this$0:Lcom/pinguo/camera360/updateOnline/NormalUpdateManager;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/updateOnline/NormalUpdateManager;->setUpdateInterface(Lcom/pinguo/camera360/updateOnline/UpdateInterface;)V
return-void
.end method