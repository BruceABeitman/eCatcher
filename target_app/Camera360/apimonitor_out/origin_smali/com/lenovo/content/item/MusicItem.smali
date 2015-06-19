.class public Lcom/lenovo/content/item/MusicItem;
.super Lcom/lenovo/content/base/ContentItem;
.source "MusicItem.java"


# instance fields
.field protected a:J

.field protected b:I

.field protected c:Ljava/lang/String;

.field protected d:I

.field protected e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lenovo/content/base/ContentProperties;)V
    .registers 3

    sget-object v0, Lcom/lenovo/content/base/ContentType;->MUSIC:Lcom/lenovo/content/base/ContentType;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/content/base/ContentItem;-><init>(Lcom/lenovo/content/base/ContentType;Lcom/lenovo/content/base/ContentProperties;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    sget-object v0, Lcom/lenovo/content/base/ContentType;->MUSIC:Lcom/lenovo/content/base/ContentType;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/content/base/ContentItem;-><init>(Lcom/lenovo/content/base/ContentType;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/lenovo/content/base/ContentProperties;)V
    .registers 6

    const/4 v3, -0x1

    invoke-super {p0, p1}, Lcom/lenovo/content/base/ContentItem;->a(Lcom/lenovo/content/base/ContentProperties;)V

    const-string/jumbo v0, "duration"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/lenovo/content/base/ContentProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/content/item/MusicItem;->a:J

    const-string/jumbo v0, "album_id"

    invoke-virtual {p1, v0, v3}, Lcom/lenovo/content/base/ContentProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/content/item/MusicItem;->b:I

    const-string/jumbo v0, "album_name"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/content/base/ContentProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/content/item/MusicItem;->c:Ljava/lang/String;

    const-string/jumbo v0, "artist_id"

    invoke-virtual {p1, v0, v3}, Lcom/lenovo/content/base/ContentProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/content/item/MusicItem;->d:I

    const-string/jumbo v0, "artist_name"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/content/base/ContentProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/content/item/MusicItem;->e:Ljava/lang/String;

    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/lenovo/content/base/ContentItem;->a(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "duration"

    iget-wide v1, p0, Lcom/lenovo/content/item/MusicItem;->a:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/lenovo/content/item/MusicItem;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "artist"

    iget-object v1, p0, Lcom/lenovo/content/item/MusicItem;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1b
    return-void
.end method

.method protected b(Lorg/json/JSONObject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v2, -0x1

    invoke-super {p0, p1}, Lcom/lenovo/content/base/ContentItem;->b(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "duration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/content/item/MusicItem;->a:J

    iput v2, p0, Lcom/lenovo/content/item/MusicItem;->d:I

    const-string/jumbo v0, "artist"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string/jumbo v0, "artist"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1f
    iput-object v0, p0, Lcom/lenovo/content/item/MusicItem;->e:Ljava/lang/String;

    iput v2, p0, Lcom/lenovo/content/item/MusicItem;->b:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lenovo/content/item/MusicItem;->c:Ljava/lang/String;

    return-void

    :cond_29
    const-string/jumbo v0, ""

    goto :goto_1f
.end method

.method public getAlbumId()I
    .registers 2

    iget v0, p0, Lcom/lenovo/content/item/MusicItem;->b:I

    return v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/content/item/MusicItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistId()I
    .registers 2

    iget v0, p0, Lcom/lenovo/content/item/MusicItem;->d:I

    return v0
.end method

.method public getArtistName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/content/item/MusicItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .registers 3

    iget-wide v0, p0, Lcom/lenovo/content/item/MusicItem;->a:J

    return-wide v0
.end method

.method public getMediaId()I
    .registers 2

    invoke-super {p0}, Lcom/lenovo/content/base/ContentItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
