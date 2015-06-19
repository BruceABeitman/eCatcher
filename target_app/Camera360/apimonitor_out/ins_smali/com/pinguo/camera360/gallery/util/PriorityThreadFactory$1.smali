.class  Lcom/pinguo/camera360/gallery/util/PriorityThreadFactory$1;
.super Ljava/lang/Thread;
.source "PriorityThreadFactory.java"
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/util/PriorityThreadFactory;
.method constructor <init>(Lcom/pinguo/camera360/gallery/util/PriorityThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/gallery/util/PriorityThreadFactory$1;->this$0:Lcom/pinguo/camera360/gallery/util/PriorityThreadFactory;
invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/PriorityThreadFactory$1;->this$0:Lcom/pinguo/camera360/gallery/util/PriorityThreadFactory;
#getter for: Lcom/pinguo/camera360/gallery/util/PriorityThreadFactory;->mPriority:I
invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/PriorityThreadFactory;->access$0(Lcom/pinguo/camera360/gallery/util/PriorityThreadFactory;)I
move-result v0
invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
invoke-super {p0}, Ljava/lang/Thread;->run()V
return-void
.end method