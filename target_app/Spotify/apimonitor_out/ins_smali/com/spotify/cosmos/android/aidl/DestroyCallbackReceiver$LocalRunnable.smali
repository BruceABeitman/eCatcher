.class  Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver$LocalRunnable;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;
.method private constructor <init>(Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;)V
.registers 2
iput-object p1, p0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver$LocalRunnable;->this$0:Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver$LocalRunnable;-><init>(Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;)V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver$LocalRunnable;->this$0:Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;->onDestroy()V
return-void
.end method