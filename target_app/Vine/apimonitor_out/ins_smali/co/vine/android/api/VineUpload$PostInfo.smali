.class public Lco/vine/android/api/VineUpload$PostInfo;
.super Ljava/lang/Object;
.source "VineUpload.java"
.field public final caption:Ljava/lang/String;
.field public channelId:J
.field public created:J
.field public final entities:Ljava/util/ArrayList;
.field public final maxLoops:I
.field public final message:Ljava/lang/String;
.field public final postId:J
.field public postToFacebook:Z
.field public postToTwitter:Z
.field public recipients:Ljava/util/ArrayList;
.field public final sharedPostThumbUrl:Ljava/lang/String;
.field public final sharedPostVideoUrl:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 5
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_8
const-string p1, ""
:cond_8
iput-object p1, p0, Lco/vine/android/api/VineUpload$PostInfo;->caption:Ljava/lang/String;
iput-object v2, p0, Lco/vine/android/api/VineUpload$PostInfo;->entities:Ljava/util/ArrayList;
const/4 v0, 0x0
iput v0, p0, Lco/vine/android/api/VineUpload$PostInfo;->maxLoops:I
const-wide/16 v0, 0x0
iput-wide v0, p0, Lco/vine/android/api/VineUpload$PostInfo;->postId:J
iput-object v2, p0, Lco/vine/android/api/VineUpload$PostInfo;->message:Ljava/lang/String;
iput-object v2, p0, Lco/vine/android/api/VineUpload$PostInfo;->sharedPostThumbUrl:Ljava/lang/String;
iput-object v2, p0, Lco/vine/android/api/VineUpload$PostInfo;->sharedPostVideoUrl:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;ZZJLjava/util/ArrayList;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;I)V
.registers 16
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_7
const-string p1, ""
:cond_7
iput-object p1, p0, Lco/vine/android/api/VineUpload$PostInfo;->caption:Ljava/lang/String;
iput-boolean p2, p0, Lco/vine/android/api/VineUpload$PostInfo;->postToTwitter:Z
iput-boolean p3, p0, Lco/vine/android/api/VineUpload$PostInfo;->postToFacebook:Z
iput-object p6, p0, Lco/vine/android/api/VineUpload$PostInfo;->entities:Ljava/util/ArrayList;
iput-wide p4, p0, Lco/vine/android/api/VineUpload$PostInfo;->channelId:J
iput-wide p12, p0, Lco/vine/android/api/VineUpload$PostInfo;->created:J
iput-object p7, p0, Lco/vine/android/api/VineUpload$PostInfo;->message:Ljava/lang/String;
iput-wide p8, p0, Lco/vine/android/api/VineUpload$PostInfo;->postId:J
iput-object p14, p0, Lco/vine/android/api/VineUpload$PostInfo;->recipients:Ljava/util/ArrayList;
iput p15, p0, Lco/vine/android/api/VineUpload$PostInfo;->maxLoops:I
iput-object p10, p0, Lco/vine/android/api/VineUpload$PostInfo;->sharedPostVideoUrl:Ljava/lang/String;
iput-object p11, p0, Lco/vine/android/api/VineUpload$PostInfo;->sharedPostThumbUrl:Ljava/lang/String;
return-void
.end method
.method public static entitiesToMaps(Ljava/util/ArrayList;)Ljava/util/ArrayList;
.registers 5
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_1d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/api/VineEntity;
invoke-virtual {v0}, Lco/vine/android/api/VineEntity;->toMap()Ljava/util/HashMap;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_9
:cond_1d
return-object v2
.end method
.method public static fromJsonString(Ljava/lang/String;)Lco/vine/android/api/VineUpload$PostInfo;
.registers 5
:try_start_0
invoke-static {p0}, Lco/vine/android/api/VineParsers;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v1
invoke-static {v1}, Lco/vine/android/api/VineUploadParsers;->parsePostInfo(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineUpload$PostInfo;
:try_end_7
.catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_7} :catch_9
.catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_7} :catch_12
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_1b
move-result-object v2
return-object v2
:catch_9
move-exception v0
new-instance v2, Ljava/lang/RuntimeException;
const-string v3, "This should never happen."
invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
:catch_12
move-exception v0
new-instance v2, Ljava/lang/RuntimeException;
const-string v3, "This should never happen."
invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
:catch_1b
move-exception v0
new-instance v2, Ljava/lang/RuntimeException;
const-string v3, "This should never happen."
invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
.end method
.method public static recipientsToMaps(Ljava/util/ArrayList;)Ljava/util/ArrayList;
.registers 5
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_9
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_1d
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/api/VineRecipient;
invoke-virtual {v2}, Lco/vine/android/api/VineRecipient;->toMap()Ljava/util/HashMap;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_9
:cond_1d
return-object v1
.end method
.method private toJson()Lcom/fasterxml/jackson/databind/JsonNode;
.registers 6
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
const-string v2, "description"
iget-object v3, p0, Lco/vine/android/api/VineUpload$PostInfo;->caption:Ljava/lang/String;
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "postToTwitter"
iget-boolean v3, p0, Lco/vine/android/api/VineUpload$PostInfo;->postToTwitter:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "postToFacebook"
iget-boolean v3, p0, Lco/vine/android/api/VineUpload$PostInfo;->postToFacebook:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "channelId"
iget-wide v3, p0, Lco/vine/android/api/VineUpload$PostInfo;->channelId:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "maxLoops"
iget v3, p0, Lco/vine/android/api/VineUpload$PostInfo;->maxLoops:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v2, p0, Lco/vine/android/api/VineUpload$PostInfo;->sharedPostVideoUrl:Ljava/lang/String;
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_47
const-string v2, "videoUrl"
iget-object v3, p0, Lco/vine/android/api/VineUpload$PostInfo;->sharedPostVideoUrl:Ljava/lang/String;
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_47
iget-object v2, p0, Lco/vine/android/api/VineUpload$PostInfo;->sharedPostThumbUrl:Ljava/lang/String;
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_56
const-string v2, "thumbUrl"
iget-object v3, p0, Lco/vine/android/api/VineUpload$PostInfo;->sharedPostThumbUrl:Ljava/lang/String;
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_56
iget-object v2, p0, Lco/vine/android/api/VineUpload$PostInfo;->entities:Ljava/util/ArrayList;
if-eqz v2, :cond_6d
iget-object v2, p0, Lco/vine/android/api/VineUpload$PostInfo;->entities:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
move-result v2
if-nez v2, :cond_6d
const-string v2, "entities"
iget-object v3, p0, Lco/vine/android/api/VineUpload$PostInfo;->entities:Ljava/util/ArrayList;
invoke-static {v3}, Lco/vine/android/api/VineUpload$PostInfo;->entitiesToMaps(Ljava/util/ArrayList;)Ljava/util/ArrayList;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_6d
iget-object v2, p0, Lco/vine/android/api/VineUpload$PostInfo;->recipients:Ljava/util/ArrayList;
if-eqz v2, :cond_84
iget-object v2, p0, Lco/vine/android/api/VineUpload$PostInfo;->recipients:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
move-result v2
if-nez v2, :cond_84
const-string v2, "recipients"
iget-object v3, p0, Lco/vine/android/api/VineUpload$PostInfo;->recipients:Ljava/util/ArrayList;
invoke-static {v3}, Lco/vine/android/api/VineUpload$PostInfo;->recipientsToMaps(Ljava/util/ArrayList;)Ljava/util/ArrayList;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_84
const-string v2, "message"
iget-object v3, p0, Lco/vine/android/api/VineUpload$PostInfo;->message:Ljava/lang/String;
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "postId"
iget-wide v3, p0, Lco/vine/android/api/VineUpload$PostInfo;->postId:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "created"
iget-wide v3, p0, Lco/vine/android/api/VineUpload$PostInfo;->created:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v2, Lcom/fasterxml/jackson/databind/ObjectMapper;
invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V
invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lco/vine/android/api/VineUpload$PostInfo;->toJson()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method