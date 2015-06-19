.class  Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalResolveCallbackReceiver;
.super Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver$Stub;
.source "SourceFile"
.field final synthetic this$0:Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;
.method private constructor <init>(Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;)V
.registers 2
iput-object p1, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalResolveCallbackReceiver;->this$0:Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;
invoke-direct {p0}, Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver$Stub;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalResolveCallbackReceiver;-><init>(Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;)V
return-void
.end method
.method public onError(Ljava/lang/String;)V
.registers 5
new-instance v0, Ljava/lang/Throwable;
invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalResolveCallbackReceiver;->this$0:Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;
#getter for: Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mHandler:Landroid/os/Handler;
invoke-static {v1}, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->access$000(Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;)Landroid/os/Handler;
move-result-object v1
if-eqz v1, :cond_1c
iget-object v1, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalResolveCallbackReceiver;->this$0:Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;
#getter for: Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mHandler:Landroid/os/Handler;
invoke-static {v1}, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->access$000(Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;)Landroid/os/Handler;
move-result-object v1
new-instance v2, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalResolveCallbackReceiver$1;
invoke-direct {v2, p0, v0}, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalResolveCallbackReceiver$1;-><init>(Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalResolveCallbackReceiver;Ljava/lang/Throwable;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_1b
return-void
:cond_1c
iget-object v1, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalResolveCallbackReceiver;->this$0:Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;
invoke-virtual {v1, v0}, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->onError(Ljava/lang/Throwable;)V
goto :goto_1b
.end method
.method public onResolved(ILjava/lang/String;Ljava/util/Map;[B)V
.registers 9
new-instance v0, Lcom/spotify/cosmos/router/Response;
invoke-direct {v0, p1, p2, p3, p4}, Lcom/spotify/cosmos/router/Response;-><init>(ILjava/lang/String;Ljava/util/Map;[B)V
iget-object v1, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalResolveCallbackReceiver;->this$0:Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;
#getter for: Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mHandler:Landroid/os/Handler;
invoke-static {v1}, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->access$000(Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;)Landroid/os/Handler;
move-result-object v1
if-eqz v1, :cond_1e
iget-object v1, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalResolveCallbackReceiver;->this$0:Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;
#getter for: Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mHandler:Landroid/os/Handler;
invoke-static {v1}, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->access$000(Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;)Landroid/os/Handler;
move-result-object v1
new-instance v2, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalRunnable;
iget-object v3, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalResolveCallbackReceiver;->this$0:Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;
invoke-direct {v2, v3, v0}, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalRunnable;-><init>(Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;Lcom/spotify/cosmos/router/Response;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_1d
return-void
:cond_1e
iget-object v1, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalResolveCallbackReceiver;->this$0:Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;
invoke-virtual {v1, v0}, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->onResolved(Lcom/spotify/cosmos/router/Response;)V
goto :goto_1d
.end method