.class public Lcom/spotify/cosmos/android/DeferredResolver$SubscriptionProxy;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/cosmos/android/Subscription;
.field private mShouldUnsubscribe:Z
.field private mSubscription:Lcom/spotify/cosmos/android/Subscription;
.method public constructor <init>(Lcom/spotify/cosmos/android/Subscription;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/cosmos/android/DeferredResolver$SubscriptionProxy;->mSubscription:Lcom/spotify/cosmos/android/Subscription;
return-void
.end method
.method static synthetic access$000(Lcom/spotify/cosmos/android/DeferredResolver$SubscriptionProxy;Lcom/spotify/cosmos/android/Subscription;)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/cosmos/android/DeferredResolver$SubscriptionProxy;->setSubscription(Lcom/spotify/cosmos/android/Subscription;)V
return-void
.end method
.method private hasSubscription()Z
.registers 2
iget-object v0, p0, Lcom/spotify/cosmos/android/DeferredResolver$SubscriptionProxy;->mSubscription:Lcom/spotify/cosmos/android/Subscription;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method private setSubscription(Lcom/spotify/cosmos/android/Subscription;)V
.registers 3
iput-object p1, p0, Lcom/spotify/cosmos/android/DeferredResolver$SubscriptionProxy;->mSubscription:Lcom/spotify/cosmos/android/Subscription;
iget-boolean v0, p0, Lcom/spotify/cosmos/android/DeferredResolver$SubscriptionProxy;->mShouldUnsubscribe:Z
if-eqz v0, :cond_9
invoke-virtual {p0}, Lcom/spotify/cosmos/android/DeferredResolver$SubscriptionProxy;->unsubscribe()Z
:cond_9
return-void
.end method
.method public unsubscribe()Z
.registers 2
invoke-direct {p0}, Lcom/spotify/cosmos/android/DeferredResolver$SubscriptionProxy;->hasSubscription()Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/spotify/cosmos/android/DeferredResolver$SubscriptionProxy;->mSubscription:Lcom/spotify/cosmos/android/Subscription;
invoke-interface {v0}, Lcom/spotify/cosmos/android/Subscription;->unsubscribe()Z
move-result v0
:goto_c
return v0
:cond_d
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/cosmos/android/DeferredResolver$SubscriptionProxy;->mShouldUnsubscribe:Z
const/4 v0, 0x0
goto :goto_c
.end method