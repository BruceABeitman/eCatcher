.class final Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;
.super Ljava/lang/Object;
.source "PropertySerializerMap.java"
.field public final serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
.field public final type:Ljava/lang/Class;
.method public constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;->type:Ljava/lang/Class;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
return-void
.end method