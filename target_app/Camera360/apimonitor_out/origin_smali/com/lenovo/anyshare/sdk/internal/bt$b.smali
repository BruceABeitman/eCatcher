.class public Lcom/lenovo/anyshare/sdk/internal/bt$b;
.super Lcom/lenovo/anyshare/sdk/internal/bp;
.source "LocalMediaLoaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/anyshare/sdk/internal/bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "bucket_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "bucket_display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/anyshare/sdk/internal/bt$b;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/bp;-><init>(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)V

    return-void
.end method

.method private a(Lcom/lenovo/content/item/PhotoItem;)Lcom/lenovo/content/base/ContentContainer;
    .registers 5

    new-instance v0, Lcom/lenovo/content/base/ContentProperties;

    invoke-direct {v0}, Lcom/lenovo/content/base/ContentProperties;-><init>()V

    const-string/jumbo v1, "id"

    invoke-virtual {p1}, Lcom/lenovo/content/item/PhotoItem;->getAlbumId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/content/base/ContentSource;->getAlbumPathById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "category_id"

    invoke-virtual {p1}, Lcom/lenovo/content/item/PhotoItem;->getAlbumId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "name"

    invoke-virtual {p1}, Lcom/lenovo/content/item/PhotoItem;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "category_path"

    invoke-virtual {p1}, Lcom/lenovo/content/item/PhotoItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/aq;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lcom/lenovo/anyshare/sdk/internal/bj;

    sget-object v2, Lcom/lenovo/content/base/ContentType;->PHOTO:Lcom/lenovo/content/base/ContentType;

    invoke-direct {v1, v2, v0}, Lcom/lenovo/anyshare/sdk/internal/bj;-><init>(Lcom/lenovo/content/base/ContentType;Lcom/lenovo/content/base/ContentProperties;)V

    return-object v1
.end method

.method private a(Landroid/database/Cursor;)Lcom/lenovo/content/base/ContentItem;
    .registers 9

    const/4 v5, 0x3

    const/4 v6, 0x1

    new-instance v1, Lcom/lenovo/content/base/ContentProperties;

    invoke-direct {v1}, Lcom/lenovo/content/base/ContentProperties;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string/jumbo v2, "id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "ver"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "name"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "has_thumbnail"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "file_path"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "file_size"

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/lenovo/anyshare/sdk/internal/bt;->a(JLjava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "is_exist"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "media_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "album_id"

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "album_name"

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lcom/lenovo/content/item/PhotoItem;

    invoke-direct {v2, v1}, Lcom/lenovo/content/item/PhotoItem;-><init>(Lcom/lenovo/content/base/ContentProperties;)V

    return-object v2
.end method


# virtual methods
.method protected a(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;I)Lcom/lenovo/content/base/ContentContainer;
    .registers 5

    const-string/jumbo v0, "not implemented yet"

    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentItem;
    .registers 11

    const/4 v4, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bt$b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lenovo/anyshare/sdk/internal/bt$b;->c:[Ljava/lang/String;

    const-string/jumbo v5, "bucket_display_name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_40

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cannot get cursor for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Ljava/lang/String;)V

    :goto_3f
    return-object v4

    :cond_40
    :try_start_40
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-direct {p0, v6}, Lcom/lenovo/anyshare/sdk/internal/bt$b;->a(Landroid/database/Cursor;)Lcom/lenovo/content/base/ContentItem;
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_5a
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_49} :catch_4e

    move-result-object v4

    :cond_4a
    :goto_4a
    invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V

    goto :goto_3f

    :catch_4e
    move-exception v7

    :try_start_4f
    const-string/jumbo v1, "LocalContentLoader"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_4f .. :try_end_59} :catchall_5a

    goto :goto_4a

    :catchall_5a
    move-exception v1

    invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V

    throw v1
.end method

.method protected b(Lcom/lenovo/content/base/ContentContainer;)V
    .registers 12

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bt$b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lenovo/anyshare/sdk/internal/bt$b;->c:[Ljava/lang/String;

    const-string/jumbo v5, "date_modified DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_39

    const-string/jumbo v1, "LocalContentLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createContainer(): URI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Cursor is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_38
    return-void

    :cond_39
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_3e
    :goto_3e
    :try_start_3e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-direct {p0, v6}, Lcom/lenovo/anyshare/sdk/internal/bt$b;->a(Landroid/database/Cursor;)Lcom/lenovo/content/base/ContentItem;

    move-result-object v8

    if-eqz v8, :cond_3e

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catchall {:try_start_3e .. :try_end_4d} :catchall_60
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4d} :catch_4e

    goto :goto_3e

    :catch_4e
    move-exception v7

    :try_start_4f
    const-string/jumbo v1, "LocalContentLoader"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_4f .. :try_end_59} :catchall_60

    :cond_59
    invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V

    invoke-virtual {p1, v3, v9}, Lcom/lenovo/content/base/ContentContainer;->setChildren(Ljava/util/List;Ljava/util/List;)V

    goto :goto_38

    :catchall_60
    move-exception v1

    invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V

    throw v1
.end method

.method protected c(Lcom/lenovo/content/base/ContentContainer;)V
    .registers 15

    :try_start_0
    iget-object v10, p0, Lcom/lenovo/anyshare/sdk/internal/bt$b;->b:Lcom/lenovo/content/base/ContentSource;

    sget-object v11, Lcom/lenovo/content/base/ContentType;->PHOTO:Lcom/lenovo/content/base/ContentType;

    const-string/jumbo v12, "items"

    invoke-virtual {v10, v11, v12}, Lcom/lenovo/content/base/ContentSource;->getContainer(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/content/base/ContentContainer;->getAllItems()Ljava/util/List;

    move-result-object v4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/content/base/ContentItem;

    move-object v0, v9

    check-cast v0, Lcom/lenovo/content/item/PhotoItem;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/lenovo/content/item/PhotoItem;->getAlbumId()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/content/base/ContentContainer;

    if-nez v2, :cond_4b

    invoke-direct {p0, v1}, Lcom/lenovo/anyshare/sdk/internal/bt$b;->a(Lcom/lenovo/content/item/PhotoItem;)Lcom/lenovo/content/base/ContentContainer;

    move-result-object v2

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Lcom/lenovo/content/base/ContentContainer;->setLoadStatus(I)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/lenovo/content/item/PhotoItem;->getAlbumId()I

    move-result v10

    invoke-virtual {v6, v10, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4b
    invoke-virtual {v2, v1}, Lcom/lenovo/content/base/ContentContainer;->addChild(Lcom/lenovo/content/base/ContentItem;)V
    :try_end_4e
    .catch Lcom/lenovo/anyshare/sdk/internal/bm; {:try_start_0 .. :try_end_4e} :catch_4f

    goto :goto_1d

    :catch_4f
    move-exception v7

    const-string/jumbo v10, "LocalContentLoader"

    invoke-virtual {v7}, Lcom/lenovo/anyshare/sdk/internal/bm;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5a
    return-void

    :cond_5b
    :try_start_5b
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_70

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/content/base/ContentContainer;

    const/4 v10, 0x2

    invoke-virtual {v2, v10}, Lcom/lenovo/content/base/ContentContainer;->setLoadStatus(I)V

    goto :goto_5f

    :cond_70
    const/4 v10, 0x0

    invoke-virtual {p1, v3, v10}, Lcom/lenovo/content/base/ContentContainer;->setChildren(Ljava/util/List;Ljava/util/List;)V
    :try_end_74
    .catch Lcom/lenovo/anyshare/sdk/internal/bm; {:try_start_5b .. :try_end_74} :catch_4f

    goto :goto_5a
.end method

.method protected d(Lcom/lenovo/content/base/ContentContainer;)V
    .registers 14

    instance-of v9, p1, Lcom/lenovo/anyshare/sdk/internal/bj;

    invoke-static {v9}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V

    move-object v1, p1

    check-cast v1, Lcom/lenovo/anyshare/sdk/internal/bj;

    :try_start_8
    iget-object v9, p0, Lcom/lenovo/anyshare/sdk/internal/bt$b;->b:Lcom/lenovo/content/base/ContentSource;

    sget-object v10, Lcom/lenovo/content/base/ContentType;->PHOTO:Lcom/lenovo/content/base/ContentType;

    const-string/jumbo v11, "items"

    invoke-virtual {v9, v10, v11}, Lcom/lenovo/content/base/ContentSource;->getContainer(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/content/base/ContentContainer;->getAllItems()Ljava/util/List;

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_20
    :goto_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/content/base/ContentItem;

    move-object v0, v6

    check-cast v0, Lcom/lenovo/content/item/PhotoItem;

    move-object v8, v0

    invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/bj;->a()I

    move-result v9

    invoke-virtual {v8}, Lcom/lenovo/content/item/PhotoItem;->getAlbumId()I

    move-result v10

    if-ne v9, v10, :cond_20

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Lcom/lenovo/anyshare/sdk/internal/bm; {:try_start_8 .. :try_end_3d} :catch_3e

    goto :goto_20

    :catch_3e
    move-exception v4

    const-string/jumbo v9, "LocalContentLoader"

    invoke-virtual {v4}, Lcom/lenovo/anyshare/sdk/internal/bm;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_49
    return-void

    :cond_4a
    const/4 v9, 0x0

    :try_start_4b
    invoke-virtual {p1, v9, v7}, Lcom/lenovo/content/base/ContentContainer;->setChildren(Ljava/util/List;Ljava/util/List;)V
    :try_end_4e
    .catch Lcom/lenovo/anyshare/sdk/internal/bm; {:try_start_4b .. :try_end_4e} :catch_3e

    goto :goto_49
.end method
