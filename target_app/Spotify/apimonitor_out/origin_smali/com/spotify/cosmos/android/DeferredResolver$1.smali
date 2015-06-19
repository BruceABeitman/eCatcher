.class Lcom/spotify/cosmos/android/DeferredResolver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/cosmos/android/DeferredResolver$StateObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/cosmos/android/DeferredResolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spotify/cosmos/android/DeferredResolver;

.field final synthetic val$receiver:Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;

.field final synthetic val$request:Lcom/spotify/cosmos/router/Request;


# direct methods
.method constructor <init>(Lcom/spotify/cosmos/android/DeferredResolver;Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/cosmos/android/DeferredResolver$1;->this$0:Lcom/spotify/cosmos/android/DeferredResolver;

    iput-object p2, p0, Lcom/spotify/cosmos/android/DeferredResolver$1;->val$request:Lcom/spotify/cosmos/router/Request;

    iput-object p3, p0, Lcom/spotify/cosmos/android/DeferredResolver$1;->val$receiver:Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/cosmos/android/DeferredResolver$1;->this$0:Lcom/spotify/cosmos/android/DeferredResolver;

    iget-object v1, p0, Lcom/spotify/cosmos/android/DeferredResolver$1;->val$request:Lcom/spotify/cosmos/router/Request;

    iget-object v2, p0, Lcom/spotify/cosmos/android/DeferredResolver$1;->val$receiver:Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/spotify/cosmos/android/DeferredResolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z

    return-void
.end method

.method public onConnectionFailed(Lcom/spotify/cosmos/android/Resolver$ConnectionError;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/cosmos/android/DeferredResolver$1;->val$receiver:Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;

    new-instance v1, Lcom/spotify/cosmos/android/ResolverException;

    invoke-virtual {p1}, Lcom/spotify/cosmos/android/Resolver$ConnectionError;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/spotify/cosmos/android/ResolverException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;->sendOnError(Ljava/lang/Throwable;)V

    return-void
.end method
