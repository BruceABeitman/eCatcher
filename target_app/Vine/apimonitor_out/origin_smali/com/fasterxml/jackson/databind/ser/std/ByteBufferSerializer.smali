.class public Lcom/fasterxml/jackson/databind/ser/std/ByteBufferSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;
.source "ByteBufferSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer",
        "<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# static fields
.field public static final instance:Lcom/fasterxml/jackson/databind/ser/std/ByteBufferSerializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/ByteBufferSerializer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/std/ByteBufferSerializer;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/ByteBufferSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/ByteBufferSerializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-class v0, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/ByteBufferSerializer;->serialize(Ljava/nio/ByteBuffer;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/nio/ByteBuffer;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBinary([BII)V

    :goto_12
    return-void

    :cond_13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-lez v1, :cond_20

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :cond_20
    new-instance v1, Lcom/fasterxml/jackson/databind/util/ByteBufferBackedInputStream;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/util/ByteBufferBackedInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBinary(Ljava/io/InputStream;I)I

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_12
.end method
