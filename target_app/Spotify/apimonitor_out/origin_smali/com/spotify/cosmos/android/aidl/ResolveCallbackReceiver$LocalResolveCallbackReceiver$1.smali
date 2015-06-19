.class Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalResolveCallbackReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalResolveCallbackReceiver;->onError(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalResolveCallbackReceiver;

.field final synthetic val$error:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalResolveCallbackReceiver;Ljava/lang/Throwable;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalResolveCallbackReceiver$1;->this$1:Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalResolveCallbackReceiver;

    iput-object p2, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalResolveCallbackReceiver$1;->val$error:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalResolveCallbackReceiver$1;->this$1:Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalResolveCallbackReceiver;

    iget-object v0, v0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalResolveCallbackReceiver;->this$0:Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;

    iget-object v1, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalResolveCallbackReceiver$1;->val$error:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
