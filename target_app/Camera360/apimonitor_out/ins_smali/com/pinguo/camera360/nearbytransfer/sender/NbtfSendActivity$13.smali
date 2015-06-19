.class  Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$13;
.super Ljava/lang/Object;
.source "NbtfSendActivity.java"
.implements Landroid/content/DialogInterface$OnCancelListener;
.field final synthetic this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
.method constructor <init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$13;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCancel(Landroid/content/DialogInterface;)V
.registers 4
:try_start_0
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$13;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
invoke-virtual {v1}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V
:try_end_9
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a
:goto_9
return-void
:catch_a
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_9
.end method