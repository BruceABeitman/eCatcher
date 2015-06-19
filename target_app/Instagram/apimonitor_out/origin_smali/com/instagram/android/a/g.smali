.class final Lcom/instagram/android/a/g;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "NearbyVenuesAdapter.java"


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
.method private constructor <init>()V
    .registers 2

    const-class v0, Lcom/instagram/venue/model/Venue;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/a/g;-><init>()V

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

    const-string v2, "name"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/venue/model/Venue;->b(Ljava/lang/String;)V

    const-string v2, "lat"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const-string v2, "lng"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const-string v2, "lat"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    if-eqz v2, :cond_5c

    const-string v2, "lng"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    if-eqz v2, :cond_5c

    const-string v2, "lat"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/venue/model/Venue;->a(Ljava/lang/Double;)V

    const-string v2, "lng"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/venue/model/Venue;->b(Ljava/lang/Double;)V

    :cond_5c
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "user-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/venue/model/Venue;->e(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/instagram/venue/model/Venue;->j()V

    return-object v1
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .registers 4

    invoke-static {p1}, Lcom/instagram/android/a/g;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/venue/model/Venue;

    move-result-object v0

    return-object v0
.end method
