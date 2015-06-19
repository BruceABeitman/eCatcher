.class  Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalRunnable;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private final mResponse:Lcom/spotify/cosmos/router/Response;
.field final synthetic this$0:Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;
.method public constructor <init>(Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;Lcom/spotify/cosmos/router/Response;)V
.registers 3
iput-object p1, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalRunnable;->this$0:Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalRunnable;->mResponse:Lcom/spotify/cosmos/router/Response;
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalRunnable;->this$0:Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;
iget-object v1, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalRunnable;->mResponse:Lcom/spotify/cosmos/router/Response;
invoke-virtual {v0, v1}, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->onResolved(Lcom/spotify/cosmos/router/Response;)V
return-void
.end method