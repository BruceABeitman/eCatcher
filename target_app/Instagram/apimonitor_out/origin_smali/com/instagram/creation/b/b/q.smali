.class public final Lcom/instagram/creation/b/b/q;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "VenueSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<",
        "Lcom/instagram/venue/model/Venue;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-class v0, Lcom/instagram/venue/model/Venue;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private static a(Lcom/instagram/venue/model/Venue;Lcom/fasterxml/jackson/a/h;)V
    .registers 5

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    const-string v0, "latitude"

    invoke-virtual {p0}, Lcom/instagram/venue/model/Venue;->g()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;D)V

    const-string v0, "longitude"

    invoke-virtual {p0}, Lcom/instagram/venue/model/Venue;->h()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;D)V

    const-string v0, "address"

    invoke-virtual {p0}, Lcom/instagram/venue/model/Venue;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "externalId"

    invoke-virtual {p0}, Lcom/instagram/venue/model/Venue;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "externalSource"

    invoke-virtual {p0}, Lcom/instagram/venue/model/Venue;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-virtual {p0}, Lcom/instagram/venue/model/Venue;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-virtual {p0}, Lcom/instagram/venue/model/Venue;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    return-void
.end method


# virtual methods
.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 4

    check-cast p1, Lcom/instagram/venue/model/Venue;

    invoke-static {p1, p2}, Lcom/instagram/creation/b/b/q;->a(Lcom/instagram/venue/model/Venue;Lcom/fasterxml/jackson/a/h;)V

    return-void
.end method
