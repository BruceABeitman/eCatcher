.class public Lcom/facebook/katana/service/api/FacebookContactInfo;
.super Ljava/lang/Object;
.source "FacebookContactInfo.java"
.field private final mCellPhone:Ljava/lang/String;
.field private final mEmail:Ljava/lang/String;
.field private final mOtherPhone:Ljava/lang/String;
.field private final mUserId:J
.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
.registers 11
const/4 v8, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v5, -0x1
const/4 v1, 0x0
const/4 v0, 0x0
const/4 v3, 0x0
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v4
:goto_d
sget-object v7, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v4, v7, :cond_35
iput-wide v5, p0, Lcom/facebook/katana/service/api/FacebookContactInfo;->mUserId:J
if-eqz v1, :cond_7f
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v7
if-lez v7, :cond_7d
move-object v7, v1
:goto_1c
iput-object v7, p0, Lcom/facebook/katana/service/api/FacebookContactInfo;->mEmail:Ljava/lang/String;
if-eqz v0, :cond_83
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v7
if-lez v7, :cond_81
move-object v7, v0
:goto_27
iput-object v7, p0, Lcom/facebook/katana/service/api/FacebookContactInfo;->mCellPhone:Ljava/lang/String;
if-eqz v3, :cond_87
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v7
if-lez v7, :cond_85
move-object v7, v3
:goto_32
iput-object v7, p0, Lcom/facebook/katana/service/api/FacebookContactInfo;->mOtherPhone:Ljava/lang/String;
return-void
:cond_35
sget-object v7, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;
if-ne v4, v7, :cond_68
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v2
const-string v7, "cell"
invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_4e
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
:cond_49
:goto_49
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v4
goto :goto_d
:cond_4e
const-string v7, "phone"
invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_5b
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
goto :goto_49
:cond_5b
const-string v7, "email"
invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_49
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v1
goto :goto_49
:cond_68
sget-object v7, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;
if-ne v4, v7, :cond_49
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v2
const-string v7, "uid"
invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_49
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J
move-result-wide v5
goto :goto_49
:cond_7d
move-object v7, v8
goto :goto_1c
:cond_7f
move-object v7, v8
goto :goto_1c
:cond_81
move-object v7, v8
goto :goto_27
:cond_83
move-object v7, v8
goto :goto_27
:cond_85
move-object v7, v8
goto :goto_32
:cond_87
move-object v7, v8
goto :goto_32
.end method
.method public getCellPhone()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookContactInfo;->mCellPhone:Ljava/lang/String;
return-object v0
.end method
.method public getEmail()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookContactInfo;->mEmail:Ljava/lang/String;
return-object v0
.end method
.method public getOtherPhone()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookContactInfo;->mOtherPhone:Ljava/lang/String;
return-object v0
.end method
.method public getUserId()J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookContactInfo;->mUserId:J
return-wide v0
.end method