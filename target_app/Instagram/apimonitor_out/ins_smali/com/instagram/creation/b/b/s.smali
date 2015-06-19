.class public final Lcom/instagram/creation/b/b/s;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "VideoUploadUrlSerializer.java"
.method public constructor <init>()V
.registers 2
const-class v0, Lcom/instagram/creation/b/a/i;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method private static a(Lcom/instagram/creation/b/a/i;Lcom/fasterxml/jackson/a/h;)V
.registers 5
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V
const-string v0, "url"
invoke-virtual {p0}, Lcom/instagram/creation/b/a/i;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "job"
invoke-virtual {p0}, Lcom/instagram/creation/b/a/i;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "expires"
invoke-virtual {p0}, Lcom/instagram/creation/b/a/i;->a()Ljava/util/Date;
move-result-object v1
invoke-virtual {v1}, Ljava/util/Date;->getTime()J
move-result-wide v1
invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;J)V
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V
return-void
.end method
.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
check-cast p1, Lcom/instagram/creation/b/a/i;
invoke-static {p1, p2}, Lcom/instagram/creation/b/b/s;->a(Lcom/instagram/creation/b/a/i;Lcom/fasterxml/jackson/a/h;)V
return-void
.end method