.class public Lcom/lenovo/anyshare/sdk/internal/bt$c;
.super Lcom/lenovo/anyshare/sdk/internal/bp;
.source "LocalMediaLoaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/anyshare/sdk/internal/bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/anyshare/sdk/internal/bt$c;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/bp;-><init>(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/database/Cursor;)Lcom/lenovo/content/base/ContentItem;
    .registers 10

    const/4 v5, 0x4

    const/4 v6, 0x1

    new-instance v1, Lcom/lenovo/content/base/ContentProperties;

    invoke-direct {v1}, Lcom/lenovo/content/base/ContentProperties;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string/jumbo v2, "id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "ver"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "name"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "has_thumbnail"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "file_path"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "file_size"

    const/4 v3, 0x3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

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

    const-string/jumbo v2, "duration"

    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lcom/lenovo/content/item/VideoItem;

    invoke-direct {v2, v1}, Lcom/lenovo/content/item/VideoItem;-><init>(Lcom/lenovo/content/base/ContentProperties;)V

    return-object v2
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

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bt$c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lenovo/anyshare/sdk/internal/bt$c;->c:[Ljava/lang/String;

    const-string/jumbo v5, "title"

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

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bt$c;->a:Landroid/content/Context;

    invoke-virtual {p0, v1, v6}, Lcom/lenovo/anyshare/sdk/internal/bt$c;->a(Landroid/content/Context;Landroid/database/Cursor;)Lcom/lenovo/content/base/ContentItem;
    :try_end_4b
    .catchall {:try_start_40 .. :try_end_4b} :catchall_5c
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4b} :catch_50

    move-result-object v4

    :cond_4c
    :goto_4c
    invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V

    goto :goto_3f

    :catch_50
    move-exception v7

    :try_start_51
    const-string/jumbo v1, "LocalContentLoader"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_51 .. :try_end_5b} :catchall_5c

    goto :goto_4c

    :catchall_5c
    move-exception v1

    invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V

    throw v1
.end method

.method protected b(Lcom/lenovo/content/base/ContentContainer;)V
    .registers 12

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bt$c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lenovo/anyshare/sdk/internal/bt$c;->c:[Ljava/lang/String;

    const-string/jumbo v5, "title"

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

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

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

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bt$c;->a:Landroid/content/Context;

    invoke-virtual {p0, v1, v6}, Lcom/lenovo/anyshare/sdk/internal/bt$c;->a(Landroid/content/Context;Landroid/database/Cursor;)Lcom/lenovo/content/base/ContentItem;

    move-result-object v8

    if-eqz v8, :cond_3e

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catchall {:try_start_3e .. :try_end_4f} :catchall_62
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4f} :catch_50

    goto :goto_3e

    :catch_50
    move-exception v7

    :try_start_51
    const-string/jumbo v1, "LocalContentLoader"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_51 .. :try_end_5b} :catchall_62

    :cond_5b
    invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V

    invoke-virtual {p1, v3, v9}, Lcom/lenovo/content/base/ContentContainer;->setChildren(Ljava/util/List;Ljava/util/List;)V

    goto :goto_38

    :catchall_62
    move-exception v1

    invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V

    throw v1
.end method
