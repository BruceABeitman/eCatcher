.class  Lco/vine/android/recorder/CameraManager$AddBufferThread;
.super Ljava/lang/Thread;
.source "CameraManager.java"
.field final synthetic this$0:Lco/vine/android/recorder/CameraManager;
.method public constructor <init>(Lco/vine/android/recorder/CameraManager;)V
.registers 3
iput-object p1, p0, Lco/vine/android/recorder/CameraManager$AddBufferThread;->this$0:Lco/vine/android/recorder/CameraManager;
const-string v0, "AddBufferThread"
invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public run()V
.registers 6
:goto_0
:cond_0
iget-object v3, p0, Lco/vine/android/recorder/CameraManager$AddBufferThread;->this$0:Lco/vine/android/recorder/CameraManager;
#getter for: Lco/vine/android/recorder/CameraManager;->mRunAddBufferThread:Z
invoke-static {v3}, Lco/vine/android/recorder/CameraManager;->access$000(Lco/vine/android/recorder/CameraManager;)Z
move-result v3
if-eqz v3, :cond_25
iget-object v3, p0, Lco/vine/android/recorder/CameraManager$AddBufferThread;->this$0:Lco/vine/android/recorder/CameraManager;
#getter for: Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-static {v3}, Lco/vine/android/recorder/CameraManager;->access$100(Lco/vine/android/recorder/CameraManager;)Landroid/hardware/Camera;
move-result-object v3
if-eqz v3, :cond_0
iget-object v3, p0, Lco/vine/android/recorder/CameraManager$AddBufferThread;->this$0:Lco/vine/android/recorder/CameraManager;
#getter for: Lco/vine/android/recorder/CameraManager;->mAddArray:Ljava/util/concurrent/ConcurrentLinkedQueue;
invoke-static {v3}, Lco/vine/android/recorder/CameraManager;->access$200(Lco/vine/android/recorder/CameraManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;
move-result-object v3
invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;
move-result-object v0
check-cast v0, [B
if-nez v0, :cond_46
const-wide/16 v3, 0x32
:try_start_20
invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
:try_end_23
.catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_24
goto :goto_0
:catch_24
move-exception v1
:cond_25
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
:goto_2a
iget-object v3, p0, Lco/vine/android/recorder/CameraManager$AddBufferThread;->this$0:Lco/vine/android/recorder/CameraManager;
#getter for: Lco/vine/android/recorder/CameraManager;->mAddArray:Ljava/util/concurrent/ConcurrentLinkedQueue;
invoke-static {v3}, Lco/vine/android/recorder/CameraManager;->access$200(Lco/vine/android/recorder/CameraManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;
move-result-object v3
invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;
move-result-object v0
check-cast v0, [B
if-eqz v0, :cond_50
iget-object v3, p0, Lco/vine/android/recorder/CameraManager$AddBufferThread;->this$0:Lco/vine/android/recorder/CameraManager;
#getter for: Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-static {v3}, Lco/vine/android/recorder/CameraManager;->access$100(Lco/vine/android/recorder/CameraManager;)Landroid/hardware/Camera;
move-result-object v3
if-eqz v3, :cond_4c
iget-object v3, p0, Lco/vine/android/recorder/CameraManager$AddBufferThread;->this$0:Lco/vine/android/recorder/CameraManager;
invoke-virtual {v3, v0}, Lco/vine/android/recorder/CameraManager;->addCallbackBuffer([B)V
goto :goto_2a
:cond_46
iget-object v3, p0, Lco/vine/android/recorder/CameraManager$AddBufferThread;->this$0:Lco/vine/android/recorder/CameraManager;
invoke-virtual {v3, v0}, Lco/vine/android/recorder/CameraManager;->addCallbackBuffer([B)V
goto :goto_0
:cond_4c
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_2a
:cond_50
iget-object v3, p0, Lco/vine/android/recorder/CameraManager$AddBufferThread;->this$0:Lco/vine/android/recorder/CameraManager;
#getter for: Lco/vine/android/recorder/CameraManager;->mBufferArray:Ljava/util/concurrent/ConcurrentLinkedQueue;
invoke-static {v3}, Lco/vine/android/recorder/CameraManager;->access$300(Lco/vine/android/recorder/CameraManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z
return-void
.end method