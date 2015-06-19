.class  Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;
.field final synthetic val$error:Ljava/lang/Throwable;
.method constructor <init>(Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;Ljava/lang/Throwable;)V
.registers 3
iput-object p1, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$2;->this$0:Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;
iput-object p2, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$2;->val$error:Ljava/lang/Throwable;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$2;->this$0:Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;
iget-object v1, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$2;->val$error:Ljava/lang/Throwable;
invoke-virtual {v0, v1}, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->onError(Ljava/lang/Throwable;)V
return-void
.end method