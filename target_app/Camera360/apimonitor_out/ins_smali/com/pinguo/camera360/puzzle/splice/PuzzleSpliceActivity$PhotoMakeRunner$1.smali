.class  Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner$1;
.super Ljava/lang/Object;
.source "PuzzleSpliceActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner;
.method constructor <init>(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner$1;->this$1:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner$1;->this$1:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner;
#getter for: Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
invoke-static {v0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner;->access$0(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner;)Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->isFinishing()Z
move-result v0
if-nez v0, :cond_15
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner$1;->this$1:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner;
#getter for: Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner;->this$0:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
invoke-static {v0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner;->access$0(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner;)Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
move-result-object v0
#calls: Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->showPreivewPic()V
invoke-static {v0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->access$3(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)V
:cond_15
return-void
.end method