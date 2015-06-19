.class public final Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$PrimitiveOrWrapperDeserializer;
.source "NumberDeserializers.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$PrimitiveOrWrapperDeserializer",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final primitiveInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer; = null

.field private static final serialVersionUID:J = 0x1L

.field private static final wrapperInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;

    const-class v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Integer;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;->primitiveInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Integer;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;->wrapperInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Integer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$PrimitiveOrWrapperDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;
    .registers 1

    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;->primitiveInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;

    return-object v0
.end method

.method static synthetic access$800()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;
    .registers 1

    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;->wrapperInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;

    return-object v0
.end method


# virtual methods
.method public final deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Integer;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;->_parseInteger(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final deserializeWithType(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Integer;
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;->_parseInteger(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic deserializeWithType(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$IntegerDeserializer;->deserializeWithType(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
