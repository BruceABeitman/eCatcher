.class public Lco/vine/android/VineWebSocketClient;
.super Lcom/codebutler/android_websockets/WebSocketClient;
.source "VineWebSocketClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/VineWebSocketClient$1;,
        Lco/vine/android/VineWebSocketClient$Conversation;
    }
.end annotation


# static fields
.field public static final PARAM_CONNECTED:Ljava/lang/String; = "connected"

.field public static final PARAM_CONVERSATIONS:Ljava/lang/String; = "conversations"

.field public static final PARAM_LAST_MESSAGE_ID:Ljava/lang/String; = "last_message_id"

.field public static final PARAM_TYPING:Ljava/lang/String; = "typing"

.field private static final TAG:Ljava/lang/String; = "VineWebSocketClient;RTC"


# direct methods
.method public constructor <init>(Ljava/net/URI;Lcom/codebutler/android_websockets/WebSocketClient$Listener;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lcom/codebutler/android_websockets/WebSocketClient$Listener;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/codebutler/android_websockets/WebSocketClient;-><init>(Ljava/net/URI;Lcom/codebutler/android_websockets/WebSocketClient$Listener;Ljava/util/List;)V

    return-void
.end method

.method private sendPayload(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/VineWebSocketClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lco/vine/android/VineWebSocketClient;->send(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    goto :goto_9
.end method


# virtual methods
.method public alertNewPrivateMessage(JJ)V
    .registers 9

    const/4 v3, 0x0

    new-instance v1, Lco/vine/android/VineWebSocketClient$Conversation$Builder;

    invoke-direct {v1}, Lco/vine/android/VineWebSocketClient$Conversation$Builder;-><init>()V

    invoke-virtual {v1}, Lco/vine/android/VineWebSocketClient$Conversation$Builder;->setConnected()Lco/vine/android/VineWebSocketClient$Conversation$Builder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lco/vine/android/VineWebSocketClient$Conversation$Builder;->setLastMessageId(J)Lco/vine/android/VineWebSocketClient$Conversation$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lco/vine/android/VineWebSocketClient$Conversation$Builder;->setTyping(Z)Lco/vine/android/VineWebSocketClient$Conversation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lco/vine/android/VineWebSocketClient$Conversation$Builder;->build()Lco/vine/android/VineWebSocketClient$Conversation;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lco/vine/android/VineWebSocketClient$Conversation;

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lco/vine/android/VineWebSocketClient;->getPayload(Ljava/lang/Long;[Lco/vine/android/VineWebSocketClient$Conversation;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lco/vine/android/VineWebSocketClient;->sendPayload(Ljava/lang/String;)V

    return-void
.end method

.method public varargs getPayload(Ljava/lang/Long;[Lco/vine/android/VineWebSocketClient$Conversation;)Ljava/lang/String;
    .registers 16

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v0, p2

    array-length v7, v0

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v7, :cond_17

    aget-object v1, v0, v5

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_17
    const-string v10, "conversations"

    invoke-virtual {v4, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v8}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    invoke-virtual {v8, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v6

    :try_start_25
    invoke-virtual {v8, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "VineWebSocketClient;RTC"

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
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_41} :catch_42

    :goto_41
    return-object v9

    :catch_42
    move-exception v3

    const-string v9, ""

    goto :goto_41
.end method

.method public subscribeConversation(J)V
    .registers 7

    new-instance v1, Lco/vine/android/VineWebSocketClient$Conversation$Builder;

    invoke-direct {v1}, Lco/vine/android/VineWebSocketClient$Conversation$Builder;-><init>()V

    invoke-virtual {v1}, Lco/vine/android/VineWebSocketClient$Conversation$Builder;->setConnected()Lco/vine/android/VineWebSocketClient$Conversation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lco/vine/android/VineWebSocketClient$Conversation$Builder;->build()Lco/vine/android/VineWebSocketClient$Conversation;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lco/vine/android/VineWebSocketClient$Conversation;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lco/vine/android/VineWebSocketClient;->getPayload(Ljava/lang/Long;[Lco/vine/android/VineWebSocketClient$Conversation;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lco/vine/android/VineWebSocketClient;->sendPayload(Ljava/lang/String;)V

    return-void
.end method

.method public updateTypingState(JZ)V
    .registers 8

    new-instance v1, Lco/vine/android/VineWebSocketClient$Conversation$Builder;

    invoke-direct {v1}, Lco/vine/android/VineWebSocketClient$Conversation$Builder;-><init>()V

    invoke-virtual {v1}, Lco/vine/android/VineWebSocketClient$Conversation$Builder;->setConnected()Lco/vine/android/VineWebSocketClient$Conversation$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lco/vine/android/VineWebSocketClient$Conversation$Builder;->setTyping(Z)Lco/vine/android/VineWebSocketClient$Conversation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lco/vine/android/VineWebSocketClient$Conversation$Builder;->build()Lco/vine/android/VineWebSocketClient$Conversation;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lco/vine/android/VineWebSocketClient$Conversation;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lco/vine/android/VineWebSocketClient;->getPayload(Ljava/lang/Long;[Lco/vine/android/VineWebSocketClient$Conversation;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lco/vine/android/VineWebSocketClient;->sendPayload(Ljava/lang/String;)V

    return-void
.end method
