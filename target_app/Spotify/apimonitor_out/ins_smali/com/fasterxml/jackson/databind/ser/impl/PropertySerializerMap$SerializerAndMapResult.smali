.class public final Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;
.super Ljava/lang/Object;
.source "SourceFile"
.field public final map:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
.field public final serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
return-void
.end method