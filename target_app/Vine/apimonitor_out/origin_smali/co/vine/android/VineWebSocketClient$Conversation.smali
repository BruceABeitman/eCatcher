.class Lco/vine/android/VineWebSocketClient$Conversation;
.super Ljava/util/HashMap;
.source "VineWebSocketClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/VineWebSocketClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Conversation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/VineWebSocketClient$Conversation$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lco/vine/android/VineWebSocketClient$Conversation$Builder;)V
    .registers 6

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "connected"

    #getter for: Lco/vine/android/VineWebSocketClient$Conversation$Builder;->connected:Z
    invoke-static {p1}, Lco/vine/android/VineWebSocketClient$Conversation$Builder;->access$000(Lco/vine/android/VineWebSocketClient$Conversation$Builder;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lco/vine/android/VineWebSocketClient$Conversation;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "typing"

    #getter for: Lco/vine/android/VineWebSocketClient$Conversation$Builder;->typing:Z
    invoke-static {p1}, Lco/vine/android/VineWebSocketClient$Conversation$Builder;->access$100(Lco/vine/android/VineWebSocketClient$Conversation$Builder;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lco/vine/android/VineWebSocketClient$Conversation;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #getter for: Lco/vine/android/VineWebSocketClient$Conversation$Builder;->lastMessageId:J
    invoke-static {p1}, Lco/vine/android/VineWebSocketClient$Conversation$Builder;->access$200(Lco/vine/android/VineWebSocketClient$Conversation$Builder;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_34

    const-string v0, "last_message_id"

    #getter for: Lco/vine/android/VineWebSocketClient$Conversation$Builder;->lastMessageId:J
    invoke-static {p1}, Lco/vine/android/VineWebSocketClient$Conversation$Builder;->access$200(Lco/vine/android/VineWebSocketClient$Conversation$Builder;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lco/vine/android/VineWebSocketClient$Conversation;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/VineWebSocketClient$Conversation$Builder;Lco/vine/android/VineWebSocketClient$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lco/vine/android/VineWebSocketClient$Conversation;-><init>(Lco/vine/android/VineWebSocketClient$Conversation$Builder;)V

    return-void
.end method
