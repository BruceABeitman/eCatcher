.class public Lcom/fasterxml/jackson/databind/ser/std/NullSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "SourceFile"
.field public static final instance:Lcom/fasterxml/jackson/databind/ser/std/NullSerializer;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/NullSerializer;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/std/NullSerializer;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/NullSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/NullSerializer;
return-void
.end method
.method private constructor <init>()V
.registers 2
const-class v0, Ljava/lang/Object;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method public serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V
return-void
.end method