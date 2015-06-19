.class  Lcom/spotify/cosmos/android/Resolver$InternalDestroyCallbackReceiver;
.super Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;
.source "SourceFile"
.field final synthetic this$0:Lcom/spotify/cosmos/android/Resolver;
.method public constructor <init>(Lcom/spotify/cosmos/android/Resolver;Landroid/os/Handler;)V
.registers 3
iput-object p1, p0, Lcom/spotify/cosmos/android/Resolver$InternalDestroyCallbackReceiver;->this$0:Lcom/spotify/cosmos/android/Resolver;
invoke-direct {p0, p2}, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;-><init>(Landroid/os/Handler;)V
return-void
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/spotify/cosmos/android/Resolver$InternalDestroyCallbackReceiver; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;->onDestroy()V
iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver$InternalDestroyCallbackReceiver;->this$0:Lcom/spotify/cosmos/android/Resolver;
#getter for: Lcom/spotify/cosmos/android/Resolver;->mState:Lcom/spotify/cosmos/android/Resolver$State;
invoke-static {v0}, Lcom/spotify/cosmos/android/Resolver;->access$100(Lcom/spotify/cosmos/android/Resolver;)Lcom/spotify/cosmos/android/Resolver$State;
move-result-object v0
sget-object v1, Lcom/spotify/cosmos/android/Resolver$State;->CONNECTED:Lcom/spotify/cosmos/android/Resolver$State;
if-ne v0, v1, :cond_12
iget-object v0, p0, Lcom/spotify/cosmos/android/Resolver$InternalDestroyCallbackReceiver;->this$0:Lcom/spotify/cosmos/android/Resolver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->disconnect()V
:cond_12
const-string v1, " - Lcom/spotify/cosmos/android/Resolver$InternalDestroyCallbackReceiver; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method