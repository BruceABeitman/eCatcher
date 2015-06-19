.class public Lcom/instagram/realtimeclient/RealtimeClient;
.super Ljava/lang/Object;
.source "RealtimeClient.java"
.implements Lcom/a/a/j;
.field private static final NETWORK_CONNECTIVITY_CHANGE:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"
.field private static final sMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
.field private static final sMaxBackoffIntervalMs:J
.field private static final sParseExecutor:Ljava/util/concurrent/Executor;
.field private static final sSubscribeTimeoutMs:J
.field private mBackoffIntervalMs:J
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;
.field private mContext:Landroid/content/Context;
.field private mEventHandler:Lcom/instagram/realtimeclient/RealtimeEventHandler;
.field private mIsBroadcastReceiverRegistered:Z
.field private mPingTimeoutMs:J
.field private final mPingTimeoutRunnable:Ljava/lang/Runnable;
.field private final mRealtimeHandler:Landroid/os/Handler;
.field private final mReconnectRunnable:Ljava/lang/Runnable;
.field private final mRefreshRunnable:Ljava/lang/Runnable;
.field private final mSocketFactory:Lcom/a/a/e;
.field private final mSubscribeTimeoutRunnable:Ljava/lang/Runnable;
.field private mSubscription:Lcom/instagram/realtimeclient/RealtimeSubscription;
.field private mWebSocketClient:Lcom/a/a/f;
.method static constructor <clinit>()V
.registers 4
const-wide/16 v2, 0xa
sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
move-result-wide v0
sput-wide v0, Lcom/instagram/realtimeclient/RealtimeClient;->sMaxBackoffIntervalMs:J
sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
move-result-wide v0
sput-wide v0, Lcom/instagram/realtimeclient/RealtimeClient;->sSubscribeTimeoutMs:J
new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V
sput-object v0, Lcom/instagram/realtimeclient/RealtimeClient;->sMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
invoke-static {}, Lcom/instagram/common/u/c/e;->a()Lcom/instagram/common/u/c/e;
move-result-object v0
const-string v1, "RealtimeClient"
invoke-virtual {v0, v1}, Lcom/instagram/common/u/c/e;->a(Ljava/lang/String;)Lcom/instagram/common/u/c/e;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/u/c/e;->c()Lcom/instagram/common/u/c/d;
move-result-object v0
sput-object v0, Lcom/instagram/realtimeclient/RealtimeClient;->sParseExecutor:Ljava/util/concurrent/Executor;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
const-wide/16 v1, 0x1e
invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
move-result-wide v0
iput-wide v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mPingTimeoutMs:J
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mWebSocketClient:Lcom/a/a/f;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mBackoffIntervalMs:J
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRealtimeHandler:Landroid/os/Handler;
new-instance v0, Lcom/instagram/realtimeclient/RealtimeClient$1;
invoke-direct {v0, p0}, Lcom/instagram/realtimeclient/RealtimeClient$1;-><init>(Lcom/instagram/realtimeclient/RealtimeClient;)V
iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mReconnectRunnable:Ljava/lang/Runnable;
new-instance v0, Lcom/instagram/realtimeclient/RealtimeClient$2;
invoke-direct {v0, p0}, Lcom/instagram/realtimeclient/RealtimeClient$2;-><init>(Lcom/instagram/realtimeclient/RealtimeClient;)V
iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRefreshRunnable:Ljava/lang/Runnable;
new-instance v0, Lcom/instagram/realtimeclient/RealtimeClient$3;
invoke-direct {v0, p0}, Lcom/instagram/realtimeclient/RealtimeClient$3;-><init>(Lcom/instagram/realtimeclient/RealtimeClient;)V
iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscribeTimeoutRunnable:Ljava/lang/Runnable;
new-instance v0, Lcom/instagram/realtimeclient/RealtimeClient$4;
invoke-direct {v0, p0}, Lcom/instagram/realtimeclient/RealtimeClient$4;-><init>(Lcom/instagram/realtimeclient/RealtimeClient;)V
iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mPingTimeoutRunnable:Ljava/lang/Runnable;
new-instance v0, Lcom/instagram/realtimeclient/RealtimeClient$5;
invoke-direct {v0, p0}, Lcom/instagram/realtimeclient/RealtimeClient$5;-><init>(Lcom/instagram/realtimeclient/RealtimeClient;)V
iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
new-instance v0, Lcom/instagram/realtimeclient/RealtimeClient$6;
invoke-direct {v0, p0}, Lcom/instagram/realtimeclient/RealtimeClient$6;-><init>(Lcom/instagram/realtimeclient/RealtimeClient;)V
iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSocketFactory:Lcom/a/a/e;
iput-object p1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mContext:Landroid/content/Context;
return-void
.end method
.method static synthetic access$000(Lcom/instagram/realtimeclient/RealtimeClient;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/realtimeclient/RealtimeClient;->connect()V
return-void
.end method
.method static synthetic access$100(Lcom/instagram/realtimeclient/RealtimeClient;)Lcom/instagram/realtimeclient/RealtimeEventHandler;
.registers 2
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mEventHandler:Lcom/instagram/realtimeclient/RealtimeEventHandler;
return-object v0
.end method
.method static synthetic access$200(Lcom/instagram/realtimeclient/RealtimeClient;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/realtimeclient/RealtimeClient;->disconnect()V
return-void
.end method
.method static synthetic access$300()Lcom/fasterxml/jackson/databind/ObjectMapper;
.registers 1
sget-object v0, Lcom/instagram/realtimeclient/RealtimeClient;->sMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
return-object v0
.end method
.method static synthetic access$400(Lcom/instagram/realtimeclient/RealtimeClient;Lcom/instagram/realtimeclient/RealtimeEvent;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/realtimeclient/RealtimeClient;->handleRealtimeEvent(Lcom/instagram/realtimeclient/RealtimeEvent;)V
return-void
.end method
.method static synthetic access$500(Lcom/instagram/realtimeclient/RealtimeClient;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRealtimeHandler:Landroid/os/Handler;
return-object v0
.end method
.method private cancelDelayedRunnables()V
.registers 3
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRealtimeHandler:Landroid/os/Handler;
iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mReconnectRunnable:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRealtimeHandler:Landroid/os/Handler;
iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRefreshRunnable:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRealtimeHandler:Landroid/os/Handler;
iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscribeTimeoutRunnable:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRealtimeHandler:Landroid/os/Handler;
iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mPingTimeoutRunnable:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
return-void
.end method
.method private connect()V
.registers 5
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mWebSocketClient:Lcom/a/a/f;
if-nez v0, :cond_8
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscription:Lcom/instagram/realtimeclient/RealtimeSubscription;
if-nez v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
invoke-direct {p0}, Lcom/instagram/realtimeclient/RealtimeClient;->cancelDelayedRunnables()V
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/Object;
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
new-instance v1, Lcom/a/a/f;
iget-object v2, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscription:Lcom/instagram/realtimeclient/RealtimeSubscription;
invoke-virtual {v2}, Lcom/instagram/realtimeclient/RealtimeSubscription;->getURL()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
move-result-object v2
iget-object v3, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSocketFactory:Lcom/a/a/e;
invoke-direct {v1, v2, v0, v3}, Lcom/a/a/f;-><init>(Ljava/net/URI;Ljava/util/List;Lcom/a/a/e;)V
iput-object v1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mWebSocketClient:Lcom/a/a/f;
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mWebSocketClient:Lcom/a/a/f;
invoke-virtual {v0, p0}, Lcom/a/a/f;->a(Lcom/a/a/j;)V
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mWebSocketClient:Lcom/a/a/f;
invoke-virtual {v0}, Lcom/a/a/f;->b()V
goto :goto_8
.end method
.method private disconnect()V
.registers 3
invoke-direct {p0}, Lcom/instagram/realtimeclient/RealtimeClient;->cancelDelayedRunnables()V
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mWebSocketClient:Lcom/a/a/f;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mWebSocketClient:Lcom/a/a/f;
invoke-virtual {v0}, Lcom/a/a/f;->a()V
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mWebSocketClient:Lcom/a/a/f;
invoke-virtual {v0}, Lcom/a/a/f;->c()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mWebSocketClient:Lcom/a/a/f;
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mEventHandler:Lcom/instagram/realtimeclient/RealtimeEventHandler;
sget-object v1, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;->NOT_CONNECTED:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;
invoke-interface {v0, v1}, Lcom/instagram/realtimeclient/RealtimeEventHandler;->onConnectionStatusChanged(Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;)V
:cond_1b
return-void
.end method
.method private handleRealtimeEvent(Lcom/instagram/realtimeclient/RealtimeEvent;)V
.registers 5
instance-of v0, p1, Lcom/instagram/realtimeclient/RealtimePatchEvent;
if-eqz v0, :cond_13
check-cast p1, Lcom/instagram/realtimeclient/RealtimePatchEvent;
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscription:Lcom/instagram/realtimeclient/RealtimeSubscription;
iget-object v1, p1, Lcom/instagram/realtimeclient/RealtimePatchEvent;->sequence:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/instagram/realtimeclient/RealtimeSubscription;->updateSequence(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mEventHandler:Lcom/instagram/realtimeclient/RealtimeEventHandler;
invoke-interface {v0, p1}, Lcom/instagram/realtimeclient/RealtimeEventHandler;->onPatchEvent(Lcom/instagram/realtimeclient/RealtimePatchEvent;)V
:cond_12
:goto_12
return-void
:cond_13
instance-of v0, p1, Lcom/instagram/realtimeclient/RealtimeSubscribedEvent;
if-eqz v0, :cond_3f
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mBackoffIntervalMs:J
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRealtimeHandler:Landroid/os/Handler;
iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscribeTimeoutRunnable:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscription:Lcom/instagram/realtimeclient/RealtimeSubscription;
move-object v0, p1
check-cast v0, Lcom/instagram/realtimeclient/RealtimeSubscribedEvent;
iget-object v0, v0, Lcom/instagram/realtimeclient/RealtimeSubscribedEvent;->sequence:Ljava/lang/String;
invoke-virtual {v1, v0}, Lcom/instagram/realtimeclient/RealtimeSubscription;->updateSequence(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mEventHandler:Lcom/instagram/realtimeclient/RealtimeEventHandler;
sget-object v1, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;->SUBSCRIBED:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;
invoke-interface {v0, v1}, Lcom/instagram/realtimeclient/RealtimeEventHandler;->onConnectionStatusChanged(Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;)V
check-cast p1, Lcom/instagram/realtimeclient/RealtimeSubscribedEvent;
iget-boolean v0, p1, Lcom/instagram/realtimeclient/RealtimeSubscribedEvent;->mustRefresh:Z
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mEventHandler:Lcom/instagram/realtimeclient/RealtimeEventHandler;
invoke-interface {v0}, Lcom/instagram/realtimeclient/RealtimeEventHandler;->onFeedRefreshRequested()V
goto :goto_12
:cond_3f
instance-of v0, p1, Lcom/instagram/realtimeclient/RealtimeUnsubscribedEvent;
if-eqz v0, :cond_4e
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mEventHandler:Lcom/instagram/realtimeclient/RealtimeEventHandler;
sget-object v1, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;->CONNECTED:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;
invoke-interface {v0, v1}, Lcom/instagram/realtimeclient/RealtimeEventHandler;->onConnectionStatusChanged(Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;)V
invoke-direct {p0}, Lcom/instagram/realtimeclient/RealtimeClient;->sendSubscribeMessage()V
goto :goto_12
:cond_4e
instance-of v0, p1, Lcom/instagram/realtimeclient/RealtimeKeepaliveEvent;
if-eqz v0, :cond_63
sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
check-cast p1, Lcom/instagram/realtimeclient/RealtimeKeepaliveEvent;
iget-wide v1, p1, Lcom/instagram/realtimeclient/RealtimeKeepaliveEvent;->interval:D
double-to-long v1, v1
invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
move-result-wide v0
iput-wide v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mPingTimeoutMs:J
invoke-virtual {p0}, Lcom/instagram/realtimeclient/RealtimeClient;->onPing()V
goto :goto_12
:cond_63
instance-of v0, p1, Lcom/instagram/realtimeclient/RealtimeErrorEvent;
if-eqz v0, :cond_70
invoke-virtual {p0}, Lcom/instagram/realtimeclient/RealtimeClient;->unsubscribe()V
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRefreshRunnable:Ljava/lang/Runnable;
invoke-direct {p0, v0}, Lcom/instagram/realtimeclient/RealtimeClient;->performWithBackoff(Ljava/lang/Runnable;)V
goto :goto_12
:cond_70
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
goto :goto_12
.end method
.method private performWithBackoff(Ljava/lang/Runnable;)V
.registers 6
iget-wide v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mBackoffIntervalMs:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-nez v0, :cond_19
const-wide/16 v0, 0x1f4
:goto_a
iput-wide v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mBackoffIntervalMs:J
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRealtimeHandler:Landroid/os/Handler;
invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRealtimeHandler:Landroid/os/Handler;
iget-wide v1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mBackoffIntervalMs:J
invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
:cond_19
iget-wide v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mBackoffIntervalMs:J
const-wide/16 v2, 0x2
mul-long/2addr v0, v2
sget-wide v2, Lcom/instagram/realtimeclient/RealtimeClient;->sMaxBackoffIntervalMs:J
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J
move-result-wide v0
goto :goto_a
.end method
.method private sendSubscribeMessage()V
.registers 5
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mWebSocketClient:Lcom/a/a/f;
if-nez v0, :cond_5
:goto_4
return-void
:try_start_5
:cond_5
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRealtimeHandler:Landroid/os/Handler;
iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscribeTimeoutRunnable:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRealtimeHandler:Landroid/os/Handler;
iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscribeTimeoutRunnable:Ljava/lang/Runnable;
sget-wide v2, Lcom/instagram/realtimeclient/RealtimeClient;->sSubscribeTimeoutMs:J
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mWebSocketClient:Lcom/a/a/f;
sget-object v1, Lcom/instagram/realtimeclient/RealtimeClient;->sMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
new-instance v2, Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;
iget-object v3, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscription:Lcom/instagram/realtimeclient/RealtimeSubscription;
invoke-direct {v2, v3}, Lcom/instagram/realtimeclient/RealtimeSubscribeCommand;-><init>(Lcom/instagram/realtimeclient/RealtimeSubscription;)V
invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/a/a/f;->a(Ljava/lang/String;)V
:try_end_27
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_27} :catch_28
goto :goto_4
:catch_28
move-exception v0
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
goto :goto_4
.end method
.method public getSubscription()Lcom/instagram/realtimeclient/RealtimeSubscription;
.registers 2
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscription:Lcom/instagram/realtimeclient/RealtimeSubscription;
return-object v0
.end method
.method public onConnect()V
.registers 3
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscription:Lcom/instagram/realtimeclient/RealtimeSubscription;
invoke-virtual {v0}, Lcom/instagram/realtimeclient/RealtimeSubscription;->getURL()Ljava/lang/String;
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mEventHandler:Lcom/instagram/realtimeclient/RealtimeEventHandler;
sget-object v1, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;->CONNECTED:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;
invoke-interface {v0, v1}, Lcom/instagram/realtimeclient/RealtimeEventHandler;->onConnectionStatusChanged(Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;)V
invoke-direct {p0}, Lcom/instagram/realtimeclient/RealtimeClient;->cancelDelayedRunnables()V
invoke-direct {p0}, Lcom/instagram/realtimeclient/RealtimeClient;->sendSubscribeMessage()V
invoke-virtual {p0}, Lcom/instagram/realtimeclient/RealtimeClient;->onPing()V
return-void
.end method
.method public onDisconnect(ILjava/lang/String;)V
.registers 5
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mWebSocketClient:Lcom/a/a/f;
invoke-direct {p0}, Lcom/instagram/realtimeclient/RealtimeClient;->cancelDelayedRunnables()V
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mEventHandler:Lcom/instagram/realtimeclient/RealtimeEventHandler;
sget-object v1, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;->NOT_CONNECTED:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;
invoke-interface {v0, v1}, Lcom/instagram/realtimeclient/RealtimeEventHandler;->onConnectionStatusChanged(Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;)V
if-eqz p1, :cond_22
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mContext:Landroid/content/Context;
invoke-static {v0}, Lcom/instagram/common/u/g/a;->a(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mReconnectRunnable:Ljava/lang/Runnable;
invoke-direct {p0, v0}, Lcom/instagram/realtimeclient/RealtimeClient;->performWithBackoff(Ljava/lang/Runnable;)V
:cond_22
return-void
.end method
.method public onError(Ljava/lang/Exception;)V
.registers 4
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const-string v1, "Error: "
invoke-static {v0, v1, p1}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
const/16 v0, -0x3e8
invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/instagram/realtimeclient/RealtimeClient;->onDisconnect(ILjava/lang/String;)V
return-void
.end method
.method public onMessage(Ljava/lang/String;)V
.registers 4
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
sget-object v0, Lcom/instagram/realtimeclient/RealtimeClient;->sParseExecutor:Ljava/util/concurrent/Executor;
new-instance v1, Lcom/instagram/realtimeclient/RealtimeClient$7;
invoke-direct {v1, p0, p1}, Lcom/instagram/realtimeclient/RealtimeClient$7;-><init>(Lcom/instagram/realtimeclient/RealtimeClient;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method public onMessage([B)V
.registers 2
return-void
.end method
.method public onPing()V
.registers 5
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRealtimeHandler:Landroid/os/Handler;
iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mPingTimeoutRunnable:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mWebSocketClient:Lcom/a/a/f;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mRealtimeHandler:Landroid/os/Handler;
iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mPingTimeoutRunnable:Ljava/lang/Runnable;
iget-wide v2, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mPingTimeoutMs:J
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_14
return-void
.end method
.method public setEventHandler(Lcom/instagram/realtimeclient/RealtimeEventHandler;)V
.registers 2
iput-object p1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mEventHandler:Lcom/instagram/realtimeclient/RealtimeEventHandler;
return-void
.end method
.method public setSubscription(Lcom/instagram/realtimeclient/RealtimeSubscription;)V
.registers 4
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscription:Lcom/instagram/realtimeclient/RealtimeSubscription;
if-nez v0, :cond_7
iput-object p1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscription:Lcom/instagram/realtimeclient/RealtimeSubscription;
:goto_6
return-void
:cond_7
if-nez p1, :cond_10
invoke-virtual {p0}, Lcom/instagram/realtimeclient/RealtimeClient;->unsubscribe()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscription:Lcom/instagram/realtimeclient/RealtimeSubscription;
goto :goto_6
:cond_10
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscription:Lcom/instagram/realtimeclient/RealtimeSubscription;
invoke-virtual {v0}, Lcom/instagram/realtimeclient/RealtimeSubscription;->getTopic()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Lcom/instagram/realtimeclient/RealtimeSubscription;->getTopic()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscription:Lcom/instagram/realtimeclient/RealtimeSubscription;
invoke-virtual {v0, p1}, Lcom/instagram/realtimeclient/RealtimeSubscription;->updateWithSubscription(Lcom/instagram/realtimeclient/RealtimeSubscription;)V
goto :goto_6
:cond_26
invoke-virtual {p0}, Lcom/instagram/realtimeclient/RealtimeClient;->unsubscribe()V
iput-object p1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mSubscription:Lcom/instagram/realtimeclient/RealtimeSubscription;
goto :goto_6
.end method
.method public subscribe()V
.registers 5
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mBackoffIntervalMs:J
iget-boolean v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mIsBroadcastReceiverRegistered:Z
if-nez v0, :cond_1c
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mContext:Landroid/content/Context;
iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
new-instance v2, Landroid/content/IntentFilter;
const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"
invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mIsBroadcastReceiverRegistered:Z
:cond_1c
invoke-direct {p0}, Lcom/instagram/realtimeclient/RealtimeClient;->connect()V
return-void
.end method
.method public unsubscribe()V
.registers 3
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
iget-boolean v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mIsBroadcastReceiverRegistered:Z
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mContext:Landroid/content/Context;
iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/realtimeclient/RealtimeClient;->mIsBroadcastReceiverRegistered:Z
:cond_11
invoke-direct {p0}, Lcom/instagram/realtimeclient/RealtimeClient;->disconnect()V
return-void
.end method