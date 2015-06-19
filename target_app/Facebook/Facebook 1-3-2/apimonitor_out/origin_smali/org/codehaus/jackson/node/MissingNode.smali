.class public final Lorg/codehaus/jackson/node/MissingNode;
.super Lorg/codehaus/jackson/node/BaseJsonNode;


# static fields
.field private static final instance:Lorg/codehaus/jackson/node/MissingNode;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/codehaus/jackson/node/MissingNode;

    invoke-direct {v0}, Lorg/codehaus/jackson/node/MissingNode;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/node/MissingNode;->instance:Lorg/codehaus/jackson/node/MissingNode;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/codehaus/jackson/node/BaseJsonNode;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/codehaus/jackson/node/MissingNode;
    .registers 1

    sget-object v0, Lorg/codehaus/jackson/node/MissingNode;->instance:Lorg/codehaus/jackson/node/MissingNode;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public getValueAsText()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public isMissingNode()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public path(I)Lorg/codehaus/jackson/JsonNode;
    .registers 2

    return-object p0
.end method

.method public path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .registers 2

    return-object p0
.end method

.method public final serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method
