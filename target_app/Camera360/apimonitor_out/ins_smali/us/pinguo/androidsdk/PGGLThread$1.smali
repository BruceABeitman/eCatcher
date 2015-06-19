.class  Lus/pinguo/androidsdk/PGGLThread$1;
.super Ljava/lang/Object;
.source "PGGLThread.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lus/pinguo/androidsdk/PGGLThread;
.method constructor <init>(Lus/pinguo/androidsdk/PGGLThread;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/PGGLThread$1;->this$0:Lus/pinguo/androidsdk/PGGLThread;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 7
const v5, 0x10000003
iget-object v1, p0, Lus/pinguo/androidsdk/PGGLThread$1;->this$0:Lus/pinguo/androidsdk/PGGLThread;
#getter for: Lus/pinguo/androidsdk/PGGLThread;->imageSDK:Lus/pinguo/androidsdk/PGImageSDK;
invoke-static {v1}, Lus/pinguo/androidsdk/PGGLThread;->access$0(Lus/pinguo/androidsdk/PGGLThread;)Lus/pinguo/androidsdk/PGImageSDK;
move-result-object v1
if-eqz v1, :cond_f7
iget-object v1, p0, Lus/pinguo/androidsdk/PGGLThread$1;->this$0:Lus/pinguo/androidsdk/PGGLThread;
#getter for: Lus/pinguo/androidsdk/PGGLThread;->imageSDK:Lus/pinguo/androidsdk/PGImageSDK;
invoke-static {v1}, Lus/pinguo/androidsdk/PGGLThread;->access$0(Lus/pinguo/androidsdk/PGGLThread;)Lus/pinguo/androidsdk/PGImageSDK;
move-result-object v1
invoke-virtual {v1}, Lus/pinguo/androidsdk/PGImageSDK;->createEGLDisplay()Z
move-result v1
if-eqz v1, :cond_f7
iget-object v1, p0, Lus/pinguo/androidsdk/PGGLThread$1;->this$0:Lus/pinguo/androidsdk/PGGLThread;
#getter for: Lus/pinguo/androidsdk/PGGLThread;->imageSDK:Lus/pinguo/androidsdk/PGImageSDK;
invoke-static {v1}, Lus/pinguo/androidsdk/PGGLThread;->access$0(Lus/pinguo/androidsdk/PGGLThread;)Lus/pinguo/androidsdk/PGImageSDK;
move-result-object v1
invoke-virtual {v1}, Lus/pinguo/androidsdk/PGImageSDK;->getRenderActionLock()Ljava/lang/Object;
move-result-object v2
monitor-enter v2
:try_start_22
iget-object v1, p0, Lus/pinguo/androidsdk/PGGLThread$1;->this$0:Lus/pinguo/androidsdk/PGGLThread;
#getter for: Lus/pinguo/androidsdk/PGGLThread;->imageSDK:Lus/pinguo/androidsdk/PGImageSDK;
invoke-static {v1}, Lus/pinguo/androidsdk/PGGLThread;->access$0(Lus/pinguo/androidsdk/PGGLThread;)Lus/pinguo/androidsdk/PGImageSDK;
move-result-object v1
invoke-virtual {v1}, Lus/pinguo/androidsdk/PGImageSDK;->getSDKStatus()I
move-result v1
if-ne v1, v5, :cond_89
iget-object v1, p0, Lus/pinguo/androidsdk/PGGLThread$1;->this$0:Lus/pinguo/androidsdk/PGGLThread;
#getter for: Lus/pinguo/androidsdk/PGGLThread;->imageSDK:Lus/pinguo/androidsdk/PGImageSDK;
invoke-static {v1}, Lus/pinguo/androidsdk/PGGLThread;->access$0(Lus/pinguo/androidsdk/PGGLThread;)Lus/pinguo/androidsdk/PGImageSDK;
move-result-object v1
invoke-virtual {v1}, Lus/pinguo/androidsdk/PGImageSDK;->create()V
iget-object v1, p0, Lus/pinguo/androidsdk/PGGLThread$1;->this$0:Lus/pinguo/androidsdk/PGGLThread;
#getter for: Lus/pinguo/androidsdk/PGGLThread;->imageSDK:Lus/pinguo/androidsdk/PGImageSDK;
invoke-static {v1}, Lus/pinguo/androidsdk/PGGLThread;->access$0(Lus/pinguo/androidsdk/PGGLThread;)Lus/pinguo/androidsdk/PGImageSDK;
move-result-object v1
const v3, 0x10000003
invoke-virtual {v1, v3}, Lus/pinguo/androidsdk/PGImageSDK;->setSDKStatus(I)V
:try_start_43
:goto_43
:try_end_43
.catchall {:try_start_22 .. :try_end_43} :catchall_93
iget-object v1, p0, Lus/pinguo/androidsdk/PGGLThread$1;->this$0:Lus/pinguo/androidsdk/PGGLThread;
#getter for: Lus/pinguo/androidsdk/PGGLThread;->imageSDK:Lus/pinguo/androidsdk/PGImageSDK;
invoke-static {v1}, Lus/pinguo/androidsdk/PGGLThread;->access$0(Lus/pinguo/androidsdk/PGGLThread;)Lus/pinguo/androidsdk/PGImageSDK;
move-result-object v1
invoke-virtual {v1}, Lus/pinguo/androidsdk/PGImageSDK;->getRenderActionLock()Ljava/lang/Object;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->notify()V
iget-object v1, p0, Lus/pinguo/androidsdk/PGGLThread$1;->this$0:Lus/pinguo/androidsdk/PGGLThread;
#getter for: Lus/pinguo/androidsdk/PGGLThread;->imageSDK:Lus/pinguo/androidsdk/PGImageSDK;
invoke-static {v1}, Lus/pinguo/androidsdk/PGGLThread;->access$0(Lus/pinguo/androidsdk/PGGLThread;)Lus/pinguo/androidsdk/PGImageSDK;
move-result-object v1
invoke-virtual {v1}, Lus/pinguo/androidsdk/PGImageSDK;->getRenderActionLock()Ljava/lang/Object;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->wait()V
:goto_5d
:try_end_5d
.catchall {:try_start_43 .. :try_end_5d} :catchall_93
.catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_5d} :catch_96
:try_start_5d
iget-object v1, p0, Lus/pinguo/androidsdk/PGGLThread$1;->this$0:Lus/pinguo/androidsdk/PGGLThread;
const/4 v3, 0x1
#setter for: Lus/pinguo/androidsdk/PGGLThread;->mRunningFlag:Z
invoke-static {v1, v3}, Lus/pinguo/androidsdk/PGGLThread;->access$1(Lus/pinguo/androidsdk/PGGLThread;Z)V
iget-object v1, p0, Lus/pinguo/androidsdk/PGGLThread$1;->this$0:Lus/pinguo/androidsdk/PGGLThread;
#getter for: Lus/pinguo/androidsdk/PGGLThread;->imageSDK:Lus/pinguo/androidsdk/PGImageSDK;
invoke-static {v1}, Lus/pinguo/androidsdk/PGGLThread;->access$0(Lus/pinguo/androidsdk/PGGLThread;)Lus/pinguo/androidsdk/PGImageSDK;
move-result-object v1
invoke-virtual {v1}, Lus/pinguo/androidsdk/PGImageSDK;->getSDKStatus()I
move-result v1
const v3, 0x10000002
if-ne v1, v3, :cond_9b
iget-object v1, p0, Lus/pinguo/androidsdk/PGGLThread$1;->this$0:Lus/pinguo/androidsdk/PGGLThread;
#getter for: Lus/pinguo/androidsdk/PGGLThread;->imageSDK:Lus/pinguo/androidsdk/PGImageSDK;
invoke-static {v1}, Lus/pinguo/androidsdk/PGGLThread;->access$0(Lus/pinguo/androidsdk/PGGLThread;)Lus/pinguo/androidsdk/PGImageSDK;
move-result-object v1
invoke-virtual {v1}, Lus/pinguo/androidsdk/PGImageSDK;->destroy()V
monitor-exit v2
:try_end_7c
.catchall {:try_start_5d .. :try_end_7c} :catchall_93
iget-object v1, p0, Lus/pinguo/androidsdk/PGGLThread$1;->this$0:Lus/pinguo/androidsdk/PGGLThread;
#getter for: Lus/pinguo/androidsdk/PGGLThread;->imageSDK:Lus/pinguo/androidsdk/PGImageSDK;
invoke-static {v1}, Lus/pinguo/androidsdk/PGGLThread;->access$0(Lus/pinguo/androidsdk/PGGLThread;)Lus/pinguo/androidsdk/PGImageSDK;
move-result-object v1
invoke-virtual {v1}, Lus/pinguo/androidsdk/PGImageSDK;->releaseEGLDisplay()V
invoke-static {}, Ljava/lang/System;->gc()V
:goto_88
return-void
:cond_89
:try_start_89
iget-object v1, p0, Lus/pinguo/androidsdk/PGGLThread$1;->this$0:Lus/pinguo/androidsdk/PGGLThread;
#getter for: Lus/pinguo/androidsdk/PGGLThread;->imageSDK:Lus/pinguo/androidsdk/PGImageSDK;
invoke-static {v1}, Lus/pinguo/androidsdk/PGGLThread;->access$0(Lus/pinguo/androidsdk/PGGLThread;)Lus/pinguo/androidsdk/PGImageSDK;
move-result-object v1
invoke-virtual {v1}, Lus/pinguo/androidsdk/PGImageSDK;->create()V
goto :goto_43
:catchall_93
move-exception v1
monitor-exit v2
:try_end_95
.catchall {:try_start_89 .. :try_end_95} :catchall_93
throw v1
:catch_96
move-exception v0
:try_start_97
invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
goto :goto_5d
:cond_9b
iget-object v1, p0, Lus/pinguo/androidsdk/PGGLThread$1;->this$0:Lus/pinguo/androidsdk/PGGLThread;
#getter for: Lus/pinguo/androidsdk/PGGLThread;->imageSDK:Lus/pinguo/androidsdk/PGImageSDK;
invoke-static {v1}, Lus/pinguo/androidsdk/PGGLThread;->access$0(Lus/pinguo/androidsdk/PGGLThread;)Lus/pinguo/androidsdk/PGImageSDK;
move-result-object v1
invoke-virtual {v1}, Lus/pinguo/androidsdk/PGImageSDK;->getSDKStatus()I
move-result v1
if-ne v1, v5, :cond_dd
iget-object v1, p0, Lus/pinguo/androidsdk/PGGLThread$1;->this$0:Lus/pinguo/androidsdk/PGGLThread;
#getter for: Lus/pinguo/androidsdk/PGGLThread;->imageSDK:Lus/pinguo/androidsdk/PGImageSDK;
invoke-static {v1}, Lus/pinguo/androidsdk/PGGLThread;->access$0(Lus/pinguo/androidsdk/PGGLThread;)Lus/pinguo/androidsdk/PGImageSDK;
move-result-object v1
iget-object v3, p0, Lus/pinguo/androidsdk/PGGLThread$1;->this$0:Lus/pinguo/androidsdk/PGGLThread;
#getter for: Lus/pinguo/androidsdk/PGGLThread;->imageSDK:Lus/pinguo/androidsdk/PGImageSDK;
invoke-static {v3}, Lus/pinguo/androidsdk/PGGLThread;->access$0(Lus/pinguo/androidsdk/PGGLThread;)Lus/pinguo/androidsdk/PGImageSDK;
move-result-object v3
invoke-virtual {v3}, Lus/pinguo/androidsdk/PGImageSDK;->getRenderPointer()I
move-result v3
iget-object v4, p0, Lus/pinguo/androidsdk/PGGLThread$1;->this$0:Lus/pinguo/androidsdk/PGGLThread;
#getter for: Lus/pinguo/androidsdk/PGGLThread;->imageSDK:Lus/pinguo/androidsdk/PGImageSDK;
invoke-static {v4}, Lus/pinguo/androidsdk/PGGLThread;->access$0(Lus/pinguo/androidsdk/PGGLThread;)Lus/pinguo/androidsdk/PGImageSDK;
move-result-object v4
invoke-virtual {v4}, Lus/pinguo/androidsdk/PGImageSDK;->getResource()[B
move-result-object v4
invoke-static {v3, v4}, Lus/pinguo/androidsdk/PGNativeMethod;->loadResource(I[B)Z
move-result v3
invoke-virtual {v1, v3}, Lus/pinguo/androidsdk/PGImageSDK;->setResourceStatus(Z)V
:goto_c8
:cond_c8
iget-object v1, p0, Lus/pinguo/androidsdk/PGGLThread$1;->this$0:Lus/pinguo/androidsdk/PGGLThread;
const/4 v3, 0x0
#setter for: Lus/pinguo/androidsdk/PGGLThread;->mRunningFlag:Z
invoke-static {v1, v3}, Lus/pinguo/androidsdk/PGGLThread;->access$1(Lus/pinguo/androidsdk/PGGLThread;Z)V
iget-object v1, p0, Lus/pinguo/androidsdk/PGGLThread$1;->this$0:Lus/pinguo/androidsdk/PGGLThread;
#getter for: Lus/pinguo/androidsdk/PGGLThread;->imageSDK:Lus/pinguo/androidsdk/PGImageSDK;
invoke-static {v1}, Lus/pinguo/androidsdk/PGGLThread;->access$0(Lus/pinguo/androidsdk/PGGLThread;)Lus/pinguo/androidsdk/PGImageSDK;
move-result-object v1
invoke-virtual {v1}, Lus/pinguo/androidsdk/PGImageSDK;->getRenderActionLock()Ljava/lang/Object;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->notify()V
goto/16 :goto_43
:cond_dd
iget-object v1, p0, Lus/pinguo/androidsdk/PGGLThread$1;->this$0:Lus/pinguo/androidsdk/PGGLThread;
#getter for: Lus/pinguo/androidsdk/PGGLThread;->imageSDK:Lus/pinguo/androidsdk/PGImageSDK;
invoke-static {v1}, Lus/pinguo/androidsdk/PGGLThread;->access$0(Lus/pinguo/androidsdk/PGGLThread;)Lus/pinguo/androidsdk/PGImageSDK;
move-result-object v1
invoke-virtual {v1}, Lus/pinguo/androidsdk/PGImageSDK;->getRenderMethod()Lus/pinguo/androidsdk/PGRendererMethod;
move-result-object v1
if-eqz v1, :cond_c8
iget-object v1, p0, Lus/pinguo/androidsdk/PGGLThread$1;->this$0:Lus/pinguo/androidsdk/PGGLThread;
#getter for: Lus/pinguo/androidsdk/PGGLThread;->imageSDK:Lus/pinguo/androidsdk/PGImageSDK;
invoke-static {v1}, Lus/pinguo/androidsdk/PGGLThread;->access$0(Lus/pinguo/androidsdk/PGGLThread;)Lus/pinguo/androidsdk/PGImageSDK;
move-result-object v1
invoke-virtual {v1}, Lus/pinguo/androidsdk/PGImageSDK;->getRenderMethod()Lus/pinguo/androidsdk/PGRendererMethod;
move-result-object v1
invoke-virtual {v1}, Lus/pinguo/androidsdk/PGRendererMethod;->rendererAction()V
:try_end_f6
.catchall {:try_start_97 .. :try_end_f6} :catchall_93
goto :goto_c8
:cond_f7
const-string/jumbo v1, "PGImageSDK"
const-string/jumbo v2, "SDK Thread is failed!!!"
invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_88
.end method