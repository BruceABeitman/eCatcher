.class public final Lcom/fasterxml/jackson/databind/node/BooleanNode;
.super Lcom/fasterxml/jackson/databind/node/ValueNode;
.source "SourceFile"
.field public static final FALSE:Lcom/fasterxml/jackson/databind/node/BooleanNode;
.field public static final TRUE:Lcom/fasterxml/jackson/databind/node/BooleanNode;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/node/BooleanNode;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/node/BooleanNode;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->TRUE:Lcom/fasterxml/jackson/databind/node/BooleanNode;
new-instance v0, Lcom/fasterxml/jackson/databind/node/BooleanNode;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/node/BooleanNode;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->FALSE:Lcom/fasterxml/jackson/databind/node/BooleanNode;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/ValueNode;-><init>()V
return-void
.end method
.method public static getFalse()Lcom/fasterxml/jackson/databind/node/BooleanNode;
.registers 1
sget-object v0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->FALSE:Lcom/fasterxml/jackson/databind/node/BooleanNode;
return-object v0
.end method
.method public static getTrue()Lcom/fasterxml/jackson/databind/node/BooleanNode;
.registers 1
sget-object v0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->TRUE:Lcom/fasterxml/jackson/databind/node/BooleanNode;
return-object v0
.end method
.method public final asText()Ljava/lang/String;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->TRUE:Lcom/fasterxml/jackson/databind/node/BooleanNode;
if-ne p0, v0, :cond_7
const-string v0, "true"
:goto_6
return-object v0
:cond_7
const-string v0, "false"
goto :goto_6
.end method
.method public final asToken()Lcom/fasterxml/jackson/core/JsonToken;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->TRUE:Lcom/fasterxml/jackson/databind/node/BooleanNode;
if-ne p0, v0, :cond_7
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;
:goto_6
return-object v0
:cond_7
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;
goto :goto_6
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
.method public final serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
sget-object v0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->TRUE:Lcom/fasterxml/jackson/databind/node/BooleanNode;
if-ne p0, v0, :cond_9
const/4 v0, 0x1
:goto_5
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBoolean(Z)V
return-void
:cond_9
const/4 v0, 0x0
goto :goto_5
.end method