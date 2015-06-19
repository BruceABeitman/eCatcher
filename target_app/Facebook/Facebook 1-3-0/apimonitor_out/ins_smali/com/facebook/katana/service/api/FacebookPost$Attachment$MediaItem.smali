.class public Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;
.super Ljava/lang/Object;
.source "FacebookPost.java"
.field public static final TYPE_FLASH:Ljava/lang/String; = "flash"
.field public static final TYPE_LINK:Ljava/lang/String; = "link"
.field public static final TYPE_MP3:Ljava/lang/String; = "mp3"
.field public static final TYPE_PHOTO:Ljava/lang/String; = "photo"
.field public static final TYPE_VIDEO:Ljava/lang/String; = "video"
.field private final mHref:Ljava/lang/String;
.field private final mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;
.field private final mSrc:Ljava/lang/String;
.field private final mType:Ljava/lang/String;
.field private final mVideo:Lcom/facebook/katana/service/api/FacebookVideo;
.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
.registers 11
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
const/4 v2, 0x0
const/4 v6, 0x0
const/4 v4, 0x0
const/4 v3, 0x0
const/4 v7, 0x0
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v5
:goto_d
sget-object v8, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v5, v8, :cond_24
iput-object v2, p0, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->mHref:Ljava/lang/String;
iput-object v6, p0, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->mType:Ljava/lang/String;
if-eqz v4, :cond_86
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v8
if-lez v8, :cond_86
iput-object v4, p0, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->mSrc:Ljava/lang/String;
:goto_1f
iput-object v3, p0, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;
iput-object v7, p0, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->mVideo:Lcom/facebook/katana/service/api/FacebookVideo;
return-void
:cond_24
sget-object v8, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;
if-ne v5, v8, :cond_57
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v1
const-string v8, "href"
invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_3d
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v2
:cond_38
:goto_38
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v5
goto :goto_d
:cond_3d
const-string v8, "type"
invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_4a
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v6
goto :goto_38
:cond_4a
const-string v8, "src"
invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_38
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v4
goto :goto_38
:cond_57
sget-object v8, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v5, v8, :cond_7d
if-eqz v0, :cond_38
const-string v8, "photo"
invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_6b
new-instance v3, Lcom/facebook/katana/service/api/FacebookPhoto;
invoke-direct {v3, p1}, Lcom/facebook/katana/service/api/FacebookPhoto;-><init>(Lorg/codehaus/jackson/JsonParser;)V
goto :goto_38
:cond_6b
const-string v8, "video"
invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_79
new-instance v7, Lcom/facebook/katana/service/api/FacebookVideo;
invoke-direct {v7, p1}, Lcom/facebook/katana/service/api/FacebookVideo;-><init>(Lorg/codehaus/jackson/JsonParser;)V
goto :goto_38
:cond_79
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V
goto :goto_38
:cond_7d
sget-object v8, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;
if-ne v5, v8, :cond_38
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
goto :goto_38
:cond_86
const/4 v8, 0x0
iput-object v8, p0, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->mSrc:Ljava/lang/String;
goto :goto_1f
.end method
.method public getHref()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->mHref:Ljava/lang/String;
return-object v0
.end method
.method public getPhoto()Lcom/facebook/katana/service/api/FacebookPhoto;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;
return-object v0
.end method
.method public getSrc()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->mSrc:Ljava/lang/String;
return-object v0
.end method
.method public getType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->mType:Ljava/lang/String;
return-object v0
.end method
.method public getVideo()Lcom/facebook/katana/service/api/FacebookVideo;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->mVideo:Lcom/facebook/katana/service/api/FacebookVideo;
return-object v0
.end method