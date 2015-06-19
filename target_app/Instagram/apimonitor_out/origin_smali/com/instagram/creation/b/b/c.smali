.class public final Lcom/instagram/creation/b/b/c;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "PendingMediaDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer",
        "<",
        "Lcom/instagram/creation/b/a/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-class v0, Lcom/instagram/creation/b/a/b;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private static a(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/instagram/creation/b/a/a;
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xa
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lcom/instagram/creation/b/a/a;

    invoke-direct {v0}, Lcom/instagram/creation/b/a/a;-><init>()V

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/a;->a(F)Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0, v2}, Lcom/instagram/creation/b/a/a;->b(I)Lcom/instagram/creation/b/a/a;

    invoke-virtual {v0, v2}, Lcom/instagram/creation/b/a/a;->c(I)Lcom/instagram/creation/b/a/a;

    const-string v1, "stitchedVideoFilePath"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_56

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/a;->a(Ljava/lang/String;)Lcom/instagram/creation/b/a/a;

    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x13

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/instagram/creation/b/a/a;->b(II)V

    invoke-static {v1}, Lcom/instagram/creation/video/c/a;->a(Landroid/media/MediaMetadataRetriever;)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/a;->d(I)Lcom/instagram/creation/b/a/a;

    :cond_56
    const-string v1, "camera_id"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    const-string v1, "camera_id"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/a;->a(I)Lcom/instagram/creation/b/a/a;

    :cond_6b
    :goto_6b
    return-object v0

    :cond_6c
    const-string v1, "orientation"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b

    const-string v1, "orientation"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v1

    invoke-static {v1}, Lcom/instagram/camera/h;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/a;->a(I)Lcom/instagram/creation/b/a/a;

    goto :goto_6b
.end method

.method private a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/creation/b/a/b;
    .registers 10

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCodec()Lcom/fasterxml/jackson/a/s;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v1, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/a/l;->readValueAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonNode;

    const-string v2, "mediaType"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1ed

    const-string v2, "mediaType"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "photo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1ed

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d8

    sget-object v2, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;

    :goto_33
    const-string v3, "imageFilePath"

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v4

    const-string v3, "key"

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;

    if-ne v2, v5, :cond_1f1

    invoke-static {v3}, Lcom/instagram/creation/b/a/b;->a(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/instagram/creation/b/a/b;->e(Ljava/lang/String;)V

    move-object v3, v2

    :goto_53
    const-string v2, "targetStatus"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    if-nez v2, :cond_2b4

    const-string v2, "postedByUser"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    if-nez v2, :cond_2a4

    sget-object v2, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    move-object v4, v3

    :goto_66
    invoke-virtual {v4, v2}, Lcom/instagram/creation/b/a/b;->b(Lcom/instagram/creation/b/a/d;)V

    :goto_69
    const-string v2, "serverStatus"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    if-nez v2, :cond_2d4

    const-string v2, "needsUpload"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    if-eqz v2, :cond_2c1

    sget-object v2, Lcom/instagram/creation/b/a/d;->a:Lcom/instagram/creation/b/a/d;

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/d;)V

    :cond_82
    :goto_82
    const-string v2, "timestamp"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e1

    const-string v2, "timestamp"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->c(Ljava/lang/String;)V

    :goto_97
    const-string v2, "sourceType"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->a(I)V

    const-string v2, "filterTypeOrdinal"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->b(I)V

    const-string v2, "twitterEnabled"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->a(Z)V

    const-string v2, "facebookEnabled"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->b(Z)V

    const-string v2, "foursquareEnabled"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->c(Z)V

    const-string v2, "foursquare_request_id"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ed

    const-string v2, "foursquare_request_id"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->j(Ljava/lang/String;)V

    :cond_ed
    const-string v2, "tumblrEnabled"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->d(Z)V

    const-string v2, "vkontakteEnabled"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10f

    const-string v2, "vkontakteEnabled"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->f(Z)V

    :cond_10f
    const-string v2, "flickrEnabled"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_124

    const-string v2, "flickrEnabled"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->e(Z)V

    :cond_124
    const-string v2, "originalHeight"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14e

    const-string v2, "originalWidth"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14e

    const-string v2, "originalWidth"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->d(I)V

    const-string v2, "originalHeight"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->e(I)V

    :cond_14e
    const-string v2, "latitude"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asDouble()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/instagram/creation/b/a/b;->a(D)V

    const-string v2, "longitude"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asDouble()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/instagram/creation/b/a/b;->b(D)V

    const-string v2, "location"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    const-class v4, Lcom/instagram/venue/model/Venue;

    invoke-virtual {v0, v2, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/a/v;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/venue/model/Venue;

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/venue/model/Venue;)V

    const-string v2, "caption"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->d(Ljava/lang/String;)V

    const-string v2, "peopleTags"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a6

    new-instance v2, Lcom/instagram/creation/b/b/g;

    invoke-direct {v2, p0}, Lcom/instagram/creation/b/b/g;-><init>(Lcom/instagram/creation/b/b/c;)V

    const-string v4, "peopleTags"

    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeAsTokens(Lcom/fasterxml/jackson/a/v;)Lcom/fasterxml/jackson/a/l;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/f/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->a(Ljava/util/ArrayList;)V

    :cond_1a6
    const-string v2, "direct_share"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d7

    const-string v2, "direct_share"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->h(Z)V

    new-instance v2, Lcom/instagram/creation/b/b/h;

    invoke-direct {v2, p0}, Lcom/instagram/creation/b/b/h;-><init>(Lcom/instagram/creation/b/b/c;)V

    const-string v4, "recipients"

    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeAsTokens(Lcom/fasterxml/jackson/a/v;)Lcom/fasterxml/jackson/a/l;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/f/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v3}, Lcom/instagram/creation/b/a/b;->M()Lcom/instagram/creation/b/a/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/creation/b/a/g;->a(Ljava/util/List;)V

    :cond_1d7
    return-object v3

    :cond_1d8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unknown MediaType "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1ed
    sget-object v2, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;

    goto/16 :goto_33

    :cond_1f1
    invoke-static {v3}, Lcom/instagram/creation/b/a/b;->b(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;

    move-result-object v3

    const-string v2, "recordingSessionFilePath"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v5

    const-string v2, "videoFilePath"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_219

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_219

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->f(Ljava/lang/String;)V

    :cond_219
    const-string v2, "videoInfoList"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_286

    new-instance v2, Lcom/instagram/creation/b/b/d;

    invoke-direct {v2, p0}, Lcom/instagram/creation/b/b/d;-><init>(Lcom/instagram/creation/b/b/c;)V

    const-string v6, "videoInfoList"

    invoke-virtual {v1, v6}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeAsTokens(Lcom/fasterxml/jackson/a/v;)Lcom/fasterxml/jackson/a/l;

    move-result-object v6

    invoke-virtual {v0, v6, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/f/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->b(Ljava/util/List;)V

    :goto_239
    const-string v2, "stitchedVideoInfo"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_296

    new-instance v2, Lcom/instagram/creation/b/b/e;

    invoke-direct {v2, p0}, Lcom/instagram/creation/b/b/e;-><init>(Lcom/instagram/creation/b/b/c;)V

    const-string v6, "stitchedVideoInfo"

    invoke-virtual {v1, v6}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeAsTokens(Lcom/fasterxml/jackson/a/v;)Lcom/fasterxml/jackson/a/l;

    move-result-object v6

    invoke-virtual {v0, v6, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/f/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/creation/b/a/a;

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/a;)V

    :goto_259
    invoke-virtual {v3, v5}, Lcom/instagram/creation/b/a/b;->i(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/instagram/creation/b/a/b;->e(Ljava/lang/String;)V

    const-string v2, "videoResult"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->h(Ljava/lang/String;)V

    new-instance v2, Lcom/instagram/creation/b/b/f;

    invoke-direct {v2, p0}, Lcom/instagram/creation/b/b/f;-><init>(Lcom/instagram/creation/b/b/c;)V

    const-string v4, "videoUploadUrls"

    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeAsTokens(Lcom/fasterxml/jackson/a/v;)Lcom/fasterxml/jackson/a/l;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/f/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->a(Ljava/util/List;)V

    goto/16 :goto_53

    :cond_286
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Lcom/instagram/creation/b/b/c;->a(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/instagram/creation/b/a/a;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->b(Ljava/util/List;)V

    goto :goto_239

    :cond_296
    invoke-virtual {v3}, Lcom/instagram/creation/b/a/b;->I()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/creation/b/a/a;

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/a;)V

    goto :goto_259

    :cond_2a4
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    if-eqz v2, :cond_2af

    sget-object v2, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    move-object v4, v3

    goto/16 :goto_66

    :cond_2af
    sget-object v2, Lcom/instagram/creation/b/a/d;->b:Lcom/instagram/creation/b/a/d;

    move-object v4, v3

    goto/16 :goto_66

    :cond_2b4
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/creation/b/a/d;->valueOf(Ljava/lang/String;)Lcom/instagram/creation/b/a/d;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->b(Lcom/instagram/creation/b/a/d;)V

    goto/16 :goto_69

    :cond_2c1
    const-string v2, "needsConfigure"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    if-eqz v2, :cond_82

    sget-object v2, Lcom/instagram/creation/b/a/d;->b:Lcom/instagram/creation/b/a/d;

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/d;)V

    goto/16 :goto_82

    :cond_2d4
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/creation/b/a/d;->valueOf(Ljava/lang/String;)Lcom/instagram/creation/b/a/d;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/d;)V

    goto/16 :goto_82

    :cond_2e1
    invoke-virtual {v3}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/instagram/creation/b/a/b;->c(Ljava/lang/String;)V

    goto/16 :goto_97
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1}, Lcom/instagram/creation/b/b/c;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/creation/b/a/b;

    move-result-object v0

    return-object v0
.end method
