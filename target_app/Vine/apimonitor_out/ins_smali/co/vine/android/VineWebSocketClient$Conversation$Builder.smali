.class public Lco/vine/android/VineWebSocketClient$Conversation$Builder;
.super Ljava/lang/Object;
.source "VineWebSocketClient.java"
.field private connected:Z
.field private lastMessageId:J
.field private typing:Z
.method public constructor <init>()V
.registers 3
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lco/vine/android/VineWebSocketClient$Conversation$Builder;->connected:Z
iput-boolean v0, p0, Lco/vine/android/VineWebSocketClient$Conversation$Builder;->typing:Z
const-wide/16 v0, 0x0
iput-wide v0, p0, Lco/vine/android/VineWebSocketClient$Conversation$Builder;->lastMessageId:J
return-void
.end method
.method static synthetic access$000(Lco/vine/android/VineWebSocketClient$Conversation$Builder;)Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/VineWebSocketClient$Conversation$Builder;->connected:Z
return v0
.end method
.method static synthetic access$100(Lco/vine/android/VineWebSocketClient$Conversation$Builder;)Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/VineWebSocketClient$Conversation$Builder;->typing:Z
return v0
.end method
.method static synthetic access$200(Lco/vine/android/VineWebSocketClient$Conversation$Builder;)J
.registers 3
iget-wide v0, p0, Lco/vine/android/VineWebSocketClient$Conversation$Builder;->lastMessageId:J
return-wide v0
.end method
.method public build()Lco/vine/android/VineWebSocketClient$Conversation;
.registers 3
new-instance v0, Lco/vine/android/VineWebSocketClient$Conversation;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lco/vine/android/VineWebSocketClient$Conversation;-><init>(Lco/vine/android/VineWebSocketClient$Conversation$Builder;Lco/vine/android/VineWebSocketClient$1;)V
return-object v0
.end method
.method public setConnected()Lco/vine/android/VineWebSocketClient$Conversation$Builder;
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/VineWebSocketClient$Conversation$Builder;->connected:Z
return-object p0
.end method
.method public setLastMessageId(J)Lco/vine/android/VineWebSocketClient$Conversation$Builder;
.registers 3
iput-wide p1, p0, Lco/vine/android/VineWebSocketClient$Conversation$Builder;->lastMessageId:J
return-object p0
.end method
.method public setTyping(Z)Lco/vine/android/VineWebSocketClient$Conversation$Builder;
.registers 2
iput-boolean p1, p0, Lco/vine/android/VineWebSocketClient$Conversation$Builder;->typing:Z
return-object p0
.end method