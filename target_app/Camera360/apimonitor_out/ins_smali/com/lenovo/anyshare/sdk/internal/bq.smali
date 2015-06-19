.class public Lcom/lenovo/anyshare/sdk/internal/bq;
.super Lcom/lenovo/content/base/ContentSource;
.source "CachedContentSource.java"
.field private a:Lcom/lenovo/content/base/ContentSource;
.method public constructor <init>(Lcom/lenovo/content/base/ContentSource;)V
.registers 2
invoke-direct {p0}, Lcom/lenovo/content/base/ContentSource;-><init>()V
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/bq;->a:Lcom/lenovo/content/base/ContentSource;
return-void
.end method
.method private a(Lcom/lenovo/content/base/ContentPath;)Lcom/lenovo/content/base/ContentContainer;
.registers 4
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentPath;->getObject()Lcom/lenovo/content/base/ContentObject;
move-result-object v0
if-nez v0, :cond_b
const/4 v0, 0x0
:goto_a
return-object v0
:cond_b
instance-of v1, v0, Lcom/lenovo/content/base/ContentContainer;
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V
check-cast v0, Lcom/lenovo/content/base/ContentContainer;
goto :goto_a
.end method
.method private a(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
.registers 6
invoke-direct {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/bq;->b(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentPath;
move-result-object v1
invoke-direct {p0, v1}, Lcom/lenovo/anyshare/sdk/internal/bq;->a(Lcom/lenovo/content/base/ContentPath;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v0
if-nez v0, :cond_13
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/bq;->a:Lcom/lenovo/content/base/ContentSource;
invoke-virtual {v2, p1, p2}, Lcom/lenovo/content/base/ContentSource;->createContainer(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v0
invoke-direct {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/bq;->a(Lcom/lenovo/content/base/ContentContainer;)V
:cond_13
return-object v0
.end method
.method private a(Lcom/lenovo/content/base/ContentContainer;)V
.registers 9
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentContainer;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v5
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentContainer;->getId()Ljava/lang/String;
move-result-object v6
invoke-direct {p0, v5, v6}, Lcom/lenovo/anyshare/sdk/internal/bq;->b(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentPath;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/lenovo/content/base/ContentPath;->setObject(Lcom/lenovo/content/base/ContentObject;)V
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentContainer;->getAllObjects()Ljava/util/List;
move-result-object v4
const/4 v1, 0x0
:goto_17
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v5
if-ge v1, v5, :cond_4a
const/4 v3, 0x0
invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/lenovo/content/base/ContentObject;
instance-of v5, v2, Lcom/lenovo/content/base/ContentItem;
if-eqz v5, :cond_3d
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentContainer;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v5
invoke-virtual {v2}, Lcom/lenovo/content/base/ContentObject;->getId()Ljava/lang/String;
move-result-object v6
invoke-direct {p0, v5, v6}, Lcom/lenovo/anyshare/sdk/internal/bq;->c(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentPath;
move-result-object v3
:goto_34
invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
invoke-virtual {v3, v2}, Lcom/lenovo/content/base/ContentPath;->setObject(Lcom/lenovo/content/base/ContentObject;)V
add-int/lit8 v1, v1, 0x1
goto :goto_17
:cond_3d
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentContainer;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v5
invoke-virtual {v2}, Lcom/lenovo/content/base/ContentObject;->getId()Ljava/lang/String;
move-result-object v6
invoke-direct {p0, v5, v6}, Lcom/lenovo/anyshare/sdk/internal/bq;->b(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentPath;
move-result-object v3
goto :goto_34
:cond_4a
return-void
.end method
.method private a(Lcom/lenovo/content/base/ContentContainer;Z)V
.registers 9
const/4 v2, 0x1
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentContainer;->getLoadStatus()I
move-result v1
if-ne v1, v2, :cond_95
const-string/jumbo v2, "CachedContentSource"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "doLoadContainer(): Start waitLoaded[Type:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentContainer;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v4
invoke-virtual {v4}, Lcom/lenovo/content/base/ContentType;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, ", Path:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentContainer;->getId()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "] and thread id is "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Thread;->getId()J
move-result-wide v4
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
const-wide/16 v2, 0x0
invoke-virtual {p1, v2, v3}, Lcom/lenovo/content/base/ContentContainer;->waitLoaded(J)V
const-string/jumbo v2, "CachedContentSource"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "doLoadContainer(): End waitLoaded[Type:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentContainer;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v4
invoke-virtual {v4}, Lcom/lenovo/content/base/ContentType;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, ", Path:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentContainer;->getId()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "] and thread id is "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Thread;->getId()J
move-result-wide v4
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
:cond_94
:goto_94
return-void
:cond_95
if-eqz v1, :cond_99
if-eqz p2, :cond_94
:cond_99
const/4 v2, 0x1
:try_start_9a
invoke-virtual {p1, v2}, Lcom/lenovo/content/base/ContentContainer;->setLoadStatus(I)V
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/bq;->a:Lcom/lenovo/content/base/ContentSource;
invoke-virtual {v2, p1}, Lcom/lenovo/content/base/ContentSource;->loadContainer(Lcom/lenovo/content/base/ContentContainer;)V
const/4 v2, 0x2
invoke-virtual {p1, v2}, Lcom/lenovo/content/base/ContentContainer;->setLoadStatus(I)V
:try_end_a6
.catch Lcom/lenovo/anyshare/sdk/internal/bm; {:try_start_9a .. :try_end_a6} :catch_aa
invoke-direct {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/bq;->a(Lcom/lenovo/content/base/ContentContainer;)V
goto :goto_94
:catch_aa
move-exception v0
const/4 v2, 0x0
invoke-virtual {p1, v2}, Lcom/lenovo/content/base/ContentContainer;->setLoadStatus(I)V
throw v0
.end method
.method private b(Lcom/lenovo/content/base/ContentPath;)Lcom/lenovo/content/base/ContentItem;
.registers 4
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentPath;->getObject()Lcom/lenovo/content/base/ContentObject;
move-result-object v0
if-nez v0, :cond_b
const/4 v0, 0x0
:goto_a
return-object v0
:cond_b
instance-of v1, v0, Lcom/lenovo/content/base/ContentItem;
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V
check-cast v0, Lcom/lenovo/content/base/ContentItem;
goto :goto_a
.end method
.method private b(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentPath;
.registers 11
const/4 v4, 0x2
const/4 v7, 0x1
const/4 v6, 0x0
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/bq;->getPathPrefix()Ljava/lang/String;
move-result-object v1
new-array v2, v4, [Ljava/lang/String;
const-string/jumbo v3, "/%s/%s"
new-array v4, v4, [Ljava/lang/Object;
aput-object v1, v4, v6
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentType;->toString()Ljava/lang/String;
move-result-object v5
aput-object v5, v4, v7
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v6
aput-object p2, v2, v7
invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/aq;->a([Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/lenovo/content/base/ContentPath;->getContainer(Ljava/lang/String;)Lcom/lenovo/content/base/ContentPath;
move-result-object v2
return-object v2
.end method
.method private c(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentPath;
.registers 12
const/4 v8, 0x2
const/4 v7, 0x1
const/4 v6, 0x0
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/bq;->getPathPrefix()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x3
new-array v2, v2, [Ljava/lang/String;
const-string/jumbo v3, "/%s/%s"
new-array v4, v8, [Ljava/lang/Object;
aput-object v1, v4, v6
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentType;->toString()Ljava/lang/String;
move-result-object v5
aput-object v5, v4, v7
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v6
const-string/jumbo v3, "items"
aput-object v3, v2, v7
aput-object p2, v2, v8
invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/aq;->a([Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/lenovo/content/base/ContentPath;->getItem(Ljava/lang/String;)Lcom/lenovo/content/base/ContentPath;
move-result-object v2
return-object v2
.end method
.method public createContainer(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
.registers 4
invoke-static {p2}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
invoke-direct {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/bq;->a(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v0
return-object v0
.end method
.method public getContainer(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
.registers 5
invoke-static {p2}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
invoke-direct {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/bq;->a(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v0
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lcom/lenovo/anyshare/sdk/internal/bq;->a(Lcom/lenovo/content/base/ContentContainer;Z)V
return-object v0
.end method
.method public getItem(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentItem;
.registers 6
invoke-direct {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/bq;->c(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentPath;
move-result-object v0
invoke-direct {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/bq;->b(Lcom/lenovo/content/base/ContentPath;)Lcom/lenovo/content/base/ContentItem;
move-result-object v1
if-nez v1, :cond_13
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/bq;->a:Lcom/lenovo/content/base/ContentSource;
invoke-virtual {v2, p1, p2}, Lcom/lenovo/content/base/ContentSource;->getItem(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentItem;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/lenovo/content/base/ContentPath;->setObject(Lcom/lenovo/content/base/ContentObject;)V
:cond_13
return-object v1
.end method
.method public getPathPrefix()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bq;->a:Lcom/lenovo/content/base/ContentSource;
invoke-virtual {v0}, Lcom/lenovo/content/base/ContentSource;->getPathPrefix()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getPermits()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bq;->a:Lcom/lenovo/content/base/ContentSource;
invoke-virtual {v0}, Lcom/lenovo/content/base/ContentSource;->getPermits()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public loadContainer(Lcom/lenovo/content/base/ContentContainer;)V
.registers 3
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
const/4 v0, 0x1
invoke-direct {p0, p1, v0}, Lcom/lenovo/anyshare/sdk/internal/bq;->a(Lcom/lenovo/content/base/ContentContainer;Z)V
return-void
.end method
.method public loadThumbnail(Lcom/lenovo/content/base/ContentObject;)Landroid/graphics/Bitmap;
.registers 3
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bq;->a:Lcom/lenovo/content/base/ContentSource;
invoke-virtual {v0, p1}, Lcom/lenovo/content/base/ContentSource;->loadThumbnail(Lcom/lenovo/content/base/ContentObject;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method