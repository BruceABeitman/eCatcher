.class public final Lcom/instagram/creation/b/b/r;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "VideoUploadUrlDeserializer.java"
.method public constructor <init>()V
.registers 2
const-class v0, Lcom/instagram/creation/b/a/i;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method private static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/creation/b/a/i;
.registers 7
const-class v0, Lcom/fasterxml/jackson/databind/JsonNode;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/l;->readValueAs(Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;
const-string v1, "url"
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;
move-result-object v1
const-string v2, "job"
invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v2
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/util/Date;
const-string v4, "expires"
invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asLong()J
move-result-wide v4
invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V
new-instance v0, Lcom/instagram/creation/b/a/i;
invoke-direct {v0, v1, v2, v3}, Lcom/instagram/creation/b/a/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
return-object v0
.end method
.method public final synthetic deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-static {p1}, Lcom/instagram/creation/b/b/r;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/creation/b/a/i;
move-result-object v0
return-object v0
.end method