.class  Lcom/pinguo/camera360/puzzle/PuzzleSystem$1;
.super Ljava/lang/Object;
.source "PuzzleSystem.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/puzzle/PuzzleSystem;
.method constructor <init>(Lcom/pinguo/camera360/puzzle/PuzzleSystem;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem$1;->this$0:Lcom/pinguo/camera360/puzzle/PuzzleSystem;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
invoke-static {}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->access$0()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, " onLoadTemplateStart"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem$1;->this$0:Lcom/pinguo/camera360/puzzle/PuzzleSystem;
#getter for: Lcom/pinguo/camera360/puzzle/PuzzleSystem;->mListener:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemListener;
invoke-static {v0}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->access$1(Lcom/pinguo/camera360/puzzle/PuzzleSystem;)Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemListener;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleSystem$1;->this$0:Lcom/pinguo/camera360/puzzle/PuzzleSystem;
invoke-interface {v0, v1}, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemListener;->onLoadTemplateStart(Lcom/pinguo/camera360/puzzle/PuzzleSystem;)V
return-void
.end method