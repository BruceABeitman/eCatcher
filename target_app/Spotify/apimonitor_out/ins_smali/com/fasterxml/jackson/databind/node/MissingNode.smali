.class public final Lcom/fasterxml/jackson/databind/node/MissingNode;
.super Lcom/fasterxml/jackson/databind/node/BaseJsonNode;
.source "SourceFile"
.field private static final instance:Lcom/fasterxml/jackson/databind/node/MissingNode;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/node/MissingNode;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/node/MissingNode;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/node/MissingNode;->instance:Lcom/fasterxml/jackson/databind/node/MissingNode;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;-><init>()V
return-void
.end method
.method public static getInstance()Lcom/fasterxml/jackson/databind/node/MissingNode;
.registers 1
sget-object v0, Lcom/fasterxml/jackson/databind/node/MissingNode;->instance:Lcom/fasterxml/jackson/databind/node/MissingNode;
return-object v0
.end method
.method public final asText()Ljava/lang/String;
.registers 2
const-string v0, ""
return-object v0
.end method
.method public final asToken()Lcom/fasterxml/jackson/core/JsonToken;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;
return-object v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 3
if-ne p1, p0, :cond_4
const/4 v0, 0x1
:goto_3
return v0
:cond_4
const/4 v0, 0x0
goto :goto_3
.end method
.method public final isMissingNode()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 3
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V
return-void
.end method
.method public final serializeWithType(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
.registers 4
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V
return-void
.end method
.method public final toString()Ljava/lang/String;
.registers 2
const-string v0, ""
return-object v0
.end method