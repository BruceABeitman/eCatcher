.class public Lcom/facebook/katana/service/api/FacebookPost$Comment;
.super Ljava/lang/Object;
.source "FacebookPost.java"
.field private final mFromId:J
.field private final mId:Ljava/lang/String;
.field private mProfile:Lcom/facebook/katana/service/api/FacebookPost$Profile;
.field private final mText:Ljava/lang/String;
.field private final mTime:J
.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/facebook/katana/service/api/FacebookPost$Comment;->mId:Ljava/lang/String;
iput-wide p2, p0, Lcom/facebook/katana/service/api/FacebookPost$Comment;->mFromId:J
iput-wide p4, p0, Lcom/facebook/katana/service/api/FacebookPost$Comment;->mTime:J
iput-object p6, p0, Lcom/facebook/katana/service/api/FacebookPost$Comment;->mText:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
.registers 11
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v3, 0x0
const-wide/16 v1, -0x1
const-wide/16 v6, 0x0
const/4 v5, 0x0
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v4
:goto_d
sget-object v8, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v4, v8, :cond_1a
iput-object v3, p0, Lcom/facebook/katana/service/api/FacebookPost$Comment;->mId:Ljava/lang/String;
iput-wide v1, p0, Lcom/facebook/katana/service/api/FacebookPost$Comment;->mFromId:J
iput-wide v6, p0, Lcom/facebook/katana/service/api/FacebookPost$Comment;->mTime:J
iput-object v5, p0, Lcom/facebook/katana/service/api/FacebookPost$Comment;->mText:Ljava/lang/String;
return-void
:cond_1a
sget-object v8, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;
if-ne v4, v8, :cond_40
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v0
const-string v8, "id"
invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_33
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
:goto_2e
:cond_2e
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v4
goto :goto_d
:cond_33
const-string v8, "text"
invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_2e
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v5
goto :goto_2e
:cond_40
sget-object v8, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;
if-ne v4, v8, :cond_2e
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v0
const-string v8, "fromid"
invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_55
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J
move-result-wide v1
goto :goto_2e
:cond_55
const-string v8, "time"
invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_2e
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J
move-result-wide v6
goto :goto_2e
.end method
.method public getFromUserId()J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Comment;->mFromId:J
return-wide v0
.end method
.method public getId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Comment;->mId:Ljava/lang/String;
return-object v0
.end method
.method public getProfile()Lcom/facebook/katana/service/api/FacebookPost$Profile;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Comment;->mProfile:Lcom/facebook/katana/service/api/FacebookPost$Profile;
return-object v0
.end method
.method public getText()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Comment;->mText:Ljava/lang/String;
return-object v0
.end method
.method public getTime()J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Comment;->mTime:J
return-wide v0
.end method
.method public setProfile(Lcom/facebook/katana/service/api/FacebookPost$Profile;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/service/api/FacebookPost$Comment;->mProfile:Lcom/facebook/katana/service/api/FacebookPost$Profile;
return-void
.end method