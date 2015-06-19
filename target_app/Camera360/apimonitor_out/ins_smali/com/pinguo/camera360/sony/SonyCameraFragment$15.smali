.class  Lcom/pinguo/camera360/sony/SonyCameraFragment$15;
.super Ljava/lang/Thread;
.source "SonyCameraFragment.java"
.field final synthetic this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
.field private final synthetic val$flag:Z
.method constructor <init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;Z)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$15;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
iput-boolean p2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$15;->val$flag:Z
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/sony/SonyCameraFragment$15;)Lcom/pinguo/camera360/sony/SonyCameraFragment;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$15;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
return-object v0
.end method
.method public run()V
.registers 3
new-instance v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$15$1;
iget-boolean v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$15;->val$flag:Z
invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment$15$1;-><init>(Lcom/pinguo/camera360/sony/SonyCameraFragment$15;Z)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$15;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
#calls: Lcom/pinguo/camera360/sony/SonyCameraFragment;->runInUiThread(Ljava/lang/Runnable;)V
invoke-static {v1, v0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$18(Lcom/pinguo/camera360/sony/SonyCameraFragment;Ljava/lang/Runnable;)V
return-void
.end method