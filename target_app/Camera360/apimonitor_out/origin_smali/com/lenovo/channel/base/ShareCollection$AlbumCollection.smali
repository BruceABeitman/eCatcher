.class public Lcom/lenovo/channel/base/ShareCollection$AlbumCollection;
.super Lcom/lenovo/channel/base/ShareCollection;
.source "ShareCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/channel/base/ShareCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumCollection"
.end annotation


# direct methods
.method constructor <init>(Lcom/lenovo/content/base/ContentContainer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/lenovo/channel/base/ShareCollection;-><init>(Lcom/lenovo/content/base/ContentContainer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/lenovo/channel/base/ShareCollection;-><init>(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/lenovo/channel/base/ShareCollection;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lcom/lenovo/content/base/ContentContainer;Lcom/lenovo/channel/base/ShareCollection$CollectionObject;)V
    .registers 12

    invoke-virtual {p1}, Lcom/lenovo/content/base/ContentContainer;->getAllItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/content/base/ContentItem;

    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Lcom/lenovo/content/base/ContentItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;

    invoke-virtual {v2}, Lcom/lenovo/content/base/ContentItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v3, v5, v6, v7}, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p2, v3}, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->addChildren(Lcom/lenovo/channel/base/ShareCollection$CollectionObject;)V

    iget-wide v5, p0, Lcom/lenovo/channel/base/ShareCollection$AlbumCollection;->f:J

    invoke-virtual {v2}, Lcom/lenovo/content/base/ContentItem;->getSize()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/lenovo/channel/base/ShareCollection$AlbumCollection;->f:J

    goto :goto_8

    :cond_38
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcom/lenovo/channel/base/ShareCollection$AlbumCollection;->g:I

    return-void
.end method


# virtual methods
.method public traverseContainer()V
    .registers 5

    iget-object v0, p0, Lcom/lenovo/channel/base/ShareCollection$AlbumCollection;->i:Lcom/lenovo/content/base/ContentContainer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/lenovo/channel/base/ShareCollection$AlbumCollection;->j:Lcom/lenovo/channel/base/ShareCollection$CollectionObject;

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    new-instance v0, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;

    iget-object v1, p0, Lcom/lenovo/channel/base/ShareCollection$AlbumCollection;->i:Lcom/lenovo/content/base/ContentContainer;

    invoke-virtual {v1}, Lcom/lenovo/content/base/ContentContainer;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/channel/base/ShareCollection$AlbumCollection;->i:Lcom/lenovo/content/base/ContentContainer;

    invoke-virtual {v2}, Lcom/lenovo/content/base/ContentContainer;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/lenovo/channel/base/ShareCollection$AlbumCollection;->j:Lcom/lenovo/channel/base/ShareCollection$CollectionObject;

    iget-object v0, p0, Lcom/lenovo/channel/base/ShareCollection$AlbumCollection;->i:Lcom/lenovo/content/base/ContentContainer;

    iget-object v1, p0, Lcom/lenovo/channel/base/ShareCollection$AlbumCollection;->j:Lcom/lenovo/channel/base/ShareCollection$CollectionObject;

    invoke-direct {p0, v0, v1}, Lcom/lenovo/channel/base/ShareCollection$AlbumCollection;->a(Lcom/lenovo/content/base/ContentContainer;Lcom/lenovo/channel/base/ShareCollection$CollectionObject;)V

    goto :goto_8
.end method
