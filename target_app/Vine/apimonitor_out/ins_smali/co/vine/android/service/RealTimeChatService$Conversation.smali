.class  Lco/vine/android/service/RealTimeChatService$Conversation;
.super Ljava/util/HashMap;
.source "RealTimeChatService.java"
.method private constructor <init>(Lco/vine/android/service/RealTimeChatService$Conversation$Builder;)V
.registers 6
invoke-direct {p0}, Ljava/util/HashMap;-><init>()V
const-string v0, "connected"
#getter for: Lco/vine/android/service/RealTimeChatService$Conversation$Builder;->connected:Z
invoke-static {p1}, Lco/vine/android/service/RealTimeChatService$Conversation$Builder;->access$700(Lco/vine/android/service/RealTimeChatService$Conversation$Builder;)Z
move-result v1
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lco/vine/android/service/RealTimeChatService$Conversation;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "typing"
#getter for: Lco/vine/android/service/RealTimeChatService$Conversation$Builder;->typing:Z
invoke-static {p1}, Lco/vine/android/service/RealTimeChatService$Conversation$Builder;->access$800(Lco/vine/android/service/RealTimeChatService$Conversation$Builder;)Z
move-result v1
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lco/vine/android/service/RealTimeChatService$Conversation;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
#getter for: Lco/vine/android/service/RealTimeChatService$Conversation$Builder;->lastMessageId:J
invoke-static {p1}, Lco/vine/android/service/RealTimeChatService$Conversation$Builder;->access$900(Lco/vine/android/service/RealTimeChatService$Conversation$Builder;)J
move-result-wide v0
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_34
const-string v0, "last_message_id"
#getter for: Lco/vine/android/service/RealTimeChatService$Conversation$Builder;->lastMessageId:J
invoke-static {p1}, Lco/vine/android/service/RealTimeChatService$Conversation$Builder;->access$900(Lco/vine/android/service/RealTimeChatService$Conversation$Builder;)J
move-result-wide v1
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lco/vine/android/service/RealTimeChatService$Conversation;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_34
return-void
.end method
.method synthetic constructor <init>(Lco/vine/android/service/RealTimeChatService$Conversation$Builder;Lco/vine/android/service/RealTimeChatService$1;)V
.registers 3
invoke-direct {p0, p1}, Lco/vine/android/service/RealTimeChatService$Conversation;-><init>(Lco/vine/android/service/RealTimeChatService$Conversation$Builder;)V
return-void
.end method