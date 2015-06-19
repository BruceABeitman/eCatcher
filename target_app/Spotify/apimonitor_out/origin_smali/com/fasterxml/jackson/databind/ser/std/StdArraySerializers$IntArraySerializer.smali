.class public final Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$IntArraySerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase",
        "<[I>;"
    }
.end annotation


# static fields
.field private static final VALUE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->uncheckedSimpleType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$IntArraySerializer;->VALUE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-class v0, [I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    return-void
.end method


# virtual methods
.method public final _withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer",
            "<*>;"
        }
    .end annotation

    return-object p0
.end method

.method public final bridge synthetic hasSingleElement(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$IntArraySerializer;->hasSingleElement([I)Z

    move-result v0

    return v0
.end method

.method public final hasSingleElement([I)Z
    .registers 4

    const/4 v0, 0x1

    array-length v1, p1

    if-ne v1, v0, :cond_5

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public final bridge synthetic isEmpty(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$IntArraySerializer;->isEmpty([I)Z

    move-result v0

    return v0
.end method

.method public final isEmpty([I)Z
    .registers 3

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final bridge synthetic serializeContents(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 4

    check-cast p1, [I

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$IntArraySerializer;->serializeContents([ILcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public final serializeContents([ILcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 7

    const/4 v0, 0x0

    array-length v1, p1

    :goto_2
    if-ge v0, v1, :cond_c

    aget v2, p1, v0

    invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method
