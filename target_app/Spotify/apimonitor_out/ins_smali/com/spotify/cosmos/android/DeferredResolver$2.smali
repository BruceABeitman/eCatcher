.class  Lcom/spotify/cosmos/android/DeferredResolver$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/cosmos/android/DeferredResolver$StateObserver;
.field final synthetic this$0:Lcom/spotify/cosmos/android/DeferredResolver;
.field final synthetic val$receiver:Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;
.field final synthetic val$request:Lcom/spotify/cosmos/router/Request;
.field final synthetic val$subscription:Lcom/spotify/cosmos/android/DeferredResolver$SubscriptionProxy;
.method constructor <init>(Lcom/spotify/cosmos/android/DeferredResolver;Lcom/spotify/cosmos/android/DeferredResolver$SubscriptionProxy;Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)V
.registers 5
iput-object p1, p0, Lcom/spotify/cosmos/android/DeferredResolver$2;->this$0:Lcom/spotify/cosmos/android/DeferredResolver;
iput-object p2, p0, Lcom/spotify/cosmos/android/DeferredResolver$2;->val$subscription:Lcom/spotify/cosmos/android/DeferredResolver$SubscriptionProxy;
iput-object p3, p0, Lcom/spotify/cosmos/android/DeferredResolver$2;->val$request:Lcom/spotify/cosmos/router/Request;
iput-object p4, p0, Lcom/spotify/cosmos/android/DeferredResolver$2;->val$receiver:Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onConnected()V
.registers 5
iget-object v0, p0, Lcom/spotify/cosmos/android/DeferredResolver$2;->val$subscription:Lcom/spotify/cosmos/android/DeferredResolver$SubscriptionProxy;
iget-object v1, p0, Lcom/spotify/cosmos/android/DeferredResolver$2;->this$0:Lcom/spotify/cosmos/android/DeferredResolver;
iget-object v2, p0, Lcom/spotify/cosmos/android/DeferredResolver$2;->val$request:Lcom/spotify/cosmos/router/Request;
iget-object v3, p0, Lcom/spotify/cosmos/android/DeferredResolver$2;->val$receiver:Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;
invoke-virtual {v1, v2, v3}, Lcom/spotify/cosmos/android/DeferredResolver;->subscribe(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Lcom/spotify/cosmos/android/Subscription;
move-result-object v1
#calls: Lcom/spotify/cosmos/android/DeferredResolver$SubscriptionProxy;->setSubscription(Lcom/spotify/cosmos/android/Subscription;)V
invoke-static {v0, v1}, Lcom/spotify/cosmos/android/DeferredResolver$SubscriptionProxy;->access$000(Lcom/spotify/cosmos/android/DeferredResolver$SubscriptionProxy;Lcom/spotify/cosmos/android/Subscription;)V
return-void
.end method
.method public onConnectionFailed(Lcom/spotify/cosmos/android/Resolver$ConnectionError;)V
.registers 5
iget-object v0, p0, Lcom/spotify/cosmos/android/DeferredResolver$2;->val$receiver:Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;
new-instance v1, Lcom/spotify/cosmos/android/ResolverException;
invoke-virtual {p1}, Lcom/spotify/cosmos/android/Resolver$ConnectionError;->name()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lcom/spotify/cosmos/android/ResolverException;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;->sendOnError(Ljava/lang/Throwable;)V
return-void
.end method