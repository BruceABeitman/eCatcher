.class public final Lcom/instagram/n/e/a;
.super Ljava/lang/Object;
.source "JSONUtil.java"


# direct methods
.method public static a(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;
    .registers 3

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const-string v0, "pk"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_26

    const-string v0, "pk"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_26
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No primary key found for parsed object"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
