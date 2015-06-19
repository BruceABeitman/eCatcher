.class public Lcom/lenovo/anyshare/sdk/internal/bt$a;
.super Lcom/lenovo/anyshare/sdk/internal/bp;
.source "LocalMediaLoaders.java"
.field public static final c:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0x9
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string/jumbo v2, "_id"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string/jumbo v2, "title"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string/jumbo v2, "album_id"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string/jumbo v2, "album"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string/jumbo v2, "artist_id"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string/jumbo v2, "artist"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string/jumbo v2, "duration"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string/jumbo v2, "_size"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string/jumbo v2, "_data"
aput-object v2, v0, v1
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/bt$a;->c:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/bp;-><init>(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)V
return-void
.end method
.method private a(ILjava/util/List;)Lcom/lenovo/content/base/ContentContainer;
.registers 9
new-instance v3, Lcom/lenovo/content/base/ContentProperties;
invoke-direct {v3}, Lcom/lenovo/content/base/ContentProperties;-><init>()V
const-string/jumbo v4, "id"
invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Lcom/lenovo/content/base/ContentSource;->getAlbumPathById(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v4, v5}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v4, "category_id"
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-virtual {v3, v4, v5}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_21
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_59
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/lenovo/content/base/ContentItem;
move-object v2, v1
check-cast v2, Lcom/lenovo/content/item/MusicItem;
invoke-virtual {v2}, Lcom/lenovo/content/item/MusicItem;->getAlbumId()I
move-result v4
if-ne p1, v4, :cond_21
const-string/jumbo v4, "name"
invoke-virtual {v2}, Lcom/lenovo/content/item/MusicItem;->getAlbumName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v4, v5}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v4, "has_thumbnail"
const/4 v5, 0x1
invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
invoke-virtual {v3, v4, v5}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v4, "category_path"
invoke-virtual {v2}, Lcom/lenovo/content/item/MusicItem;->getFilePath()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Lcom/lenovo/anyshare/sdk/internal/aq;->f(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v4, v5}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
:cond_59
new-instance v4, Lcom/lenovo/anyshare/sdk/internal/bj;
sget-object v5, Lcom/lenovo/content/base/ContentType;->MUSIC:Lcom/lenovo/content/base/ContentType;
invoke-direct {v4, v5, v3}, Lcom/lenovo/anyshare/sdk/internal/bj;-><init>(Lcom/lenovo/content/base/ContentType;Lcom/lenovo/content/base/ContentProperties;)V
return-object v4
.end method
.method private a(Landroid/content/Context;Landroid/database/Cursor;)Lcom/lenovo/content/base/ContentItem;
.registers 10
const/16 v5, 0x8
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
const/4 v3, 0x7
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
const-string/jumbo v2, "album_id"
const/4 v3, 0x2
invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v1, v2, v3}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v2, "album_name"
const/4 v3, 0x3
invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v2, "artist_id"
const/4 v3, 0x4
invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v1, v2, v3}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v2, "artist_name"
const/4 v3, 0x5
invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v2, "duration"
const/4 v3, 0x6
invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v1, v2, v3}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
new-instance v2, Lcom/lenovo/content/item/MusicItem;
invoke-direct {v2, v1}, Lcom/lenovo/content/item/MusicItem;-><init>(Lcom/lenovo/content/base/ContentProperties;)V
return-object v2
.end method
.method private a(Ljava/util/List;Ljava/lang/String;)Z
.registers 7
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_4
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_1f
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/lenovo/content/base/ContentContainer;
move-object v0, v1
check-cast v0, Lcom/lenovo/anyshare/sdk/internal/bj;
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/bj;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_4
const/4 v3, 0x1
:goto_1e
return v3
:cond_1f
const/4 v3, 0x0
goto :goto_1e
.end method
.method private b(ILjava/util/List;)Lcom/lenovo/content/base/ContentContainer;
.registers 10
new-instance v3, Lcom/lenovo/content/base/ContentProperties;
invoke-direct {v3}, Lcom/lenovo/content/base/ContentProperties;-><init>()V
const-string/jumbo v4, "id"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v6, "artists/"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v4, v5}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v4, "category_id"
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-virtual {v3, v4, v5}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_2d
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_57
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/lenovo/content/base/ContentItem;
move-object v2, v1
check-cast v2, Lcom/lenovo/content/item/MusicItem;
invoke-virtual {v2}, Lcom/lenovo/content/item/MusicItem;->getArtistId()I
move-result v4
if-ne p1, v4, :cond_2d
const-string/jumbo v4, "name"
invoke-virtual {v2}, Lcom/lenovo/content/item/MusicItem;->getArtistName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v4, v5}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
const-string/jumbo v4, "has_thumbnail"
const/4 v5, 0x1
invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
invoke-virtual {v3, v4, v5}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
:cond_57
new-instance v4, Lcom/lenovo/anyshare/sdk/internal/bj;
sget-object v5, Lcom/lenovo/content/base/ContentType;->MUSIC:Lcom/lenovo/content/base/ContentType;
invoke-direct {v4, v5, v3}, Lcom/lenovo/anyshare/sdk/internal/bj;-><init>(Lcom/lenovo/content/base/ContentType;Lcom/lenovo/content/base/ContentProperties;)V
return-object v4
.end method
.method private e(Lcom/lenovo/content/base/ContentContainer;)V
.registers 13
:try_start_0
iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/bt$a;->b:Lcom/lenovo/content/base/ContentSource;
sget-object v9, Lcom/lenovo/content/base/ContentType;->MUSIC:Lcom/lenovo/content/base/ContentType;
const-string/jumbo v10, "items"
invoke-virtual {v8, v9, v10}, Lcom/lenovo/content/base/ContentSource;->getContainer(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v3
invoke-virtual {v3}, Lcom/lenovo/content/base/ContentContainer;->getAllItems()Ljava/util/List;
move-result-object v2
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
new-instance v4, Landroid/util/SparseArray;
invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V
const/4 v6, 0x0
:goto_1a
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v8
if-ge v6, v8, :cond_45
invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/lenovo/content/item/MusicItem;
invoke-virtual {v7}, Lcom/lenovo/content/item/MusicItem;->getAlbumId()I
move-result v8
invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v8
if-nez v8, :cond_42
invoke-virtual {v7}, Lcom/lenovo/content/item/MusicItem;->getAlbumId()I
move-result v8
invoke-direct {p0, v8, v2}, Lcom/lenovo/anyshare/sdk/internal/bt$a;->a(ILjava/util/List;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v0
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v7}, Lcom/lenovo/content/item/MusicItem;->getAlbumId()I
move-result v8
invoke-virtual {v4, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
:cond_42
add-int/lit8 v6, v6, 0x1
goto :goto_1a
:cond_45
const/4 v8, 0x0
invoke-virtual {p1, v1, v8}, Lcom/lenovo/content/base/ContentContainer;->setChildren(Ljava/util/List;Ljava/util/List;)V
:goto_49
:try_end_49
.catch Lcom/lenovo/anyshare/sdk/internal/bm; {:try_start_0 .. :try_end_49} :catch_4a
return-void
:catch_4a
move-exception v5
const-string/jumbo v8, "LocalContentLoader"
invoke-virtual {v5}, Lcom/lenovo/anyshare/sdk/internal/bm;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_49
.end method
.method private f(Lcom/lenovo/content/base/ContentContainer;)V
.registers 12
:try_start_0
iget-object v7, p0, Lcom/lenovo/anyshare/sdk/internal/bt$a;->b:Lcom/lenovo/content/base/ContentSource;
sget-object v8, Lcom/lenovo/content/base/ContentType;->MUSIC:Lcom/lenovo/content/base/ContentType;
const-string/jumbo v9, "items"
invoke-virtual {v7, v8, v9}, Lcom/lenovo/content/base/ContentSource;->getContainer(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v2
invoke-virtual {v2}, Lcom/lenovo/content/base/ContentContainer;->getAllItems()Ljava/util/List;
move-result-object v1
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
const/4 v5, 0x0
:goto_15
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v7
if-ge v5, v7, :cond_46
invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/lenovo/content/item/MusicItem;
invoke-virtual {v6}, Lcom/lenovo/content/item/MusicItem;->getArtistName()Ljava/lang/String;
move-result-object v7
invoke-direct {p0, v0, v7}, Lcom/lenovo/anyshare/sdk/internal/bt$a;->a(Ljava/util/List;Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_2e
:goto_2b
add-int/lit8 v5, v5, 0x1
goto :goto_15
:cond_2e
invoke-virtual {v6}, Lcom/lenovo/content/item/MusicItem;->getArtistId()I
move-result v7
invoke-direct {p0, v7, v1}, Lcom/lenovo/anyshare/sdk/internal/bt$a;->b(ILjava/util/List;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v3
invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_39
.catch Lcom/lenovo/anyshare/sdk/internal/bm; {:try_start_0 .. :try_end_39} :catch_3a
goto :goto_2b
:catch_3a
move-exception v4
const-string/jumbo v7, "LocalContentLoader"
invoke-virtual {v4}, Lcom/lenovo/anyshare/sdk/internal/bm;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
:goto_45
return-void
:cond_46
const/4 v7, 0x0
:try_start_47
invoke-virtual {p1, v0, v7}, Lcom/lenovo/content/base/ContentContainer;->setChildren(Ljava/util/List;Ljava/util/List;)V
:try_end_4a
.catch Lcom/lenovo/anyshare/sdk/internal/bm; {:try_start_47 .. :try_end_4a} :catch_3a
goto :goto_45
.end method
.method private g(Lcom/lenovo/content/base/ContentContainer;)V
.registers 14
instance-of v9, p1, Lcom/lenovo/anyshare/sdk/internal/bj;
invoke-static {v9}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V
move-object v1, p1
check-cast v1, Lcom/lenovo/anyshare/sdk/internal/bj;
:try_start_8
iget-object v9, p0, Lcom/lenovo/anyshare/sdk/internal/bt$a;->b:Lcom/lenovo/content/base/ContentSource;
sget-object v10, Lcom/lenovo/content/base/ContentType;->MUSIC:Lcom/lenovo/content/base/ContentType;
const-string/jumbo v11, "items"
invoke-virtual {v9, v10, v11}, Lcom/lenovo/content/base/ContentSource;->getContainer(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v3
invoke-virtual {v3}, Lcom/lenovo/content/base/ContentContainer;->getAllItems()Ljava/util/List;
move-result-object v2
new-instance v7, Ljava/util/ArrayList;
invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_20
:cond_20
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v9
if-eqz v9, :cond_4a
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/lenovo/content/base/ContentItem;
move-object v0, v6
check-cast v0, Lcom/lenovo/content/item/MusicItem;
move-object v8, v0
invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/bj;->a()I
move-result v9
invoke-virtual {v8}, Lcom/lenovo/content/item/MusicItem;->getAlbumId()I
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
.method private h(Lcom/lenovo/content/base/ContentContainer;)V
.registers 14
instance-of v9, p1, Lcom/lenovo/anyshare/sdk/internal/bj;
invoke-static {v9}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V
move-object v3, p1
check-cast v3, Lcom/lenovo/anyshare/sdk/internal/bj;
:try_start_8
iget-object v9, p0, Lcom/lenovo/anyshare/sdk/internal/bt$a;->b:Lcom/lenovo/content/base/ContentSource;
sget-object v10, Lcom/lenovo/content/base/ContentType;->MUSIC:Lcom/lenovo/content/base/ContentType;
const-string/jumbo v11, "items"
invoke-virtual {v9, v10, v11}, Lcom/lenovo/content/base/ContentSource;->getContainer(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v2
invoke-virtual {v2}, Lcom/lenovo/content/base/ContentContainer;->getAllItems()Ljava/util/List;
move-result-object v1
new-instance v7, Ljava/util/ArrayList;
invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_20
:cond_20
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v9
if-eqz v9, :cond_4e
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/lenovo/content/base/ContentItem;
move-object v0, v6
check-cast v0, Lcom/lenovo/content/item/MusicItem;
move-object v8, v0
invoke-virtual {v3}, Lcom/lenovo/anyshare/sdk/internal/bj;->getName()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8}, Lcom/lenovo/content/item/MusicItem;->getArtistName()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v9
if-eqz v9, :cond_20
invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_41
.catch Lcom/lenovo/anyshare/sdk/internal/bm; {:try_start_8 .. :try_end_41} :catch_42
goto :goto_20
:catch_42
move-exception v4
const-string/jumbo v9, "LocalContentLoader"
invoke-virtual {v4}, Lcom/lenovo/anyshare/sdk/internal/bm;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
:goto_4d
return-void
:cond_4e
const/4 v9, 0x0
:try_start_4f
invoke-virtual {p1, v9, v7}, Lcom/lenovo/content/base/ContentContainer;->setChildren(Ljava/util/List;Ljava/util/List;)V
:try_end_52
.catch Lcom/lenovo/anyshare/sdk/internal/bm; {:try_start_4f .. :try_end_52} :catch_42
goto :goto_4d
.end method
.method protected a(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;I)Lcom/lenovo/content/base/ContentContainer;
.registers 10
:try_start_0
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/bt$a;->b:Lcom/lenovo/content/base/ContentSource;
sget-object v4, Lcom/lenovo/content/base/ContentType;->MUSIC:Lcom/lenovo/content/base/ContentType;
const-string/jumbo v5, "items"
invoke-virtual {v3, v4, v5}, Lcom/lenovo/content/base/ContentSource;->getContainer(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v0
invoke-virtual {v0}, Lcom/lenovo/content/base/ContentContainer;->getAllItems()Ljava/util/List;
move-result-object v2
const-string/jumbo v3, "albums"
invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_1d
invoke-direct {p0, p3, v2}, Lcom/lenovo/anyshare/sdk/internal/bt$a;->a(ILjava/util/List;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v3
:goto_1c
return-object v3
:cond_1d
const-string/jumbo v3, "artists"
invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_36
invoke-direct {p0, p3, v2}, Lcom/lenovo/anyshare/sdk/internal/bt$a;->b(ILjava/util/List;)Lcom/lenovo/content/base/ContentContainer;
:try_end_29
.catch Lcom/lenovo/anyshare/sdk/internal/bm; {:try_start_0 .. :try_end_29} :catch_2b
move-result-object v3
goto :goto_1c
:catch_2b
move-exception v1
const-string/jumbo v3, "LocalContentLoader"
invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/bm;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
:cond_36
const/4 v3, 0x0
goto :goto_1c
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
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bt$a;->a:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/bt$a;->c:[Ljava/lang/String;
const-string/jumbo v5, "title_key"
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
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bt$a;->a:Landroid/content/Context;
invoke-direct {p0, v1, v6}, Lcom/lenovo/anyshare/sdk/internal/bt$a;->a(Landroid/content/Context;Landroid/database/Cursor;)Lcom/lenovo/content/base/ContentItem;
:try_end_4b
.catchall {:try_start_40 .. :try_end_4b} :catchall_5c
.catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4b} :catch_50
move-result-object v4
:goto_4c
:cond_4c
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
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bt$a;->a:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/bt$a;->c:[Ljava/lang/String;
const-string/jumbo v5, "title_key"
move-object v4, v3
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v6
if-nez v6, :cond_39
const-string/jumbo v1, "LocalContentLoader"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "loadContainer(): URI:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
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
:try_start_3e
:goto_3e
:cond_3e
invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
move-result v1
if-eqz v1, :cond_5b
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bt$a;->a:Landroid/content/Context;
invoke-direct {p0, v1, v6}, Lcom/lenovo/anyshare/sdk/internal/bt$a;->a(Landroid/content/Context;Landroid/database/Cursor;)Lcom/lenovo/content/base/ContentItem;
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
.method protected c(Lcom/lenovo/content/base/ContentContainer;)V
.registers 4
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentContainer;->getId()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "albums"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_11
invoke-direct {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/bt$a;->e(Lcom/lenovo/content/base/ContentContainer;)V
:goto_10
:cond_10
return-void
:cond_11
const-string/jumbo v1, "artists"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_10
invoke-direct {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/bt$a;->f(Lcom/lenovo/content/base/ContentContainer;)V
goto :goto_10
.end method
.method protected d(Lcom/lenovo/content/base/ContentContainer;)V
.registers 4
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentContainer;->getId()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "albums"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_11
invoke-direct {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/bt$a;->g(Lcom/lenovo/content/base/ContentContainer;)V
:goto_10
:cond_10
return-void
:cond_11
const-string/jumbo v1, "artists"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_10
invoke-direct {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/bt$a;->h(Lcom/lenovo/content/base/ContentContainer;)V
goto :goto_10
.end method