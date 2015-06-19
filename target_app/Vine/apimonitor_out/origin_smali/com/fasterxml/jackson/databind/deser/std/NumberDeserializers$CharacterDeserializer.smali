.class public final Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$PrimitiveOrWrapperDeserializer;
.source "NumberDeserializers.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CharacterDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$PrimitiveOrWrapperDeserializer",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# static fields
.field private static final primitiveInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer; = null

.field private static final serialVersionUID:J = 0x1L

.field private static final wrapperInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;

    const-class v1, Ljava/lang/Character;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Character;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;->primitiveInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Character;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;->wrapperInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Character;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/lang/Character;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$PrimitiveOrWrapperDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;
    .registers 1

    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;->wrapperInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;

    return-object v0
.end method

.method static synthetic access$400()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;
    .registers 1

    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;->primitiveInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;

    return-object v0
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Character;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_19

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v1

    if-ltz v1, :cond_3f

    const v2, 0xffff

    if-gt v1, v2, :cond_3f

    int-to-char v0, v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3f

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_32

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_18

    :cond_32
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3f

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;->getEmptyValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    goto :goto_18

    :cond_3f
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$CharacterDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method
