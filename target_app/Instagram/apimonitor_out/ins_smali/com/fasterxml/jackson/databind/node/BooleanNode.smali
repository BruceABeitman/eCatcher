.class public final Lcom/fasterxml/jackson/databind/node/BooleanNode;
.super Lcom/fasterxml/jackson/databind/node/ValueNode;
.source "BooleanNode.java"
.field public static final FALSE:Lcom/fasterxml/jackson/databind/node/BooleanNode;
.field public static final TRUE:Lcom/fasterxml/jackson/databind/node/BooleanNode;
.field private final _value:Z
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/fasterxml/jackson/databind/node/BooleanNode;
const/4 v1, 0x1
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/node/BooleanNode;-><init>(Z)V
sput-object v0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->TRUE:Lcom/fasterxml/jackson/databind/node/BooleanNode;
new-instance v0, Lcom/fasterxml/jackson/databind/node/BooleanNode;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/node/BooleanNode;-><init>(Z)V
sput-object v0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->FALSE:Lcom/fasterxml/jackson/databind/node/BooleanNode;
return-void
.end method
.method private constructor <init>(Z)V
.registers 2
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/ValueNode;-><init>()V
iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z
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
.method public static valueOf(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;
.registers 2
if-eqz p0, :cond_5
sget-object v0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->TRUE:Lcom/fasterxml/jackson/databind/node/BooleanNode;
:goto_4
return-object v0
:cond_5
sget-object v0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->FALSE:Lcom/fasterxml/jackson/databind/node/BooleanNode;
goto :goto_4
.end method
.method public final asBoolean()Z
.registers 2
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z
return v0
.end method
.method public final asBoolean(Z)Z
.registers 3
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z
return v0
.end method
.method public final asDouble(D)D
.registers 5
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z
if-eqz v0, :cond_7
const-wide/high16 v0, 0x3ff0
:goto_6
return-wide v0
:cond_7
const-wide/16 v0, 0x0
goto :goto_6
.end method
.method public final asInt(I)I
.registers 3
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public final asLong(J)J
.registers 5
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z
if-eqz v0, :cond_7
const-wide/16 v0, 0x1
:goto_6
return-wide v0
:cond_7
const-wide/16 v0, 0x0
goto :goto_6
.end method
.method public final asText()Ljava/lang/String;
.registers 2
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z
if-eqz v0, :cond_7
const-string v0, "true"
:goto_6
return-object v0
:cond_7
const-string v0, "false"
goto :goto_6
.end method
.method public final asToken()Lcom/fasterxml/jackson/a/r;
.registers 2
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z
if-eqz v0, :cond_7
sget-object v0, Lcom/fasterxml/jackson/a/r;->k:Lcom/fasterxml/jackson/a/r;
:goto_6
return-object v0
:cond_7
sget-object v0, Lcom/fasterxml/jackson/a/r;->l:Lcom/fasterxml/jackson/a/r;
goto :goto_6
.end method
.method public final booleanValue()Z
.registers 2
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z
return v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p1, p0, :cond_5
:cond_4
:goto_4
return v0
:cond_5
if-nez p1, :cond_9
move v0, v1
goto :goto_4
:cond_9
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_15
move v0, v1
goto :goto_4
:cond_15
iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z
check-cast p1, Lcom/fasterxml/jackson/databind/node/BooleanNode;
iget-boolean v3, p1, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z
if-eq v2, v3, :cond_4
move v0, v1
goto :goto_4
.end method
.method public final getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->BOOLEAN:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
return-object v0
.end method
.method public final serialize(Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/BooleanNode;->_value:Z
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeBoolean(Z)V
return-void
.end method