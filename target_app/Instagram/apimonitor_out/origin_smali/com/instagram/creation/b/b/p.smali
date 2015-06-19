.class public final Lcom/instagram/creation/b/b/p;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "VenueDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer",
        "<",
        "Lcom/instagram/venue/model/Venue;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-class v0, Lcom/instagram/venue/model/Venue;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/venue/model/Venue;
    .registers 5

    const-class v0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/l;->readValueAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    new-instance v1, Lcom/instagram/venue/model/Venue;

    invoke-direct {v1}, Lcom/instagram/venue/model/Venue;-><init>()V

    const-string v2, "latitude"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/venue/model/Venue;->a(Ljava/lang/Double;)V

    const-string v2, "longitude"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/venue/model/Venue;->b(Ljava/lang/Double;)V

    const-string v2, "address"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/venue/model/Venue;->c(Ljava/lang/String;)V

    const-string v2, "externalId"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/venue/model/Venue;->d(Ljava/lang/String;)V

    const-string v2, "externalSource"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/venue/model/Venue;->e(Ljava/lang/String;)V

    const-string v2, "id"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/venue/model/Venue;->a(Ljava/lang/String;)V

    const-string v2, "name"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/venue/model/Venue;->b(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .registers 4

    invoke-static {p1}, Lcom/instagram/creation/b/b/p;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/venue/model/Venue;

    move-result-object v0

    return-object v0
.end method
