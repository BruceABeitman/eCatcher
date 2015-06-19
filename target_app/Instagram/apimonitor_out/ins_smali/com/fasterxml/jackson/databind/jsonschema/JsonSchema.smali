.class public Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;
.super Ljava/lang/Object;
.source "JsonSchema.java"
.field private final schema:Lcom/fasterxml/jackson/databind/node/ObjectNode;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/node/ObjectNode;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;->schema:Lcom/fasterxml/jackson/databind/node/ObjectNode;
return-void
.end method
.method public static getDefaultSchemaNode()Lcom/fasterxml/jackson/databind/JsonNode;
.registers 3
sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;
move-result-object v0
const-string v1, "type"
const-string v2, "any"
invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
return-object v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 5
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p1, p0, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-nez p1, :cond_9
move v0, v1
goto :goto_4
:cond_9
instance-of v2, p1, Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;
if-nez v2, :cond_f
move v0, v1
goto :goto_4
:cond_f
check-cast p1, Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;->schema:Lcom/fasterxml/jackson/databind/node/ObjectNode;
if-nez v2, :cond_1b
iget-object v2, p1, Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;->schema:Lcom/fasterxml/jackson/databind/node/ObjectNode;
if-eqz v2, :cond_4
move v0, v1
goto :goto_4
:cond_1b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;->schema:Lcom/fasterxml/jackson/databind/node/ObjectNode;
iget-object v1, p1, Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;->schema:Lcom/fasterxml/jackson/databind/node/ObjectNode;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_4
.end method
.method public getSchemaNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;->schema:Lcom/fasterxml/jackson/databind/node/ObjectNode;
return-object v0
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;->schema:Lcom/fasterxml/jackson/databind/node/ObjectNode;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->hashCode()I
move-result v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;->schema:Lcom/fasterxml/jackson/databind/node/ObjectNode;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method