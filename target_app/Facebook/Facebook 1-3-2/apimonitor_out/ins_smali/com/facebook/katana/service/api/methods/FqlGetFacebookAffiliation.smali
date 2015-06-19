.class public Lcom/facebook/katana/service/api/methods/FqlGetFacebookAffiliation;
.super Lcom/facebook/katana/service/api/methods/FqlQuery;
.source "FqlGetFacebookAffiliation.java"
.field static final synthetic $assertionsDisabled:Z = false
.field private static final FACEBOOK_NETWORK_ID:Ljava/lang/String; = "50431648"
.field private static final TAG:Ljava/lang/String; = "FqlGetFacebookAffiliation"
.field private final mContext:Landroid/content/Context;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/facebook/katana/service/api/methods/FqlGetFacebookAffiliation;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/facebook/katana/service/api/methods/FqlGetFacebookAffiliation;->$assertionsDisabled:Z
return-void
:cond_c
const/4 v0, 0x0
goto :goto_9
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;J)V
.registers 8
invoke-static {p5, p6}, Lcom/facebook/katana/service/api/methods/FqlGetFacebookAffiliation;->buildQuery(J)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p2, p3, v0, p4}, Lcom/facebook/katana/service/api/methods/FqlQuery;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/FqlGetFacebookAffiliation;->mContext:Landroid/content/Context;
return-void
.end method
.method private static buildQuery(J)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "SELECT affiliations FROM user WHERE uid="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method private static parseAffiliationsJSON(Lorg/codehaus/jackson/JsonParser;)Z
.registers 4
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v0
sget-boolean v1, Lcom/facebook/katana/service/api/methods/FqlGetFacebookAffiliation;->$assertionsDisabled:Z
if-nez v1, :cond_12
sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-eq v0, v1, :cond_12
new-instance v1, Ljava/lang/AssertionError;
invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V
throw v1
:cond_12
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v0
:goto_16
sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v0, v1, :cond_1c
const/4 v1, 0x0
:goto_1b
return v1
:cond_1c
sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v0, v1, :cond_5f
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v0
:goto_24
sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v0, v1, :cond_2d
:cond_28
:goto_28
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v0
goto :goto_16
:cond_2d
sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;
if-eq v0, v1, :cond_35
sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;
if-ne v0, v1, :cond_4f
:cond_35
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v1
const-string v2, "nid"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_4f
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v1
const-string v2, "50431648"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_4f
const/4 v1, 0x1
goto :goto_1b
:cond_4f
sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-eq v0, v1, :cond_57
sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v0, v1, :cond_5a
:cond_57
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V
:cond_5a
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v0
goto :goto_24
:cond_5f
sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v0, v1, :cond_28
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V
goto :goto_28
.end method
.method private static parseUserArrayJSON(Lorg/codehaus/jackson/JsonParser;)Z
.registers 4
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v1
sget-boolean v2, Lcom/facebook/katana/service/api/methods/FqlGetFacebookAffiliation;->$assertionsDisabled:Z
if-nez v2, :cond_23
sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-eq v1, v2, :cond_23
new-instance v2, Ljava/lang/AssertionError;
invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V
throw v2
:cond_12
sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v1, v2, :cond_1f
const/4 v0, 0x0
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v1
:goto_1b
sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v1, v2, :cond_29
:cond_1f
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v1
:cond_23
sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v1, v2, :cond_12
const/4 v2, 0x0
:goto_28
return v2
:cond_29
sget-object v2, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;
if-ne v1, v2, :cond_36
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
:cond_31
invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v1
goto :goto_1b
:cond_36
sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v1, v2, :cond_31
if-eqz v0, :cond_31
const-string v2, "affiliations"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_31
invoke-static {p0}, Lcom/facebook/katana/service/api/methods/FqlGetFacebookAffiliation;->parseAffiliationsJSON(Lorg/codehaus/jackson/JsonParser;)Z
move-result v2
goto :goto_28
.end method
.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;)V
.registers 5
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v1
const/4 v0, 0x0
sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v1, v2, :cond_13
invoke-static {p1}, Lcom/facebook/katana/service/api/methods/FqlGetFacebookAffiliation;->parseUserArrayJSON(Lorg/codehaus/jackson/JsonParser;)Z
move-result v0
:cond_d
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/FqlGetFacebookAffiliation;->mContext:Landroid/content/Context;
invoke-static {v2, v0}, Lcom/facebook/katana/service/api/FacebookAffiliation;->setIsEmployee(Landroid/content/Context;Z)V
return-void
:cond_13
sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v1, v2, :cond_d
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v1
sget-boolean v2, Lcom/facebook/katana/service/api/methods/FqlGetFacebookAffiliation;->$assertionsDisabled:Z
if-nez v2, :cond_d
sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-eq v1, v2, :cond_d
new-instance v2, Ljava/lang/AssertionError;
invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V
throw v2
.end method