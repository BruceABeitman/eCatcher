.class public Lcom/lenovo/channel/base/ShareCollection$FolderCollection;
.super Lcom/lenovo/channel/base/ShareCollection;
.source "ShareCollection.java"
.field private k:Z
.method constructor <init>(Lcom/lenovo/anyshare/sdk/internal/bk;)V
.registers 3
invoke-direct {p0, p1}, Lcom/lenovo/channel/base/ShareCollection;-><init>(Lcom/lenovo/content/base/ContentContainer;)V
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/bk;->a()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/channel/base/ShareCollection$FolderCollection;->e:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/lenovo/channel/base/ShareCollection$FolderCollection;->k:Z
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
sget-object v0, Lcom/lenovo/content/base/ContentType;->FILE:Lcom/lenovo/content/base/ContentType;
invoke-direct {p0, v0, p1, p2, p3}, Lcom/lenovo/channel/base/ShareCollection;-><init>(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method constructor <init>(Lorg/json/JSONObject;)V
.registers 2
invoke-direct {p0, p1}, Lcom/lenovo/channel/base/ShareCollection;-><init>(Lorg/json/JSONObject;)V
return-void
.end method
.method private a(Ljava/io/File;Lcom/lenovo/channel/base/ShareCollection$CollectionObject;)V
.registers 14
invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v3
move-object v0, v3
array-length v6, v0
const/4 v4, 0x0
:goto_7
if-ge v4, v6, :cond_49
aget-object v2, v0, v4
iget-boolean v7, p0, Lcom/lenovo/channel/base/ShareCollection$FolderCollection;->k:Z
if-nez v7, :cond_18
invoke-virtual {v2}, Ljava/io/File;->isHidden()Z
move-result v7
if-eqz v7, :cond_18
:goto_15
add-int/lit8 v4, v4, 0x1
goto :goto_7
:cond_18
invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z
move-result v5
new-instance v1, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;
invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v7
invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v8
invoke-direct {v1, v7, v8, v5}, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V
invoke-virtual {p2, v1}, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->addChildren(Lcom/lenovo/channel/base/ShareCollection$CollectionObject;)V
if-eqz v5, :cond_32
invoke-direct {p0, v2, v1}, Lcom/lenovo/channel/base/ShareCollection$FolderCollection;->a(Ljava/io/File;Lcom/lenovo/channel/base/ShareCollection$CollectionObject;)V
goto :goto_15
:cond_32
invoke-virtual {v2}, Ljava/io/File;->lastModified()J
move-result-wide v7
invoke-virtual {v1, v7, v8}, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->setLastModified(J)V
iget-wide v7, p0, Lcom/lenovo/channel/base/ShareCollection$FolderCollection;->f:J
invoke-virtual {v2}, Ljava/io/File;->length()J
move-result-wide v9
add-long/2addr v7, v9
iput-wide v7, p0, Lcom/lenovo/channel/base/ShareCollection$FolderCollection;->f:J
iget v7, p0, Lcom/lenovo/channel/base/ShareCollection$FolderCollection;->g:I
add-int/lit8 v7, v7, 0x1
iput v7, p0, Lcom/lenovo/channel/base/ShareCollection$FolderCollection;->g:I
goto :goto_15
:cond_49
return-void
.end method
.method public setIsSendHidden(Z)V
.registers 2
iput-boolean p1, p0, Lcom/lenovo/channel/base/ShareCollection$FolderCollection;->k:Z
return-void
.end method
.method public traverseContainer()V
.registers 6
iget-object v1, p0, Lcom/lenovo/channel/base/ShareCollection$FolderCollection;->i:Lcom/lenovo/content/base/ContentContainer;
if-eqz v1, :cond_8
iget-object v1, p0, Lcom/lenovo/channel/base/ShareCollection$FolderCollection;->j:Lcom/lenovo/channel/base/ShareCollection$CollectionObject;
if-eqz v1, :cond_9
:goto_8
:cond_8
return-void
:cond_9
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/lenovo/channel/base/ShareCollection$FolderCollection;->e:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
new-instance v1, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;
iget-object v2, p0, Lcom/lenovo/channel/base/ShareCollection$FolderCollection;->e:Ljava/lang/String;
invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v3
const/4 v4, 0x1
invoke-direct {v1, v2, v3, v4}, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V
iput-object v1, p0, Lcom/lenovo/channel/base/ShareCollection$FolderCollection;->j:Lcom/lenovo/channel/base/ShareCollection$CollectionObject;
iget-object v1, p0, Lcom/lenovo/channel/base/ShareCollection$FolderCollection;->j:Lcom/lenovo/channel/base/ShareCollection$CollectionObject;
invoke-direct {p0, v0, v1}, Lcom/lenovo/channel/base/ShareCollection$FolderCollection;->a(Ljava/io/File;Lcom/lenovo/channel/base/ShareCollection$CollectionObject;)V
goto :goto_8
.end method