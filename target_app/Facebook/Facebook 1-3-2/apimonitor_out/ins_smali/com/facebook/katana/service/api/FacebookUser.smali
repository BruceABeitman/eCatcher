.class public Lcom/facebook/katana/service/api/FacebookUser;
.super Ljava/lang/Object;
.source "FacebookUser.java"
.implements Landroid/os/Parcelable;
.field static final synthetic $assertionsDisabled:Z = false
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
.field public static final INVALID_ID:J = -0x1L
.field public static final TAG:Ljava/lang/String; = "FacebookUser"
.field private static fields:Ljava/util/List;
.field protected mDisplayName:Ljava/lang/String;
.field protected mFirstName:Ljava/lang/String;
.field protected mImageUrl:Ljava/lang/String;
.field protected mLastName:Ljava/lang/String;
.field protected mUserId:J
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/facebook/katana/service/api/FacebookUser;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_16
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/facebook/katana/service/api/FacebookUser;->$assertionsDisabled:Z
new-instance v0, Lcom/facebook/katana/service/api/FacebookUser$1;
invoke-direct {v0}, Lcom/facebook/katana/service/api/FacebookUser$1;-><init>()V
sput-object v0, Lcom/facebook/katana/service/api/FacebookUser;->CREATOR:Landroid/os/Parcelable$Creator;
const/4 v0, 0x0
sput-object v0, Lcom/facebook/katana/service/api/FacebookUser;->fields:Ljava/util/List;
return-void
:cond_16
const/4 v0, 0x0
goto :goto_9
.end method
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/facebook/katana/service/api/FacebookUser;->mUserId:J
return-void
.end method
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lcom/facebook/katana/service/api/FacebookUser;->mUserId:J
iput-object p3, p0, Lcom/facebook/katana/service/api/FacebookUser;->mFirstName:Ljava/lang/String;
iput-object p4, p0, Lcom/facebook/katana/service/api/FacebookUser;->mLastName:Ljava/lang/String;
iput-object p5, p0, Lcom/facebook/katana/service/api/FacebookUser;->mDisplayName:Ljava/lang/String;
iput-object p6, p0, Lcom/facebook/katana/service/api/FacebookUser;->mImageUrl:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/facebook/katana/service/api/FacebookUser;->mUserId:J
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookUser;->mFirstName:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookUser;->mLastName:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookUser;->mDisplayName:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookUser;->mImageUrl:Ljava/lang/String;
return-void
.end method
.method public static getQueryFields()Ljava/util/List;
.registers 2
sget-object v0, Lcom/facebook/katana/service/api/FacebookUser;->fields:Ljava/util/List;
if-nez v0, :cond_2e
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
sput-object v0, Lcom/facebook/katana/service/api/FacebookUser;->fields:Ljava/util/List;
sget-object v0, Lcom/facebook/katana/service/api/FacebookUser;->fields:Ljava/util/List;
const-string v1, "uid"
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/facebook/katana/service/api/FacebookUser;->fields:Ljava/util/List;
const-string v1, "name"
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/facebook/katana/service/api/FacebookUser;->fields:Ljava/util/List;
const-string v1, "first_name"
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/facebook/katana/service/api/FacebookUser;->fields:Ljava/util/List;
const-string v1, "last_name"
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/facebook/katana/service/api/FacebookUser;->fields:Ljava/util/List;
const-string v1, "pic_square"
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_2e
sget-object v0, Lcom/facebook/katana/service/api/FacebookUser;->fields:Ljava/util/List;
invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public static newInstance(Ljava/lang/Class;Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookUser;
.registers 7
const/4 v2, 0x0
:try_start_1
invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
move-result-object v4
move-object v0, v4
check-cast v0, Lcom/facebook/katana/service/api/FacebookUser;
move-object v2, v0
:try_end_9
.catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_9} :catch_d
.catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_9} :catch_11
iput-object p1, v2, Lcom/facebook/katana/service/api/FacebookUser;->mDisplayName:Ljava/lang/String;
move-object v3, v2
:goto_c
return-object v3
:catch_d
move-exception v4
move-object v1, v4
move-object v3, v2
goto :goto_c
:catch_11
move-exception v4
move-object v1, v4
move-object v3, v2
goto :goto_c
.end method
.method public static parseFromJSON(Ljava/lang/Class;Lorg/codehaus/jackson/JsonParser;)Lcom/facebook/katana/service/api/FacebookUser;
.registers 7
const/4 v4, 0x0
const/4 v2, 0x0
:try_start_2
invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
move-result-object v3
move-object v0, v3
check-cast v0, Lcom/facebook/katana/service/api/FacebookUser;
move-object v2, v0
:try_end_a
.catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_a} :catch_f
.catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_a} :catch_13
invoke-virtual {v2, p1}, Lcom/facebook/katana/service/api/FacebookUser;->parseFromJSON(Lorg/codehaus/jackson/JsonParser;)V
move-object v3, v2
:goto_e
return-object v3
:catch_f
move-exception v3
move-object v1, v3
move-object v3, v4
goto :goto_e
:catch_13
move-exception v3
move-object v1, v3
move-object v3, v4
goto :goto_e
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getDisplayName()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUser;->mDisplayName:Ljava/lang/String;
if-nez v0, :cond_e
const-string v0, "FacebookUser"
const-string v1, "display name was requested, but is null"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, ""
:goto_d
return-object v0
:cond_e
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUser;->mDisplayName:Ljava/lang/String;
goto :goto_d
.end method
.method public getFirstName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUser;->mFirstName:Ljava/lang/String;
return-object v0
.end method
.method public getImageUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUser;->mImageUrl:Ljava/lang/String;
return-object v0
.end method
.method public getLastName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUser;->mLastName:Ljava/lang/String;
return-object v0
.end method
.method public getUserId()J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookUser;->mUserId:J
return-wide v0
.end method
.method protected parseArrayField(Ljava/lang/String;Lorg/codehaus/jackson/JsonParser;)Z
.registers 4
const/4 v0, 0x0
return v0
.end method
.method protected parseFromJSON(Lorg/codehaus/jackson/JsonParser;)V
.registers 7
const/4 v0, 0x0
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v2
sget-boolean v3, Lcom/facebook/katana/service/api/FacebookUser;->$assertionsDisabled:Z
if-nez v3, :cond_13
sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-eq v2, v3, :cond_13
new-instance v3, Ljava/lang/AssertionError;
invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V
throw v3
:cond_13
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v2
:goto_17
sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v2, v3, :cond_1c
return-void
:cond_1c
sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;
if-ne v2, v3, :cond_30
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v1, v3}, Lcom/facebook/katana/service/api/FacebookUser;->parseStringField(Ljava/lang/String;Ljava/lang/String;)Z
:goto_2b
:cond_2b
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v2
goto :goto_17
:cond_30
sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;
if-ne v2, v3, :cond_40
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J
move-result-wide v3
invoke-virtual {p0, v1, v3, v4}, Lcom/facebook/katana/service/api/FacebookUser;->parseLongField(Ljava/lang/String;J)Z
goto :goto_2b
:cond_40
sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v2, v3, :cond_4e
invoke-virtual {p0, v0, p1}, Lcom/facebook/katana/service/api/FacebookUser;->parseObjectField(Ljava/lang/String;Lorg/codehaus/jackson/JsonParser;)Z
move-result v3
if-nez v3, :cond_2b
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V
goto :goto_2b
:cond_4e
sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v2, v3, :cond_5c
invoke-virtual {p0, v0, p1}, Lcom/facebook/katana/service/api/FacebookUser;->parseArrayField(Ljava/lang/String;Lorg/codehaus/jackson/JsonParser;)Z
move-result v3
if-nez v3, :cond_2b
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V
goto :goto_2b
:cond_5c
sget-object v3, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;
if-ne v2, v3, :cond_2b
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
goto :goto_2b
.end method
.method protected parseLongField(Ljava/lang/String;J)Z
.registers 5
const-string v0, "uid"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_10
const-string v0, "id"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_14
:cond_10
iput-wide p2, p0, Lcom/facebook/katana/service/api/FacebookUser;->mUserId:J
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method protected parseObjectField(Ljava/lang/String;Lorg/codehaus/jackson/JsonParser;)Z
.registers 4
const/4 v0, 0x0
return v0
.end method
.method protected parseStringField(Ljava/lang/String;Ljava/lang/String;)Z
.registers 5
const-string v1, "null"
const-string v0, "name"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_20
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_1e
const-string v0, "null"
invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1e
invoke-static {p2}, Lcom/facebook/katana/util/StringUtils;->stripHTMLTags(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookUser;->mDisplayName:Ljava/lang/String;
:goto_1e
:cond_1e
const/4 v0, 0x1
:goto_1f
return v0
:cond_20
const-string v0, "first_name"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3d
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_1e
const-string v0, "null"
invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1e
invoke-static {p2}, Lcom/facebook/katana/util/StringUtils;->stripHTMLTags(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookUser;->mFirstName:Ljava/lang/String;
goto :goto_1e
:cond_3d
const-string v0, "last_name"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5a
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_1e
const-string v0, "null"
invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1e
invoke-static {p2}, Lcom/facebook/katana/util/StringUtils;->stripHTMLTags(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookUser;->mLastName:Ljava/lang/String;
goto :goto_1e
:cond_5a
const-string v0, "pic_square"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_73
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_1e
const-string v0, "null"
invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1e
iput-object p2, p0, Lcom/facebook/katana/service/api/FacebookUser;->mImageUrl:Ljava/lang/String;
goto :goto_1e
:cond_73
const/4 v0, 0x0
goto :goto_1f
.end method
.method public toJSONObject()Lorg/json/JSONObject;
.registers 6
:try_start_0
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
const-string v2, "uid"
iget-wide v3, p0, Lcom/facebook/katana/service/api/FacebookUser;->mUserId:J
invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
const-string v2, "first_name"
iget-object v3, p0, Lcom/facebook/katana/service/api/FacebookUser;->mFirstName:Ljava/lang/String;
invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "last_name"
iget-object v3, p0, Lcom/facebook/katana/service/api/FacebookUser;->mLastName:Ljava/lang/String;
invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "name"
iget-object v3, p0, Lcom/facebook/katana/service/api/FacebookUser;->mDisplayName:Ljava/lang/String;
invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "pic_square"
iget-object v3, p0, Lcom/facebook/katana/service/api/FacebookUser;->mImageUrl:Ljava/lang/String;
invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_28
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_28} :catch_2a
move-object v2, v1
:goto_29
return-object v2
:catch_2a
move-exception v2
move-object v0, v2
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
goto :goto_29
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 5
iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookUser;->mUserId:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUser;->mFirstName:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUser;->mLastName:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUser;->mDisplayName:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookUser;->mImageUrl:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
return-void
.end method