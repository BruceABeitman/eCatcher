.class final Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Empty;
.super Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
.source "SourceFile"
.field protected static final instance:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Empty;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Empty;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Empty;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Empty;->instance:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Empty;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;-><init>()V
return-void
.end method
.method public final newWith(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
.registers 4
new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Single;
invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Single;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
return-object v0
.end method
.method public final serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 3
const/4 v0, 0x0
return-object v0
.end method