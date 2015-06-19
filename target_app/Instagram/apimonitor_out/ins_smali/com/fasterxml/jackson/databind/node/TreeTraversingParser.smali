.class public Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;
.super Lcom/fasterxml/jackson/a/a/d;
.source "TreeTraversingParser.java"
.field protected _closed:Z
.field protected _nextToken:Lcom/fasterxml/jackson/a/r;
.field protected _nodeCursor:Lcom/fasterxml/jackson/databind/node/NodeCursor;
.field protected _objectCodec:Lcom/fasterxml/jackson/a/s;
.field protected _startContainer:Z
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JsonNode;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;-><init>(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/a/s;)V
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/a/s;)V
.registers 5
const/4 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/a/d;-><init>(I)V
iput-object p2, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_objectCodec:Lcom/fasterxml/jackson/a/s;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z
move-result v0
if-eqz v0, :cond_19
sget-object v0, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_nextToken:Lcom/fasterxml/jackson/a/r;
new-instance v0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;
invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;-><init>(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/node/NodeCursor;)V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_nodeCursor:Lcom/fasterxml/jackson/databind/node/NodeCursor;
:goto_18
return-void
:cond_19
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->isObject()Z
move-result v0
if-eqz v0, :cond_2b
sget-object v0, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_nextToken:Lcom/fasterxml/jackson/a/r;
new-instance v0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Object;
invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/databind/node/NodeCursor$Object;-><init>(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/node/NodeCursor;)V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_nodeCursor:Lcom/fasterxml/jackson/databind/node/NodeCursor;
goto :goto_18
:cond_2b
new-instance v0, Lcom/fasterxml/jackson/databind/node/NodeCursor$RootValue;
invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/databind/node/NodeCursor$RootValue;-><init>(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/node/NodeCursor;)V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_nodeCursor:Lcom/fasterxml/jackson/databind/node/NodeCursor;
goto :goto_18
.end method
.method protected _handleEOF()V
.registers 1
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_throwInternal()V
return-void
.end method
.method public close()V
.registers 3
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_closed:Z
if-nez v0, :cond_c
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_closed:Z
iput-object v1, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_nodeCursor:Lcom/fasterxml/jackson/databind/node/NodeCursor;
iput-object v1, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_currToken:Lcom/fasterxml/jackson/a/r;
:cond_c
return-void
.end method
.method protected currentNode()Lcom/fasterxml/jackson/databind/JsonNode;
.registers 2
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_closed:Z
if-nez v0, :cond_8
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_nodeCursor:Lcom/fasterxml/jackson/databind/node/NodeCursor;
if-nez v0, :cond_a
:cond_8
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_nodeCursor:Lcom/fasterxml/jackson/databind/node/NodeCursor;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/NodeCursor;->currentNode()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
goto :goto_9
.end method
.method protected currentNumericNode()Lcom/fasterxml/jackson/databind/JsonNode;
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->currentNode()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-eqz v0, :cond_c
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNumber()Z
move-result v1
if-nez v1, :cond_2e
:cond_c
if-nez v0, :cond_29
const/4 v0, 0x0
:goto_f
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Current token ("
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") not numeric, can not use numeric value accessors"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/a/k;
move-result-object v0
throw v0
:cond_29
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
goto :goto_f
:cond_2e
return-object v0
.end method
.method public getBigIntegerValue()Ljava/math/BigInteger;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->currentNumericNode()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->bigIntegerValue()Ljava/math/BigInteger;
move-result-object v0
return-object v0
.end method
.method public getBinaryValue(Lcom/fasterxml/jackson/a/a;)[B
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->currentNode()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-eqz v0, :cond_23
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->binaryValue()[B
move-result-object v1
if-eqz v1, :cond_e
move-object v0, v1
:goto_d
return-object v0
:cond_e
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isPojo()Z
move-result v1
if-eqz v1, :cond_23
check-cast v0, Lcom/fasterxml/jackson/databind/node/POJONode;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/POJONode;->getPojo()Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, [B
if-eqz v1, :cond_23
check-cast v0, [B
check-cast v0, [B
goto :goto_d
:cond_23
const/4 v0, 0x0
goto :goto_d
.end method
.method public getCodec()Lcom/fasterxml/jackson/a/s;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_objectCodec:Lcom/fasterxml/jackson/a/s;
return-object v0
.end method
.method public getCurrentLocation()Lcom/fasterxml/jackson/a/j;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/a/j;->a:Lcom/fasterxml/jackson/a/j;
return-object v0
.end method
.method public getCurrentName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_nodeCursor:Lcom/fasterxml/jackson/databind/node/NodeCursor;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_nodeCursor:Lcom/fasterxml/jackson/databind/node/NodeCursor;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/NodeCursor;->getCurrentName()Ljava/lang/String;
move-result-object v0
goto :goto_5
.end method
.method public getDecimalValue()Ljava/math/BigDecimal;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->currentNumericNode()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->decimalValue()Ljava/math/BigDecimal;
move-result-object v0
return-object v0
.end method
.method public getDoubleValue()D
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->currentNumericNode()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->doubleValue()D
move-result-wide v0
return-wide v0
.end method
.method public getEmbeddedObject()Ljava/lang/Object;
.registers 3
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_closed:Z
if-nez v0, :cond_24
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->currentNode()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-eqz v0, :cond_24
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isPojo()Z
move-result v1
if-eqz v1, :cond_17
check-cast v0, Lcom/fasterxml/jackson/databind/node/POJONode;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/POJONode;->getPojo()Ljava/lang/Object;
move-result-object v0
:goto_16
return-object v0
:cond_17
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isBinary()Z
move-result v1
if-eqz v1, :cond_24
check-cast v0, Lcom/fasterxml/jackson/databind/node/BinaryNode;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/BinaryNode;->binaryValue()[B
move-result-object v0
goto :goto_16
:cond_24
const/4 v0, 0x0
goto :goto_16
.end method
.method public getFloatValue()F
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->currentNumericNode()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->doubleValue()D
move-result-wide v0
double-to-float v0, v0
return v0
.end method
.method public getIntValue()I
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->currentNumericNode()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->intValue()I
move-result v0
return v0
.end method
.method public getLongValue()J
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->currentNumericNode()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->longValue()J
move-result-wide v0
return-wide v0
.end method
.method public getNumberType$72641f5()I
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->currentNumericNode()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return v0
:cond_8
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->numberType$72641f5()I
move-result v0
goto :goto_7
.end method
.method public getNumberValue()Ljava/lang/Number;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->currentNumericNode()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->numberValue()Ljava/lang/Number;
move-result-object v0
return-object v0
.end method
.method public getParsingContext()Lcom/fasterxml/jackson/a/q;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_nodeCursor:Lcom/fasterxml/jackson/databind/node/NodeCursor;
return-object v0
.end method
.method public getText()Ljava/lang/String;
.registers 4
const/4 v0, 0x0
iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_closed:Z
if-eqz v1, :cond_6
:goto_5
:cond_5
return-object v0
:cond_6
sget-object v1, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
iget-object v2, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_currToken:Lcom/fasterxml/jackson/a/r;
invoke-virtual {v2}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_4c
:cond_13
iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_currToken:Lcom/fasterxml/jackson/a/r;
if-eqz v1, :cond_5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_currToken:Lcom/fasterxml/jackson/a/r;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/r;->a()Ljava/lang/String;
move-result-object v0
goto :goto_5
:pswitch_1e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_nodeCursor:Lcom/fasterxml/jackson/databind/node/NodeCursor;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/NodeCursor;->getCurrentName()Ljava/lang/String;
move-result-object v0
goto :goto_5
:pswitch_25
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->currentNode()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;
move-result-object v0
goto :goto_5
:pswitch_2e
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->currentNode()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->numberValue()Ljava/lang/Number;
move-result-object v0
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_5
:pswitch_3b
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->currentNode()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v1
if-eqz v1, :cond_13
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->isBinary()Z
move-result v2
if-eqz v2, :cond_13
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;
move-result-object v0
goto :goto_5
:pswitch_data_4c
.packed-switch 0x1
:pswitch_1e
:pswitch_25
:pswitch_2e
:pswitch_2e
:pswitch_3b
.end packed-switch
.end method
.method public getTextCharacters()[C
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->getText()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
return-object v0
.end method
.method public getTextLength()I
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->getText()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
return v0
.end method
.method public getTextOffset()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getTokenLocation()Lcom/fasterxml/jackson/a/j;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/a/j;->a:Lcom/fasterxml/jackson/a/j;
return-object v0
.end method
.method public hasTextCharacters()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isClosed()Z
.registers 2
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_closed:Z
return v0
.end method
.method public nextToken()Lcom/fasterxml/jackson/a/r;
.registers 4
const/4 v0, 0x0
const/4 v2, 0x1
iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_nextToken:Lcom/fasterxml/jackson/a/r;
if-eqz v1, :cond_f
iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_nextToken:Lcom/fasterxml/jackson/a/r;
iput-object v1, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_currToken:Lcom/fasterxml/jackson/a/r;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_nextToken:Lcom/fasterxml/jackson/a/r;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_currToken:Lcom/fasterxml/jackson/a/r;
:goto_e
return-object v0
:cond_f
iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_startContainer:Z
if-eqz v1, :cond_4f
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_startContainer:Z
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_nodeCursor:Lcom/fasterxml/jackson/databind/node/NodeCursor;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/NodeCursor;->currentHasChildren()Z
move-result v0
if-nez v0, :cond_2e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_currToken:Lcom/fasterxml/jackson/a/r;
sget-object v1, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_2b
sget-object v0, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;
:goto_26
iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_currToken:Lcom/fasterxml/jackson/a/r;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_currToken:Lcom/fasterxml/jackson/a/r;
goto :goto_e
:cond_2b
sget-object v0, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;
goto :goto_26
:cond_2e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_nodeCursor:Lcom/fasterxml/jackson/databind/node/NodeCursor;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/NodeCursor;->iterateChildren()Lcom/fasterxml/jackson/databind/node/NodeCursor;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_nodeCursor:Lcom/fasterxml/jackson/databind/node/NodeCursor;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_nodeCursor:Lcom/fasterxml/jackson/databind/node/NodeCursor;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/NodeCursor;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_currToken:Lcom/fasterxml/jackson/a/r;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_currToken:Lcom/fasterxml/jackson/a/r;
sget-object v1, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;
if-eq v0, v1, :cond_4a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_currToken:Lcom/fasterxml/jackson/a/r;
sget-object v1, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_4c
:cond_4a
iput-boolean v2, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_startContainer:Z
:cond_4c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_currToken:Lcom/fasterxml/jackson/a/r;
goto :goto_e
:cond_4f
iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_nodeCursor:Lcom/fasterxml/jackson/databind/node/NodeCursor;
if-nez v1, :cond_56
iput-boolean v2, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_closed:Z
goto :goto_e
:cond_56
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_nodeCursor:Lcom/fasterxml/jackson/databind/node/NodeCursor;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/NodeCursor;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_currToken:Lcom/fasterxml/jackson/a/r;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_currToken:Lcom/fasterxml/jackson/a/r;
if-eqz v0, :cond_73
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_currToken:Lcom/fasterxml/jackson/a/r;
sget-object v1, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;
if-eq v0, v1, :cond_6e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_currToken:Lcom/fasterxml/jackson/a/r;
sget-object v1, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_70
:cond_6e
iput-boolean v2, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_startContainer:Z
:cond_70
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_currToken:Lcom/fasterxml/jackson/a/r;
goto :goto_e
:cond_73
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_nodeCursor:Lcom/fasterxml/jackson/databind/node/NodeCursor;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/NodeCursor;->endToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_currToken:Lcom/fasterxml/jackson/a/r;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_nodeCursor:Lcom/fasterxml/jackson/databind/node/NodeCursor;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/NodeCursor;->getParent()Lcom/fasterxml/jackson/databind/node/NodeCursor;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_nodeCursor:Lcom/fasterxml/jackson/databind/node/NodeCursor;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_currToken:Lcom/fasterxml/jackson/a/r;
goto :goto_e
.end method
.method public overrideCurrentName(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_nodeCursor:Lcom/fasterxml/jackson/databind/node/NodeCursor;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_nodeCursor:Lcom/fasterxml/jackson/databind/node/NodeCursor;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/NodeCursor;->overrideCurrentName(Ljava/lang/String;)V
:cond_9
return-void
.end method
.method public readBinaryValue(Lcom/fasterxml/jackson/a/a;Ljava/io/OutputStream;)I
.registers 6
const/4 v0, 0x0
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->getBinaryValue(Lcom/fasterxml/jackson/a/a;)[B
move-result-object v1
if-eqz v1, :cond_c
array-length v2, v1
invoke-virtual {p2, v1, v0, v2}, Ljava/io/OutputStream;->write([BII)V
array-length v0, v1
:cond_c
return v0
.end method
.method public setCodec(Lcom/fasterxml/jackson/a/s;)V
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_objectCodec:Lcom/fasterxml/jackson/a/s;
return-void
.end method
.method public skipChildren()Lcom/fasterxml/jackson/a/l;
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_currToken:Lcom/fasterxml/jackson/a/r;
sget-object v1, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_e
iput-boolean v2, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_startContainer:Z
sget-object v0, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_currToken:Lcom/fasterxml/jackson/a/r;
:goto_d
:cond_d
return-object p0
:cond_e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_currToken:Lcom/fasterxml/jackson/a/r;
sget-object v1, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_d
iput-boolean v2, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_startContainer:Z
sget-object v0, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;->_currToken:Lcom/fasterxml/jackson/a/r;
goto :goto_d
.end method
.method public version()Lcom/fasterxml/jackson/a/w;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/databind/cfg/PackageVersion;->VERSION:Lcom/fasterxml/jackson/a/w;
return-object v0
.end method