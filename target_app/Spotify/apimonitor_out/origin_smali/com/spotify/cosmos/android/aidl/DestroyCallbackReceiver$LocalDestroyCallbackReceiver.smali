.class Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver$LocalDestroyCallbackReceiver;
.super Lcom/spotify/cosmos/android/aidl/IDestroyCallbackReceiver$Stub;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;


# direct methods
.method private constructor <init>(Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver$LocalDestroyCallbackReceiver;->this$0:Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;

    invoke-direct {p0}, Lcom/spotify/cosmos/android/aidl/IDestroyCallbackReceiver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver$LocalDestroyCallbackReceiver;-><init>(Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;)V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .registers 5

    iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver$LocalDestroyCallbackReceiver;->this$0:Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;

    #getter for: Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;->access$000(Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver$LocalDestroyCallbackReceiver;->this$0:Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;

    #getter for: Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;->access$000(Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver$LocalRunnable;

    iget-object v2, p0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver$LocalDestroyCallbackReceiver;->this$0:Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver$LocalRunnable;-><init>(Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver$LocalDestroyCallbackReceiver;->this$0:Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;->onDestroy()V

    goto :goto_19
.end method
