.class public Lcom/facebook/katana/service/api/FacebookPost$Likes;
.super Ljava/lang/Object;
.source "FacebookPost.java"
.field private final mCanLike:Z
.field private mCount:I
.field private final mFriendUserId:J
.field private final mSampleUserId:J
.field private mUserLikes:Z
.method public constructor <init>()V
.registers 5
const-wide/16 v2, -0x1
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v1, p0, Lcom/facebook/katana/service/api/FacebookPost$Likes;->mUserLikes:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Likes;->mCanLike:Z
iput v1, p0, Lcom/facebook/katana/service/api/FacebookPost$Likes;->mCount:I
iput-wide v2, p0, Lcom/facebook/katana/service/api/FacebookPost$Likes;->mSampleUserId:J
iput-wide v2, p0, Lcom/facebook/katana/service/api/FacebookPost$Likes;->mFriendUserId:J
return-void
.end method
.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
.registers 15
const-string v12, "user_likes"
const-string v11, "can_like"
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v2, 0x0
const/4 v9, 0x0
const/4 v0, 0x1
const/4 v1, 0x0
const-wide/16 v6, -0x1
const-wide/16 v4, -0x1
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v8
:goto_13
sget-object v10, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v8, v10, :cond_22
iput-boolean v9, p0, Lcom/facebook/katana/service/api/FacebookPost$Likes;->mUserLikes:Z
iput-boolean v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Likes;->mCanLike:Z
iput v2, p0, Lcom/facebook/katana/service/api/FacebookPost$Likes;->mCount:I
iput-wide v6, p0, Lcom/facebook/katana/service/api/FacebookPost$Likes;->mSampleUserId:J
iput-wide v4, p0, Lcom/facebook/katana/service/api/FacebookPost$Likes;->mFriendUserId:J
return-void
:cond_22
sget-object v10, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;
if-ne v8, v10, :cond_42
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v3
const-string v10, "user_likes"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v10
if-eqz v10, :cond_38
const/4 v9, 0x0
:goto_33
:cond_33
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v8
goto :goto_13
:cond_38
const-string v10, "can_like"
invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v10
if-eqz v10, :cond_33
const/4 v0, 0x0
goto :goto_33
:cond_42
sget-object v10, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;
if-ne v8, v10, :cond_5e
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v3
const-string v10, "user_likes"
invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v10
if-eqz v10, :cond_54
const/4 v9, 0x1
goto :goto_33
:cond_54
const-string v10, "can_like"
invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v10
if-eqz v10, :cond_33
const/4 v0, 0x1
goto :goto_33
:cond_5e
sget-object v10, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;
if-ne v8, v10, :cond_75
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_33
const-string v10, "count"
invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v10
if-eqz v10, :cond_33
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I
move-result v2
goto :goto_33
:cond_75
sget-object v10, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v8, v10, :cond_b6
if-nez v1, :cond_7f
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V
goto :goto_33
:cond_7f
const-string v10, "sample"
invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v10
if-eqz v10, :cond_98
:goto_87
sget-object v10, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-eq v8, v10, :cond_33
sget-object v10, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;
if-ne v8, v10, :cond_93
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J
move-result-wide v6
:cond_93
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v8
goto :goto_87
:cond_98
const-string v10, "friends"
invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v10
if-eqz v10, :cond_b1
:goto_a0
sget-object v10, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-eq v8, v10, :cond_33
sget-object v10, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;
if-ne v8, v10, :cond_ac
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J
move-result-wide v4
:cond_ac
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v8
goto :goto_a0
:cond_b1
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V
goto/16 :goto_33
:cond_b6
sget-object v10, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v8, v10, :cond_bf
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V
goto/16 :goto_33
:cond_bf
sget-object v10, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;
if-ne v8, v10, :cond_33
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v1
goto/16 :goto_33
.end method
.method public canLike()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Likes;->mCanLike:Z
return v0
.end method
.method public doesUserLike()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Likes;->mUserLikes:Z
return v0
.end method
.method public getCount()I
.registers 2
iget v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Likes;->mCount:I
return v0
.end method
.method public getFriendUserId()J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Likes;->mFriendUserId:J
return-wide v0
.end method
.method public getSampleUserId()J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Likes;->mSampleUserId:J
return-wide v0
.end method
.method public setUserLikes(Z)V
.registers 4
iget-boolean v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Likes;->mUserLikes:Z
if-eq v0, p1, :cond_e
if-eqz p1, :cond_f
iget v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Likes;->mCount:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Likes;->mCount:I
:goto_c
iput-boolean p1, p0, Lcom/facebook/katana/service/api/FacebookPost$Likes;->mUserLikes:Z
:cond_e
return-void
:cond_f
iget v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Likes;->mCount:I
const/4 v1, 0x1
sub-int/2addr v0, v1
iput v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Likes;->mCount:I
goto :goto_c
.end method