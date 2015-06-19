.class public abstract Lcom/fasterxml/jackson/databind/JsonNode;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/fasterxml/jackson/core/TreeNode;
.implements Ljava/lang/Iterable;
.field protected static final NO_NODES:Ljava/util/List;
.field protected static final NO_STRINGS:Ljava/util/List;
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
sput-object v0, Lcom/fasterxml/jackson/databind/JsonNode;->NO_NODES:Ljava/util/List;
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
sput-object v0, Lcom/fasterxml/jackson/databind/JsonNode;->NO_STRINGS:Ljava/util/List;
return-void
.end method
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public abstract asText()Ljava/lang/String;
.end method
.method public abstract asToken()Lcom/fasterxml/jackson/core/JsonToken;
.end method
.method public bigIntegerValue()Ljava/math/BigInteger;
.registers 2
sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;
return-object v0
.end method
.method public binaryValue()[B
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public decimalValue()Ljava/math/BigDecimal;
.registers 2
sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;
return-object v0
.end method
.method public doubleValue()D
.registers 3
const-wide/16 v0, 0x0
return-wide v0
.end method
.method public elements()Ljava/util/Iterator;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/databind/JsonNode;->NO_NODES:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method
.method public abstract equals(Ljava/lang/Object;)Z
.end method
.method public fields()Ljava/util/Iterator;
.registers 2
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method
.method public get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public has(Ljava/lang/String;)Z
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public intValue()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isArray()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isBinary()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isMissingNode()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isNull()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isNumber()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isObject()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isPojo()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final iterator()Ljava/util/Iterator;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->elements()Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method
.method public longValue()J
.registers 3
const-wide/16 v0, 0x0
return-wide v0
.end method
.method public abstract numberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
.end method
.method public numberValue()Ljava/lang/Number;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public size()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public textValue()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public abstract toString()Ljava/lang/String;
.end method