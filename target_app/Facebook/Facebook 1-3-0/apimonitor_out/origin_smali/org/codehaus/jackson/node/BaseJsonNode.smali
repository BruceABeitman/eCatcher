.class public abstract Lorg/codehaus/jackson/node/BaseJsonNode;
.super Lorg/codehaus/jackson/JsonNode;

# interfaces
.implements Lorg/codehaus/jackson/map/JsonSerializable;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/codehaus/jackson/JsonNode;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public final writeTo(Lorg/codehaus/jackson/JsonGenerator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/node/BaseJsonNode;->serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method
