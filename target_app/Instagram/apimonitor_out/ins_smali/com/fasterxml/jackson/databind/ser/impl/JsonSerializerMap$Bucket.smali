.class final Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;
.super Ljava/lang/Object;
.source "JsonSerializerMap.java"
.field public final key:Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;
.field public final next:Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;
.field public final value:Lcom/fasterxml/jackson/databind/JsonSerializer;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;->next:Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;->key:Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;->value:Lcom/fasterxml/jackson/databind/JsonSerializer;
return-void
.end method