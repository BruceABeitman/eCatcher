.class public final Lcom/instagram/creation/b/b/j;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "PendingMediaSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<",
        "Lcom/instagram/creation/b/a/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-class v0, Lcom/instagram/creation/b/a/b;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private static a(Lcom/instagram/creation/b/a/b;Lcom/fasterxml/jackson/a/h;)V
    .registers 6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->m()Lcom/instagram/model/a/a;

    move-result-object v1

    sget-object v0, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;

    if-ne v1, v0, :cond_164

    const-string v0, "mediaType"

    const-string v2, "photo"

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_12
    const-string v0, "serverStatus"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->y()Lcom/instagram/creation/b/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "targetStatus"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->z()Lcom/instagram/creation/b/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/creation/b/a/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "imageFilePath"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "timestamp"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;

    if-ne v1, v0, :cond_9c

    const-string v0, "videoFilePath"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "videoResult"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "recordingSessionFilePath"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stitchedVideoInfo"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->getCodec()Lcom/fasterxml/jackson/a/s;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->J()Lcom/instagram/creation/b/a/a;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V

    const-string v0, "videoInfoList"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->getCodec()Lcom/fasterxml/jackson/a/s;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->I()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V

    const-string v0, "videoUploadUrls"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->getCodec()Lcom/fasterxml/jackson/a/s;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->C()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V

    :cond_9c
    const-string v0, "sourceType"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->c()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;I)V

    const-string v0, "filterTypeOrdinal"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->d()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;I)V

    const-string v0, "twitterEnabled"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->p()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeBooleanField(Ljava/lang/String;Z)V

    const-string v0, "facebookEnabled"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->r()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeBooleanField(Ljava/lang/String;Z)V

    const-string v0, "foursquareEnabled"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->s()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeBooleanField(Ljava/lang/String;Z)V

    const-string v0, "tumblrEnabled"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->t()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeBooleanField(Ljava/lang/String;Z)V

    const-string v0, "vkontakteEnabled"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->u()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeBooleanField(Ljava/lang/String;Z)V

    const-string v0, "flickrEnabled"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->q()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeBooleanField(Ljava/lang/String;Z)V

    const-string v0, "latitude"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->g()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;D)V

    const-string v0, "longitude"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->h()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;D)V

    const-string v0, "location"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->i()Lcom/instagram/venue/model/Venue;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "foursquare_request_id"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "caption"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "originalWidth"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->G()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;I)V

    const-string v0, "originalHeight"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->H()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;I)V

    sget-object v0, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;

    if-ne v1, v0, :cond_141

    const-string v0, "peopleTags"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->getCodec()Lcom/fasterxml/jackson/a/s;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->D()Lcom/instagram/model/people/b;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V

    :cond_141
    const-string v0, "direct_share"

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->O()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeBooleanField(Ljava/lang/String;Z)V

    const-string v0, "recipients"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->getCodec()Lcom/fasterxml/jackson/a/s;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->M()Lcom/instagram/creation/b/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/g;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    return-void

    :cond_164
    sget-object v0, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;

    if-ne v1, v0, :cond_12

    const-string v0, "mediaType"

    const-string v2, "video"

    invoke-virtual {p1, v0, v2}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12
.end method


# virtual methods
.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 4

    check-cast p1, Lcom/instagram/creation/b/a/b;

    invoke-static {p1, p2}, Lcom/instagram/creation/b/b/j;->a(Lcom/instagram/creation/b/a/b;Lcom/fasterxml/jackson/a/h;)V

    return-void
.end method
