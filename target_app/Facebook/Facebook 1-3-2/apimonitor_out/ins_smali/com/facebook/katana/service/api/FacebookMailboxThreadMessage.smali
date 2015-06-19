.class public Lcom/facebook/katana/service/api/FacebookMailboxThreadMessage;
.super Ljava/lang/Object;
.source "FacebookMailboxThreadMessage.java"
.field private final mAuthorUserId:J
.field private final mBody:Ljava/lang/String;
.field private final mMessageId:J
.field private final mThreadId:J
.field private final mTimeSent:J
.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
.registers 4
const-wide/16 v0, -0x1
invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/service/api/FacebookMailboxThreadMessage;-><init>(Lorg/codehaus/jackson/JsonParser;J)V
return-void
.end method
.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;J)V
.registers 16
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v4, -0x1
const-wide/16 v0, -0x1
const-wide/16 v8, -0x1
const/4 v2, 0x0
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v7
:goto_e
sget-object v11, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v7, v11, :cond_1d
iput-wide p2, p0, Lcom/facebook/katana/service/api/FacebookMailboxThreadMessage;->mThreadId:J
iput-wide v4, p0, Lcom/facebook/katana/service/api/FacebookMailboxThreadMessage;->mMessageId:J
iput-wide v0, p0, Lcom/facebook/katana/service/api/FacebookMailboxThreadMessage;->mAuthorUserId:J
iput-wide v8, p0, Lcom/facebook/katana/service/api/FacebookMailboxThreadMessage;->mTimeSent:J
iput-object v2, p0, Lcom/facebook/katana/service/api/FacebookMailboxThreadMessage;->mBody:Ljava/lang/String;
return-void
:cond_1d
sget-object v11, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;
if-ne v7, v11, :cond_64
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v3
const-string v11, "body"
invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_36
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v2
:goto_31
:cond_31
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v7
goto :goto_e
:cond_36
const-string v11, "message_id"
invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_53
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v10
const/16 v11, 0x5f
invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I
move-result v11
add-int/lit8 v11, v11, 0x1
invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v11
invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v4
goto :goto_31
:cond_53
const-string v11, "thread_id"
invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_31
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v11
invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide p2
goto :goto_31
:cond_64
sget-object v11, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;
if-ne v7, v11, :cond_93
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v3
const-string v11, "thread_id"
invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_79
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J
move-result-wide p2
goto :goto_31
:cond_79
const-string v11, "author_id"
invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_86
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J
move-result-wide v0
goto :goto_31
:cond_86
const-string v11, "created_time"
invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_31
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J
move-result-wide v8
goto :goto_31
:cond_93
sget-object v11, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v7, v11, :cond_31
const/4 v6, 0x1
:cond_98
:goto_98
if-lez v6, :cond_31
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v7
sget-object v11, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v7, v11, :cond_a5
add-int/lit8 v6, v6, 0x1
goto :goto_98
:cond_a5
sget-object v11, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v7, v11, :cond_98
add-int/lit8 v6, v6, -0x1
goto :goto_98
.end method
.method public getAuthorId()J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookMailboxThreadMessage;->mAuthorUserId:J
return-wide v0
.end method
.method public getBody()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookMailboxThreadMessage;->mBody:Ljava/lang/String;
return-object v0
.end method
.method public getMessageId()J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookMailboxThreadMessage;->mMessageId:J
return-wide v0
.end method
.method public getThreadId()J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookMailboxThreadMessage;->mThreadId:J
return-wide v0
.end method
.method public getTimeSent()J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookMailboxThreadMessage;->mTimeSent:J
return-wide v0
.end method