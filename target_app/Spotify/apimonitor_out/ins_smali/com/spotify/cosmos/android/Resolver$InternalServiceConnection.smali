.class  Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/ServiceConnection;
.field private mDestroyCallbackReceiver:Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;
.field private mDestroyCallbackThread:Landroid/os/HandlerThread;
.field final synthetic this$0:Lcom/spotify/cosmos/android/Resolver;
.method private constructor <init>(Lcom/spotify/cosmos/android/Resolver;)V
.registers 2
iput-object p1, p0, Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;->this$0:Lcom/spotify/cosmos/android/Resolver;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/spotify/cosmos/android/Resolver;Lcom/spotify/cosmos/android/Resolver$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;-><init>(Lcom/spotify/cosmos/android/Resolver;)V
return-void
.end method
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;->this$0:Lcom/spotify/cosmos/android/Resolver;
#getter for: Lcom/spotify/cosmos/android/Resolver;->mConnectionMutex:Ljava/lang/Object;
invoke-static {v0}, Lcom/spotify/cosmos/android/Resolver;->access$000(Lcom/spotify/cosmos/android/Resolver;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
if-eqz p2, :cond_13
:try_start_9
iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;->this$0:Lcom/spotify/cosmos/android/Resolver;
#getter for: Lcom/spotify/cosmos/android/Resolver;->mState:Lcom/spotify/cosmos/android/Resolver$State;
invoke-static {v0}, Lcom/spotify/cosmos/android/Resolver;->access$100(Lcom/spotify/cosmos/android/Resolver;)Lcom/spotify/cosmos/android/Resolver$State;
move-result-object v0
sget-object v2, Lcom/spotify/cosmos/android/Resolver$State;->DISCONNECTED:Lcom/spotify/cosmos/android/Resolver$State;
if-ne v0, v2, :cond_1a
:cond_13
iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;->this$0:Lcom/spotify/cosmos/android/Resolver;
#calls: Lcom/spotify/cosmos/android/Resolver;->doDisconnect()V
invoke-static {v0}, Lcom/spotify/cosmos/android/Resolver;->access$200(Lcom/spotify/cosmos/android/Resolver;)V
monitor-exit v1
:goto_19
const-string v1, " - Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection; onServiceConnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1a
new-instance v0, Landroid/os/HandlerThread;
const-string v2, "ResolverDestroyCallback"
invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;->mDestroyCallbackThread:Landroid/os/HandlerThread;
iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;->mDestroyCallbackThread:Landroid/os/HandlerThread;
invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V
iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;->mDestroyCallbackThread:Landroid/os/HandlerThread;
invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
move-result-object v0
if-nez v0, :cond_41
iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;->this$0:Lcom/spotify/cosmos/android/Resolver;
sget-object v2, Lcom/spotify/cosmos/android/Resolver$ConnectionError;->DESTROY_CALLBACK_THREAD_NOT_STARTED:Lcom/spotify/cosmos/android/Resolver$ConnectionError;
invoke-virtual {v0, v2}, Lcom/spotify/cosmos/android/Resolver;->notifyOnConnectionFailed(Lcom/spotify/cosmos/android/Resolver$ConnectionError;)V
iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;->this$0:Lcom/spotify/cosmos/android/Resolver;
#calls: Lcom/spotify/cosmos/android/Resolver;->doDisconnect()V
invoke-static {v0}, Lcom/spotify/cosmos/android/Resolver;->access$200(Lcom/spotify/cosmos/android/Resolver;)V
monitor-exit v1
:try_end_3d
.catchall {:try_start_9 .. :try_end_3d} :catchall_3e
goto :goto_19
:catchall_3e
move-exception v0
monitor-exit v1
throw v0
:try_start_41
:cond_41
new-instance v2, Lcom/spotify/cosmos/android/Resolver$InternalDestroyCallbackReceiver;
iget-object v3, p0, Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;->this$0:Lcom/spotify/cosmos/android/Resolver;
new-instance v4, Landroid/os/Handler;
invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
invoke-direct {v2, v3, v4}, Lcom/spotify/cosmos/android/Resolver$InternalDestroyCallbackReceiver;-><init>(Lcom/spotify/cosmos/android/Resolver;Landroid/os/Handler;)V
iput-object v2, p0, Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;->mDestroyCallbackReceiver:Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;
iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;->this$0:Lcom/spotify/cosmos/android/Resolver;
invoke-static {p2}, Lcom/spotify/cosmos/android/aidl/IRemoteRouter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/spotify/cosmos/android/aidl/IRemoteRouter;
move-result-object v2
#setter for: Lcom/spotify/cosmos/android/Resolver;->mRemoteRouter:Lcom/spotify/cosmos/android/aidl/IRemoteRouter;
invoke-static {v0, v2}, Lcom/spotify/cosmos/android/Resolver;->access$302(Lcom/spotify/cosmos/android/Resolver;Lcom/spotify/cosmos/android/aidl/IRemoteRouter;)Lcom/spotify/cosmos/android/aidl/IRemoteRouter;
:try_start_58
:try_end_58
.catchall {:try_start_41 .. :try_end_58} :catchall_3e
iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;->this$0:Lcom/spotify/cosmos/android/Resolver;
#getter for: Lcom/spotify/cosmos/android/Resolver;->mRemoteRouter:Lcom/spotify/cosmos/android/aidl/IRemoteRouter;
invoke-static {v0}, Lcom/spotify/cosmos/android/Resolver;->access$300(Lcom/spotify/cosmos/android/Resolver;)Lcom/spotify/cosmos/android/aidl/IRemoteRouter;
move-result-object v0
iget-object v2, p0, Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;->mDestroyCallbackReceiver:Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;
invoke-interface {v0, v2}, Lcom/spotify/cosmos/android/aidl/IRemoteRouter;->registerDestroyCallback(Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;)V
:try_start_63
:try_end_63
.catchall {:try_start_58 .. :try_end_63} :catchall_3e
.catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_63} :catch_71
:goto_63
iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;->this$0:Lcom/spotify/cosmos/android/Resolver;
sget-object v2, Lcom/spotify/cosmos/android/Resolver$State;->CONNECTED:Lcom/spotify/cosmos/android/Resolver$State;
#setter for: Lcom/spotify/cosmos/android/Resolver;->mState:Lcom/spotify/cosmos/android/Resolver$State;
invoke-static {v0, v2}, Lcom/spotify/cosmos/android/Resolver;->access$102(Lcom/spotify/cosmos/android/Resolver;Lcom/spotify/cosmos/android/Resolver$State;)Lcom/spotify/cosmos/android/Resolver$State;
iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;->this$0:Lcom/spotify/cosmos/android/Resolver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->notifyOnConnected()V
monitor-exit v1
:try_end_70
.catchall {:try_start_63 .. :try_end_70} :catchall_3e
goto :goto_19
:catch_71
move-exception v0
goto :goto_63
.end method
.method public onServiceDisconnected(Landroid/content/ComponentName;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;->this$0:Lcom/spotify/cosmos/android/Resolver;
#getter for: Lcom/spotify/cosmos/android/Resolver;->mConnectionMutex:Ljava/lang/Object;
invoke-static {v0}, Lcom/spotify/cosmos/android/Resolver;->access$000(Lcom/spotify/cosmos/android/Resolver;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_7
iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;->this$0:Lcom/spotify/cosmos/android/Resolver;
#calls: Lcom/spotify/cosmos/android/Resolver;->closeAllSubscriptions()V
invoke-static {v0}, Lcom/spotify/cosmos/android/Resolver;->access$400(Lcom/spotify/cosmos/android/Resolver;)V
iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;->this$0:Lcom/spotify/cosmos/android/Resolver;
const/4 v2, 0x0
#setter for: Lcom/spotify/cosmos/android/Resolver;->mRemoteRouter:Lcom/spotify/cosmos/android/aidl/IRemoteRouter;
invoke-static {v0, v2}, Lcom/spotify/cosmos/android/Resolver;->access$302(Lcom/spotify/cosmos/android/Resolver;Lcom/spotify/cosmos/android/aidl/IRemoteRouter;)Lcom/spotify/cosmos/android/aidl/IRemoteRouter;
iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;->mDestroyCallbackThread:Landroid/os/HandlerThread;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;->mDestroyCallbackThread:Landroid/os/HandlerThread;
invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
:cond_1b
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;->mDestroyCallbackThread:Landroid/os/HandlerThread;
iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;->this$0:Lcom/spotify/cosmos/android/Resolver;
sget-object v2, Lcom/spotify/cosmos/android/Resolver$State;->CONNECTING:Lcom/spotify/cosmos/android/Resolver$State;
#setter for: Lcom/spotify/cosmos/android/Resolver;->mState:Lcom/spotify/cosmos/android/Resolver$State;
invoke-static {v0, v2}, Lcom/spotify/cosmos/android/Resolver;->access$102(Lcom/spotify/cosmos/android/Resolver;Lcom/spotify/cosmos/android/Resolver$State;)Lcom/spotify/cosmos/android/Resolver$State;
iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection;->this$0:Lcom/spotify/cosmos/android/Resolver;
#calls: Lcom/spotify/cosmos/android/Resolver;->notifyOnDisconnected()V
invoke-static {v0}, Lcom/spotify/cosmos/android/Resolver;->access$500(Lcom/spotify/cosmos/android/Resolver;)V
monitor-exit v1
:try_end_2b
.catchall {:try_start_7 .. :try_end_2b} :catchall_2c
const-string v1, " - Lcom/spotify/cosmos/android/Resolver$InternalServiceConnection; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catchall_2c
move-exception v0
monitor-exit v1
throw v0
.end method