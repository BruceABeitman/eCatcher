.class public Lcom/facebook/katana/service/api/FacebookPost$Attachment;
.super Ljava/lang/Object;
.source "FacebookPost.java"
.field private final mCaption:Ljava/lang/String;
.field private final mDescription:Ljava/lang/String;
.field private final mHref:Ljava/lang/String;
.field private final mMediaItems:Ljava/util/List;
.field private final mName:Ljava/lang/String;
.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
.registers 12
const/4 v9, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v1, 0x0
const/4 v5, 0x0
const/4 v0, 0x0
const/4 v2, 0x0
const/4 v4, 0x0
new-instance v7, Ljava/util/ArrayList;
invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
iput-object v7, p0, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->mMediaItems:Ljava/util/List;
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v6
:goto_14
sget-object v7, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v6, v7, :cond_3d
if-eqz v5, :cond_b7
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v7
if-lez v7, :cond_b7
iput-object v5, p0, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->mName:Ljava/lang/String;
:goto_22
if-eqz v0, :cond_bb
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v7
if-lez v7, :cond_bb
iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->mCaption:Ljava/lang/String;
:goto_2c
iput-object v4, p0, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->mHref:Ljava/lang/String;
if-eqz v2, :cond_bf
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v7
if-lez v7, :cond_bf
invoke-static {v2}, Lcom/facebook/katana/util/StringUtils;->stripHTMLTags(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
iput-object v7, p0, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->mDescription:Ljava/lang/String;
:goto_3c
return-void
:cond_3d
sget-object v7, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;
if-ne v6, v7, :cond_7d
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v3
const-string v7, "name"
invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_56
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v5
:cond_51
:goto_51
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v6
goto :goto_14
:cond_56
const-string v7, "caption"
invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_63
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
goto :goto_51
:cond_63
const-string v7, "description"
invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_70
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v2
goto :goto_51
:cond_70
const-string v7, "href"
invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_51
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v4
goto :goto_51
:cond_7d
sget-object v7, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v6, v7, :cond_a6
if-eqz v1, :cond_51
const-string v7, "media"
invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_a2
:goto_8b
sget-object v7, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-eq v6, v7, :cond_51
sget-object v7, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v6, v7, :cond_9d
iget-object v7, p0, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->mMediaItems:Ljava/util/List;
new-instance v8, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;
invoke-direct {v8, p1}, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;-><init>(Lorg/codehaus/jackson/JsonParser;)V
invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_9d
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v6
goto :goto_8b
:cond_a2
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V
goto :goto_51
:cond_a6
sget-object v7, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v6, v7, :cond_ae
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V
goto :goto_51
:cond_ae
sget-object v7, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;
if-ne v6, v7, :cond_51
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v1
goto :goto_51
:cond_b7
iput-object v9, p0, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->mName:Ljava/lang/String;
goto/16 :goto_22
:cond_bb
iput-object v9, p0, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->mCaption:Ljava/lang/String;
goto/16 :goto_2c
:cond_bf
iput-object v9, p0, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->mDescription:Ljava/lang/String;
goto/16 :goto_3c
.end method
.method public getCaption()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->mCaption:Ljava/lang/String;
return-object v0
.end method
.method public getDescription()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->mDescription:Ljava/lang/String;
return-object v0
.end method
.method public getHref()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->mHref:Ljava/lang/String;
return-object v0
.end method
.method public getMediaItems()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->mMediaItems:Ljava/util/List;
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->mName:Ljava/lang/String;
return-object v0
.end method