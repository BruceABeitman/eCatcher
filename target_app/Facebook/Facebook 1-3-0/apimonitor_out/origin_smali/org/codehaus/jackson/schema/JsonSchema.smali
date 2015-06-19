.class public Lorg/codehaus/jackson/schema/JsonSchema;
.super Ljava/lang/Object;


# instance fields
.field private final schema:Lorg/codehaus/jackson/node/ObjectNode;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/node/ObjectNode;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codehaus/jackson/schema/JsonSchema;->schema:Lorg/codehaus/jackson/node/ObjectNode;

    return-void
.end method

.method public static getDefaultSchemaNode()Lorg/codehaus/jackson/JsonNode;
    .registers 3

    sget-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->instance:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->objectNode()Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "any"

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "optional"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/codehaus/jackson/schema/JsonSchema;->schema:Lorg/codehaus/jackson/node/ObjectNode;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/node/ObjectNode;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getSchemaNode()Lorg/codehaus/jackson/node/ObjectNode;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/schema/JsonSchema;->schema:Lorg/codehaus/jackson/node/ObjectNode;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/schema/JsonSchema;->schema:Lorg/codehaus/jackson/node/ObjectNode;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
