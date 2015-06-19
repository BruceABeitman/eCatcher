.class public Lco/vine/android/service/RealTimeChatService;
.super Landroid/app/Service;
.source "RealTimeChatService.java"
.field public static final ACTION_CODE_ALERT_NEW_PRIVATE_MESSAGE:I = 0x8
.field public static final ACTION_CODE_CONNECT:I = 0x1
.field public static final ACTION_CODE_DISCONNECT:I = 0x5
.field public static final ACTION_CODE_ERROR:I = 0x6
.field public static final ACTION_CODE_NEW_WEBSOCKET_FRAME:I = 0x9
.field public static final ACTION_CODE_RECONNECT:I = 0x2
.field public static final ACTION_CODE_SUBSCRIBE:I = 0x3
.field public static final ACTION_CODE_UNSUBSCRIBE:I = 0x4
.field public static final ACTION_CODE_UPDATE_TYPING_STATE:I = 0x7
.field public static final ACTION_WEBSOCKET_EVENT:Ljava/lang/String; = "co.vine.android.rtc.WEBSOCKET_EVENT"
.field public static final EXTRA_ACTION_CODE:Ljava/lang/String; = "action_code"
.field public static final EXTRA_CODE:Ljava/lang/String; = "code"
.field public static final EXTRA_CONNECTED:Ljava/lang/String; = "connected"
.field public static final EXTRA_CONVERSATION_ID:Ljava/lang/String; = "conversation_id"
.field public static final EXTRA_DATA:Ljava/lang/String; = "data"
.field public static final EXTRA_IS_TYPING:Ljava/lang/String; = "is_typing"
.field public static final EXTRA_LAST_MESSAGE_ID:Ljava/lang/String; = "last_message_id"
.field public static final EXTRA_PID:Ljava/lang/String; = "pid"
.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"
.field public static final EXTRA_RESPOND:Ljava/lang/String; = "respond"
.field public static final EXTRA_SESSION_KEY:Ljava/lang/String; = "s_key"
.field private static final INITIAL_RETRY_DELAY:J = 0x3e8L
.field private static final MAX_RETRY_DELAY:I = 0x3e80
.field public static final PARAM_CONNECTED:Ljava/lang/String; = "connected"
.field public static final PARAM_CONVERSATIONS:Ljava/lang/String; = "conversations"
.field public static final PARAM_LAST_MESSAGE_ID:Ljava/lang/String; = "last_message_id"
.field public static final PARAM_TYPING:Ljava/lang/String; = "typing"
.field public static final TAG:Ljava/lang/String; = "RTCService"
.field private mClient:Lcom/codebutler/android_websockets/WebSocketClient;
.field private mExecutor:Ljava/util/concurrent/ExecutorService;
.field private mMainHandler:Landroid/os/Handler;
.field private mMessenger:Landroid/os/Messenger;
.field private mReconnectDelay:J
.field private final mReconnectRunnable:Ljava/lang/Runnable;
.field private mRtcUrl:Ljava/lang/String;
.field private mWebSocketListener:Lcom/codebutler/android_websockets/WebSocketClient$Listener;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Service;-><init>()V
new-instance v0, Lco/vine/android/service/RealTimeChatService$1;
invoke-direct {v0, p0}, Lco/vine/android/service/RealTimeChatService$1;-><init>(Lco/vine/android/service/RealTimeChatService;)V
iput-object v0, p0, Lco/vine/android/service/RealTimeChatService;->mWebSocketListener:Lcom/codebutler/android_websockets/WebSocketClient$Listener;
new-instance v0, Lco/vine/android/service/RealTimeChatService$2;
invoke-direct {v0, p0}, Lco/vine/android/service/RealTimeChatService$2;-><init>(Lco/vine/android/service/RealTimeChatService;)V
iput-object v0, p0, Lco/vine/android/service/RealTimeChatService;->mReconnectRunnable:Ljava/lang/Runnable;
return-void
.end method
.method static synthetic access$000(Lco/vine/android/service/RealTimeChatService;)V
.registers 1
invoke-direct {p0}, Lco/vine/android/service/RealTimeChatService;->removeReconnectCallback()V
return-void
.end method
.method static synthetic access$100(Lco/vine/android/service/RealTimeChatService;ILandroid/os/Bundle;)V
.registers 3
invoke-direct {p0, p1, p2}, Lco/vine/android/service/RealTimeChatService;->broadcastEvent(ILandroid/os/Bundle;)V
return-void
.end method
.method static synthetic access$1100(Lco/vine/android/service/RealTimeChatService;)Ljava/util/concurrent/ExecutorService;
.registers 2
iget-object v0, p0, Lco/vine/android/service/RealTimeChatService;->mExecutor:Ljava/util/concurrent/ExecutorService;
return-object v0
.end method
.method static synthetic access$1200(Lco/vine/android/service/RealTimeChatService;ILandroid/os/Bundle;)V
.registers 3
invoke-direct {p0, p1, p2}, Lco/vine/android/service/RealTimeChatService;->executeAction(ILandroid/os/Bundle;)V
return-void
.end method
.method static synthetic access$200(Lco/vine/android/service/RealTimeChatService;)J
.registers 3
iget-wide v0, p0, Lco/vine/android/service/RealTimeChatService;->mReconnectDelay:J
return-wide v0
.end method
.method static synthetic access$202(Lco/vine/android/service/RealTimeChatService;J)J
.registers 3
iput-wide p1, p0, Lco/vine/android/service/RealTimeChatService;->mReconnectDelay:J
return-wide p1
.end method
.method static synthetic access$300(Lco/vine/android/service/RealTimeChatService;)Lcom/codebutler/android_websockets/WebSocketClient;
.registers 2
iget-object v0, p0, Lco/vine/android/service/RealTimeChatService;->mClient:Lcom/codebutler/android_websockets/WebSocketClient;
return-object v0
.end method
.method static synthetic access$400(Lco/vine/android/service/RealTimeChatService;)Z
.registers 2
invoke-direct {p0}, Lco/vine/android/service/RealTimeChatService;->clientIsActive()Z
move-result v0
return v0
.end method
.method static synthetic access$500(Lco/vine/android/service/RealTimeChatService;)Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lco/vine/android/service/RealTimeChatService;->mReconnectRunnable:Ljava/lang/Runnable;
return-object v0
.end method
.method static synthetic access$600(Lco/vine/android/service/RealTimeChatService;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lco/vine/android/service/RealTimeChatService;->mMainHandler:Landroid/os/Handler;
return-object v0
.end method
.method private declared-synchronized broadcastEvent(ILandroid/os/Bundle;)V
.registers 5
monitor-enter p0
:try_start_1
new-instance v0, Landroid/content/Intent;
const-string v1, "co.vine.android.rtc.WEBSOCKET_EVENT"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
if-eqz p2, :cond_d
invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
:cond_d
const-string v1, "action_code"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v1, "co.vine.android.BROADCAST"
invoke-virtual {p0, v0, v1}, Lco/vine/android/service/RealTimeChatService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
:try_end_17
.catchall {:try_start_1 .. :try_end_17} :catchall_19
monitor-exit p0
return-void
:catchall_19
move-exception v1
monitor-exit p0
throw v1
.end method
.method private declared-synchronized clientIsActive()Z
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lco/vine/android/service/RealTimeChatService;->mClient:Lcom/codebutler/android_websockets/WebSocketClient;
if-eqz v0, :cond_e
invoke-virtual {v0}, Lcom/codebutler/android_websockets/WebSocketClient;->isConnected()Z
:try_end_8
.catchall {:try_start_1 .. :try_end_8} :catchall_10
move-result v1
if-eqz v1, :cond_e
const/4 v1, 0x1
:goto_c
monitor-exit p0
return v1
:cond_e
const/4 v1, 0x0
goto :goto_c
:catchall_10
move-exception v1
monitor-exit p0
throw v1
.end method
.method private declared-synchronized disconnect()V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lco/vine/android/service/RealTimeChatService;->mClient:Lcom/codebutler/android_websockets/WebSocketClient;
if-eqz v0, :cond_b
invoke-virtual {v0}, Lcom/codebutler/android_websockets/WebSocketClient;->disconnect()V
const/4 v1, 0x0
iput-object v1, p0, Lco/vine/android/service/RealTimeChatService;->mClient:Lcom/codebutler/android_websockets/WebSocketClient;
:cond_b
:try_end_b
.catchall {:try_start_1 .. :try_end_b} :catchall_d
monitor-exit p0
return-void
:catchall_d
move-exception v1
monitor-exit p0
throw v1
.end method
.method private executeAction(ILandroid/os/Bundle;)V
.registers 14
const/4 v10, 0x1
const/4 v9, 0x0
packed-switch p1, :pswitch_data_dc
:pswitch_5
:goto_5
:cond_5
return-void
:pswitch_6
const-string v7, "s_key"
invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-direct {p0}, Lco/vine/android/service/RealTimeChatService;->removeReconnectCallback()V
invoke-virtual {p0, v6}, Lco/vine/android/service/RealTimeChatService;->prepareClient(Ljava/lang/String;)V
iget-object v7, p0, Lco/vine/android/service/RealTimeChatService;->mClient:Lcom/codebutler/android_websockets/WebSocketClient;
invoke-virtual {v7}, Lcom/codebutler/android_websockets/WebSocketClient;->isConnected()Z
move-result v7
if-nez v7, :cond_5
iget-object v7, p0, Lco/vine/android/service/RealTimeChatService;->mClient:Lcom/codebutler/android_websockets/WebSocketClient;
invoke-virtual {v7}, Lcom/codebutler/android_websockets/WebSocketClient;->connect()V
goto :goto_5
:pswitch_20
const-string v7, "s_key"
invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {p0, v6}, Lco/vine/android/service/RealTimeChatService;->prepareClient(Ljava/lang/String;)V
invoke-direct {p0}, Lco/vine/android/service/RealTimeChatService;->removeReconnectCallback()V
const-wide/16 v7, 0x3e8
iput-wide v7, p0, Lco/vine/android/service/RealTimeChatService;->mReconnectDelay:J
iget-object v7, p0, Lco/vine/android/service/RealTimeChatService;->mMainHandler:Landroid/os/Handler;
iget-object v8, p0, Lco/vine/android/service/RealTimeChatService;->mReconnectRunnable:Ljava/lang/Runnable;
iget-wide v9, p0, Lco/vine/android/service/RealTimeChatService;->mReconnectDelay:J
invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
goto :goto_5
:pswitch_3a
const-string v7, "conversation_id"
invoke-virtual {p2, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v7
invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
new-instance v7, Lco/vine/android/service/RealTimeChatService$Conversation$Builder;
invoke-direct {v7}, Lco/vine/android/service/RealTimeChatService$Conversation$Builder;-><init>()V
invoke-virtual {v7}, Lco/vine/android/service/RealTimeChatService$Conversation$Builder;->setConnected()Lco/vine/android/service/RealTimeChatService$Conversation$Builder;
move-result-object v7
invoke-virtual {v7}, Lco/vine/android/service/RealTimeChatService$Conversation$Builder;->build()Lco/vine/android/service/RealTimeChatService$Conversation;
move-result-object v0
new-array v7, v10, [Lco/vine/android/service/RealTimeChatService$Conversation;
aput-object v0, v7, v9
invoke-direct {p0, v1, v7}, Lco/vine/android/service/RealTimeChatService;->getPayload(Ljava/lang/Long;[Lco/vine/android/service/RealTimeChatService$Conversation;)Ljava/lang/String;
move-result-object v7
invoke-direct {p0, v7}, Lco/vine/android/service/RealTimeChatService;->send(Ljava/lang/String;)V
goto :goto_5
:pswitch_5d
const-string v7, "conversation_id"
invoke-virtual {p2, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v7
invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
new-instance v7, Lco/vine/android/service/RealTimeChatService$Conversation$Builder;
invoke-direct {v7}, Lco/vine/android/service/RealTimeChatService$Conversation$Builder;-><init>()V
invoke-virtual {v7}, Lco/vine/android/service/RealTimeChatService$Conversation$Builder;->build()Lco/vine/android/service/RealTimeChatService$Conversation;
move-result-object v0
new-array v7, v10, [Lco/vine/android/service/RealTimeChatService$Conversation;
aput-object v0, v7, v9
invoke-direct {p0, v1, v7}, Lco/vine/android/service/RealTimeChatService;->getPayload(Ljava/lang/Long;[Lco/vine/android/service/RealTimeChatService$Conversation;)Ljava/lang/String;
move-result-object v7
invoke-direct {p0, v7}, Lco/vine/android/service/RealTimeChatService;->send(Ljava/lang/String;)V
goto :goto_5
:pswitch_7c
invoke-direct {p0}, Lco/vine/android/service/RealTimeChatService;->disconnect()V
goto :goto_5
:pswitch_80
const-string v7, "is_typing"
invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v3
const-string v7, "conversation_id"
invoke-virtual {p2, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v7
invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
new-instance v7, Lco/vine/android/service/RealTimeChatService$Conversation$Builder;
invoke-direct {v7}, Lco/vine/android/service/RealTimeChatService$Conversation$Builder;-><init>()V
invoke-virtual {v7}, Lco/vine/android/service/RealTimeChatService$Conversation$Builder;->setConnected()Lco/vine/android/service/RealTimeChatService$Conversation$Builder;
move-result-object v7
invoke-virtual {v7, v3}, Lco/vine/android/service/RealTimeChatService$Conversation$Builder;->setTyping(Z)Lco/vine/android/service/RealTimeChatService$Conversation$Builder;
move-result-object v7
invoke-virtual {v7}, Lco/vine/android/service/RealTimeChatService$Conversation$Builder;->build()Lco/vine/android/service/RealTimeChatService$Conversation;
move-result-object v0
new-array v7, v10, [Lco/vine/android/service/RealTimeChatService$Conversation;
aput-object v0, v7, v9
invoke-direct {p0, v1, v7}, Lco/vine/android/service/RealTimeChatService;->getPayload(Ljava/lang/Long;[Lco/vine/android/service/RealTimeChatService$Conversation;)Ljava/lang/String;
move-result-object v7
invoke-direct {p0, v7}, Lco/vine/android/service/RealTimeChatService;->send(Ljava/lang/String;)V
goto/16 :goto_5
:pswitch_ae
const-string v7, "conversation_id"
invoke-virtual {p2, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v1
const-string v7, "last_message_id"
invoke-virtual {p2, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v4
new-instance v7, Lco/vine/android/service/RealTimeChatService$Conversation$Builder;
invoke-direct {v7}, Lco/vine/android/service/RealTimeChatService$Conversation$Builder;-><init>()V
invoke-virtual {v7}, Lco/vine/android/service/RealTimeChatService$Conversation$Builder;->setConnected()Lco/vine/android/service/RealTimeChatService$Conversation$Builder;
move-result-object v7
invoke-virtual {v7, v4, v5}, Lco/vine/android/service/RealTimeChatService$Conversation$Builder;->setLastMessageId(J)Lco/vine/android/service/RealTimeChatService$Conversation$Builder;
move-result-object v7
invoke-virtual {v7}, Lco/vine/android/service/RealTimeChatService$Conversation$Builder;->build()Lco/vine/android/service/RealTimeChatService$Conversation;
move-result-object v0
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v7
new-array v8, v10, [Lco/vine/android/service/RealTimeChatService$Conversation;
aput-object v0, v8, v9
invoke-direct {p0, v7, v8}, Lco/vine/android/service/RealTimeChatService;->getPayload(Ljava/lang/Long;[Lco/vine/android/service/RealTimeChatService$Conversation;)Ljava/lang/String;
move-result-object v7
invoke-direct {p0, v7}, Lco/vine/android/service/RealTimeChatService;->send(Ljava/lang/String;)V
goto/16 :goto_5
:pswitch_data_dc
.packed-switch 0x1
:pswitch_6
:pswitch_20
:pswitch_3a
:pswitch_5d
:pswitch_7c
:pswitch_5
:pswitch_80
:pswitch_ae
.end packed-switch
.end method
.method private varargs declared-synchronized getPayload(Ljava/lang/Long;[Lco/vine/android/service/RealTimeChatService$Conversation;)Ljava/lang/String;
.registers 16
monitor-enter p0
:try_start_1
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
new-instance v4, Ljava/util/HashMap;
invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
move-object v0, p2
array-length v7, v0
const/4 v5, 0x0
:goto_e
if-ge v5, v7, :cond_18
aget-object v1, v0, v5
invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v5, v5, 0x1
goto :goto_e
:cond_18
const-string v10, "conversations"
invoke-virtual {v4, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v8, Lcom/fasterxml/jackson/databind/ObjectMapper;
invoke-direct {v8}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V
invoke-virtual {v8, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;
:try_end_25
.catchall {:try_start_1 .. :try_end_25} :catchall_48
move-result-object v6
:try_start_26
invoke-virtual {v8, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v9
const-string v10, "RTCService"
new-instance v11, Ljava/lang/StringBuilder;
invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
const-string v12, "RTC event payload="
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-static {v10, v11}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V
:try_end_42
.catchall {:try_start_26 .. :try_end_42} :catchall_48
.catch Ljava/lang/Exception; {:try_start_26 .. :try_end_42} :catch_44
:goto_42
monitor-exit p0
return-object v9
:catch_44
move-exception v3
:try_start_45
const-string v9, ""
:try_end_47
.catchall {:try_start_45 .. :try_end_47} :catchall_48
goto :goto_42
:catchall_48
move-exception v10
monitor-exit p0
throw v10
.end method
.method private removeReconnectCallback()V
.registers 3
iget-object v0, p0, Lco/vine/android/service/RealTimeChatService;->mMainHandler:Landroid/os/Handler;
iget-object v1, p0, Lco/vine/android/service/RealTimeChatService;->mReconnectRunnable:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
return-void
.end method
.method private send(Ljava/lang/String;)V
.registers 5
:try_start_0
iget-object v0, p0, Lco/vine/android/service/RealTimeChatService;->mClient:Lcom/codebutler/android_websockets/WebSocketClient;
if-eqz v0, :cond_d
invoke-direct {p0}, Lco/vine/android/service/RealTimeChatService;->clientIsActive()Z
move-result v2
if-eqz v2, :cond_d
invoke-virtual {v0, p1}, Lcom/codebutler/android_websockets/WebSocketClient;->send(Ljava/lang/String;)V
:try_end_d
.catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_d} :catch_e
:goto_d
:cond_d
return-void
:catch_e
move-exception v1
invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
goto :goto_d
.end method
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.registers 4
const-string v0, "RTCService"
const-string v1, "rtc service was bound"
invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/service/RealTimeChatService;->mMessenger:Landroid/os/Messenger;
invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;
move-result-object v0
return-object v0
.end method
.method public onCreate()V
.registers 3
const-string v1, " + Lco/vine/android/service/RealTimeChatService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Service;->onCreate()V
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lco/vine/android/service/RealTimeChatService;->mMainHandler:Landroid/os/Handler;
invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;
move-result-object v0
iput-object v0, p0, Lco/vine/android/service/RealTimeChatService;->mExecutor:Ljava/util/concurrent/ExecutorService;
new-instance v0, Landroid/os/Messenger;
new-instance v1, Lco/vine/android/service/RealTimeChatService$VineServiceHandler;
invoke-direct {v1, p0}, Lco/vine/android/service/RealTimeChatService$VineServiceHandler;-><init>(Lco/vine/android/service/RealTimeChatService;)V
invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V
iput-object v0, p0, Lco/vine/android/service/RealTimeChatService;->mMessenger:Landroid/os/Messenger;
invoke-static {p0}, Lco/vine/android/client/VineAPI;->getInstance(Landroid/content/Context;)Lco/vine/android/client/VineAPI;
move-result-object v0
invoke-virtual {v0}, Lco/vine/android/client/VineAPI;->getRtcUrl()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/service/RealTimeChatService;->mRtcUrl:Ljava/lang/String;
const-string v1, " - Lco/vine/android/service/RealTimeChatService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lco/vine/android/service/RealTimeChatService; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Service;->onDestroy()V
invoke-direct {p0}, Lco/vine/android/service/RealTimeChatService;->removeReconnectCallback()V
invoke-direct {p0}, Lco/vine/android/service/RealTimeChatService;->disconnect()V
const-string v1, " - Lco/vine/android/service/RealTimeChatService; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStartCommand(Landroid/content/Intent;II)I
.registers 5
const/4 v0, 0x2
return v0
.end method
.method public declared-synchronized prepareClient(Ljava/lang/String;)V
.registers 11
monitor-enter p0
:try_start_1
invoke-direct {p0}, Lco/vine/android/service/RealTimeChatService;->clientIsActive()Z
move-result v4
if-nez v4, :cond_66
const-string v4, "RTCService"
const-string v5, "preparing client now"
invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
invoke-static {p0}, Lco/vine/android/client/VineAPI;->getInstance(Landroid/content/Context;)Lco/vine/android/client/VineAPI;
move-result-object v0
iget-object v4, p0, Lco/vine/android/service/RealTimeChatService;->mRtcUrl:Ljava/lang/String;
invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
move-result-object v3
const/4 v4, 0x2
new-array v4, v4, [Lorg/apache/http/message/BasicNameValuePair;
const/4 v5, 0x0
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v7, "vine-session-id"
invoke-direct {v6, v7, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
aput-object v6, v4, v5
const/4 v5, 0x1
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v7, "X-Vine-Client"
invoke-virtual {v0}, Lco/vine/android/client/VineAPI;->getVineClientHeader()Ljava/lang/String;
move-result-object v8
invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
aput-object v6, v4, v5
invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v2
const-string v4, "RTCService"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Creating client: sessionKey="
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, ", uri="
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/codebutler/android_websockets/WebSocketClient;
iget-object v4, p0, Lco/vine/android/service/RealTimeChatService;->mWebSocketListener:Lcom/codebutler/android_websockets/WebSocketClient$Listener;
invoke-direct {v1, v3, v4, v2}, Lcom/codebutler/android_websockets/WebSocketClient;-><init>(Ljava/net/URI;Lcom/codebutler/android_websockets/WebSocketClient$Listener;Ljava/util/List;)V
iput-object v1, p0, Lco/vine/android/service/RealTimeChatService;->mClient:Lcom/codebutler/android_websockets/WebSocketClient;
:cond_66
:try_end_66
.catchall {:try_start_1 .. :try_end_66} :catchall_68
monitor-exit p0
return-void
:catchall_68
move-exception v4
monitor-exit p0
throw v4
.end method