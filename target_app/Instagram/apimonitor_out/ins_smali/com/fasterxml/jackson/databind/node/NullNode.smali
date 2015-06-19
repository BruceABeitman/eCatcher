.class public final Lcom/fasterxml/jackson/databind/node/NullNode;
.super Lcom/fasterxml/jackson/databind/node/ValueNode;
.source "NullNode.java"
.field public static final instance:Lcom/fasterxml/jackson/databind/node/NullNode;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/node/NullNode;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/node/NullNode;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/node/NullNode;->instance:Lcom/fasterxml/jackson/databind/node/NullNode;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/ValueNode;-><init>()V
return-void
.end method
.method public static getInstance()Lcom/fasterxml/jackson/databind/node/NullNode;
.registers 1
sget-object v0, Lcom/fasterxml/jackson/databind/node/NullNode;->instance:Lcom/fasterxml/jackson/databind/node/NullNode;
return-object v0
.end method
.method public final asText()Ljava/lang/String;
.registers 2
const-string v0, "null"
return-object v0
.end method
.method public final asToken()Lcom/fasterxml/jackson/a/r;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;
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
.method public final getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->NULL:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
return-object v0
.end method
.method public final serialize(Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 3
invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/a/h;)V
return-void
.end method