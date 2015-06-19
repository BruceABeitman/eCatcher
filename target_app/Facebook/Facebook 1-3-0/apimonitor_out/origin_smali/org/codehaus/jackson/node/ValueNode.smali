.class public abstract Lorg/codehaus/jackson/node/ValueNode;
.super Lorg/codehaus/jackson/node/BaseJsonNode;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/codehaus/jackson/node/BaseJsonNode;-><init>()V

    return-void
.end method


# virtual methods
.method public isValueNode()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public path(I)Lorg/codehaus/jackson/JsonNode;
    .registers 3

    invoke-static {}, Lorg/codehaus/jackson/node/MissingNode;->getInstance()Lorg/codehaus/jackson/node/MissingNode;

    move-result-object v0

    return-object v0
.end method

.method public path(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .registers 3

    invoke-static {}, Lorg/codehaus/jackson/node/MissingNode;->getInstance()Lorg/codehaus/jackson/node/MissingNode;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ValueNode;->getValueAsText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
