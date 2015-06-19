.class public final Lcom/instagram/android/foursquare/b;
.super Ljava/lang/Object;
.source "NearbyVenuesResponse.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/venue/model/Venue;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/instagram/service/b/a;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {p1, p2, v0}, Lcom/instagram/service/b/a;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    const-string v1, "request_id"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/foursquare/b;->b:Ljava/lang/String;

    const-string v1, "foursquare_branding"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/instagram/android/foursquare/b;->c:Z

    const-string v1, "venues"

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/foursquare/c;

    invoke-direct {v1, p0}, Lcom/instagram/android/foursquare/c;-><init>(Lcom/instagram/android/foursquare/b;)V

    invoke-virtual {p1, v0}, Lcom/instagram/service/b/a;->treeAsTokens(Lcom/fasterxml/jackson/a/v;)Lcom/fasterxml/jackson/a/l;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/instagram/service/b/a;->readValue(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/a/f/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/instagram/android/foursquare/b;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/venue/model/Venue;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/android/foursquare/b;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/foursquare/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/foursquare/b;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/instagram/android/foursquare/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/android/foursquare/b;->c:Z

    return v0
.end method
