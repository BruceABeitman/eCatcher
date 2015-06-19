.class public Lcom/fasterxml/jackson/databind/util/TokenBuffer;
.super Lcom/fasterxml/jackson/core/JsonGenerator;
.source "TokenBuffer.java"
.field protected static final DEFAULT_GENERATOR_FEATURES:I
.field protected _appendOffset:I
.field protected _closed:Z
.field protected _first:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
.field protected _generatorFeatures:I
.field protected _hasNativeId:Z
.field protected _hasNativeObjectIds:Z
.field protected _hasNativeTypeIds:Z
.field protected _last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
.field protected _mayHaveNativeIds:Z
.field protected _objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;
.field protected _objectId:Ljava/lang/Object;
.field protected _typeId:Ljava/lang/Object;
.field protected _writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->collectDefaults()I
move-result v0
sput v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->DEFAULT_GENERATOR_FEATURES:I
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;-><init>()V
iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeId:Z
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;
sget v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->DEFAULT_GENERATOR_FEATURES:I
iput v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_generatorFeatures:I
const/4 v0, 0x0
invoke-static {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->createRootContext(Lcom/fasterxml/jackson/core/json/DupDetector;)Lcom/fasterxml/jackson/core/json/JsonWriteContext;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_first:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
iput v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->canReadTypeId()Z
move-result v0
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeTypeIds:Z
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->canReadObjectId()Z
move-result v0
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeObjectIds:Z
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeTypeIds:Z
iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeObjectIds:Z
or-int/2addr v0, v1
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_mayHaveNativeIds:Z
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/core/ObjectCodec;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/ObjectCodec;Z)V
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/core/ObjectCodec;Z)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;-><init>()V
iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeId:Z
iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;
sget v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->DEFAULT_GENERATOR_FEATURES:I
iput v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_generatorFeatures:I
const/4 v0, 0x0
invoke-static {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->createRootContext(Lcom/fasterxml/jackson/core/json/DupDetector;)Lcom/fasterxml/jackson/core/json/JsonWriteContext;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_first:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
iput v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeTypeIds:Z
iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeObjectIds:Z
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeTypeIds:Z
iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeObjectIds:Z
or-int/2addr v0, v1
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_mayHaveNativeIds:Z
return-void
.end method
.method private final _appendNativeIds(Ljava/lang/StringBuilder;)V
.registers 5
const/16 v2, 0x5d
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
iget v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->findObjectId(I)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_1f
const-string v1, "[objectId="
invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_1f
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
iget v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->findTypeId(I)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_3c
const-string v1, "[typeId="
invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_3c
return-void
.end method
.method private final _checkNativeIds(Lcom/fasterxml/jackson/core/JsonParser;)V
.registers 4
const/4 v1, 0x1
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTypeId()Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_typeId:Ljava/lang/Object;
if-eqz v0, :cond_b
iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeId:Z
:cond_b
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getObjectId()Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_objectId:Ljava/lang/Object;
if-eqz v0, :cond_15
iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeId:Z
:cond_15
return-void
.end method
.method protected final _append(Lcom/fasterxml/jackson/core/JsonToken;)V
.registers 6
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeId:Z
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
iget v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_objectId:Ljava/lang/Object;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_typeId:Ljava/lang/Object;
invoke-virtual {v0, v1, p1, v2, v3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->append(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
move-result-object v0
:goto_10
if-nez v0, :cond_22
iget v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
:goto_18
return-void
:cond_19
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
iget v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->append(ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
move-result-object v0
goto :goto_10
:cond_22
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
const/4 v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
goto :goto_18
.end method
.method protected final _append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
.registers 9
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeId:Z
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
iget v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
iget-object v4, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_objectId:Ljava/lang/Object;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_typeId:Ljava/lang/Object;
move-object v2, p1
move-object v3, p2
invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->append(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
move-result-object v0
:goto_12
if-nez v0, :cond_24
iget v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
:goto_1a
return-void
:cond_1b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
iget v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
invoke-virtual {v0, v1, p1, p2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->append(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
move-result-object v0
goto :goto_12
:cond_24
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
const/4 v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
goto :goto_1a
.end method
.method protected final _appendRaw(ILjava/lang/Object;)V
.registers 9
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeId:Z
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
iget v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
iget-object v4, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_objectId:Ljava/lang/Object;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_typeId:Ljava/lang/Object;
move v2, p1
move-object v3, p2
invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->appendRaw(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
move-result-object v0
:goto_12
if-nez v0, :cond_24
iget v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
:goto_1a
return-void
:cond_1b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
iget v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
invoke-virtual {v0, v1, p1, p2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->appendRaw(IILjava/lang/Object;)Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
move-result-object v0
goto :goto_12
:cond_24
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
const/4 v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
goto :goto_1a
.end method
.method protected _reportUnsupportedOperation()V
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Called operation not supported for TokenBuffer"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public append(Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Lcom/fasterxml/jackson/databind/util/TokenBuffer;
.registers 4
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeTypeIds:Z
if-nez v0, :cond_a
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->canWriteTypeId()Z
move-result v0
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeTypeIds:Z
:cond_a
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeObjectIds:Z
if-nez v0, :cond_14
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->canWriteObjectId()Z
move-result v0
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeObjectIds:Z
:cond_14
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeTypeIds:Z
iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeObjectIds:Z
or-int/2addr v0, v1
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_mayHaveNativeIds:Z
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser()Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v0
:goto_1f
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
if-eqz v1, :cond_29
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V
goto :goto_1f
:cond_29
return-object p0
.end method
.method public asParser()Lcom/fasterxml/jackson/core/JsonParser;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/fasterxml/jackson/core/ObjectCodec;)Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v0
return-object v0
.end method
.method public asParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;
.registers 7
new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_first:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
move-result-object v2
iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeTypeIds:Z
iget-boolean v4, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeObjectIds:Z
invoke-direct {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;-><init>(Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;Lcom/fasterxml/jackson/core/ObjectCodec;ZZ)V
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->setLocation(Lcom/fasterxml/jackson/core/JsonLocation;)V
return-object v0
.end method
.method public asParser(Lcom/fasterxml/jackson/core/ObjectCodec;)Lcom/fasterxml/jackson/core/JsonParser;
.registers 6
new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_first:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeTypeIds:Z
iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeObjectIds:Z
invoke-direct {v0, v1, p1, v2, v3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;-><init>(Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;Lcom/fasterxml/jackson/core/ObjectCodec;ZZ)V
return-object v0
.end method
.method public canWriteBinaryNatively()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public canWriteObjectId()Z
.registers 2
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeObjectIds:Z
return v0
.end method
.method public canWriteTypeId()Z
.registers 2
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeTypeIds:Z
return v0
.end method
.method public close()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_closed:Z
return-void
.end method
.method public copyCurrentEvent(Lcom/fasterxml/jackson/core/JsonParser;)V
.registers 5
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_mayHaveNativeIds:Z
if-eqz v0, :cond_7
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_checkNativeIds(Lcom/fasterxml/jackson/core/JsonParser;)V
:cond_7
sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_bc
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Internal error: should never end up through this code path"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_1e
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartObject()V
:goto_21
return-void
:pswitch_22
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndObject()V
goto :goto_21
:pswitch_26
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartArray()V
goto :goto_21
:pswitch_2a
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndArray()V
goto :goto_21
:pswitch_2e
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V
goto :goto_21
:pswitch_36
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->hasTextCharacters()Z
move-result v0
if-eqz v0, :cond_4c
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTextCharacters()[C
move-result-object v0
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTextOffset()I
move-result v1
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTextLength()I
move-result v2
invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeString([CII)V
goto :goto_21
:cond_4c
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeString(Ljava/lang/String;)V
goto :goto_21
:pswitch_54
sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_d8
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNumber(J)V
goto :goto_21
:pswitch_6b
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNumber(I)V
goto :goto_21
:pswitch_73
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNumber(Ljava/math/BigInteger;)V
goto :goto_21
:pswitch_7b
sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_e0
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNumber(D)V
goto :goto_21
:pswitch_92
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNumber(Ljava/math/BigDecimal;)V
goto :goto_21
:pswitch_9a
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getFloatValue()F
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNumber(F)V
goto :goto_21
:pswitch_a2
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeBoolean(Z)V
goto/16 :goto_21
:pswitch_a8
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeBoolean(Z)V
goto/16 :goto_21
:pswitch_ae
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNull()V
goto/16 :goto_21
:pswitch_b3
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getEmbeddedObject()Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeObject(Ljava/lang/Object;)V
goto/16 :goto_21
:pswitch_data_d8
.packed-switch 0x1
:pswitch_6b
:pswitch_73
.end packed-switch
:pswitch_data_e0
.packed-switch 0x3
:pswitch_92
:pswitch_9a
.end packed-switch
:pswitch_data_bc
.packed-switch 0x1
:pswitch_1e
:pswitch_22
:pswitch_26
:pswitch_2a
:pswitch_2e
:pswitch_36
:pswitch_54
:pswitch_7b
:pswitch_a2
:pswitch_a8
:pswitch_ae
:pswitch_b3
.end packed-switch
.end method
.method public copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V
.registers 4
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_1a
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_mayHaveNativeIds:Z
if-eqz v0, :cond_f
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_checkNativeIds(Lcom/fasterxml/jackson/core/JsonParser;)V
:cond_f
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
:cond_1a
iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_mayHaveNativeIds:Z
if-eqz v1, :cond_21
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_checkNativeIds(Lcom/fasterxml/jackson/core/JsonParser;)V
:cond_21
sget-object v1, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v0
aget v0, v1, v0
packed-switch v0, :pswitch_data_56
:pswitch_2c
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentEvent(Lcom/fasterxml/jackson/core/JsonParser;)V
:goto_2f
return-void
:pswitch_30
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartArray()V
:goto_33
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_3f
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V
goto :goto_33
:cond_3f
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndArray()V
goto :goto_2f
:pswitch_43
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartObject()V
:goto_46
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_52
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V
goto :goto_46
:cond_52
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndObject()V
goto :goto_2f
:pswitch_data_56
.packed-switch 0x1
:pswitch_43
:pswitch_2c
:pswitch_30
.end packed-switch
.end method
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/util/TokenBuffer;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V
return-object p0
.end method
.method public disable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;
.registers 4
iget v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_generatorFeatures:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I
move-result v1
xor-int/lit8 v1, v1, -0x1
and-int/2addr v0, v1
iput v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_generatorFeatures:I
return-object p0
.end method
.method public enable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;
.registers 4
iget v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_generatorFeatures:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I
move-result v1
or-int/2addr v0, v1
iput v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_generatorFeatures:I
return-object p0
.end method
.method public firstToken()Lcom/fasterxml/jackson/core/JsonToken;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_first:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_first:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->type(I)Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
:goto_b
return-object v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public flush()V
.registers 1
return-void
.end method
.method public getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;
return-object v0
.end method
.method public getFeatureMask()I
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_generatorFeatures:I
return v0
.end method
.method public bridge synthetic getOutputContext()Lcom/fasterxml/jackson/core/JsonStreamContext;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->getOutputContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
move-result-object v0
return-object v0
.end method
.method public final getOutputContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
return-object v0
.end method
.method public isClosed()Z
.registers 2
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_closed:Z
return v0
.end method
.method public isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
.registers 4
iget v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_generatorFeatures:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I
move-result v1
and-int/2addr v0, v1
if-eqz v0, :cond_b
const/4 v0, 0x1
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public serialize(Lcom/fasterxml/jackson/core/JsonGenerator;)V
.registers 11
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v5, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_first:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
const/4 v4, -0x1
iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_mayHaveNativeIds:Z
if-eqz v6, :cond_1f
invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->hasIds()Z
move-result v0
if-eqz v0, :cond_1f
move v0, v1
:goto_10
move v3, v4
move-object v4, v5
:goto_12
add-int/lit8 v3, v3, 0x1
const/16 v5, 0x10
if-lt v3, v5, :cond_157
invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->next()Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
move-result-object v3
if-nez v3, :cond_21
:cond_1e
return-void
:cond_1f
move v0, v2
goto :goto_10
:cond_21
if-eqz v6, :cond_5a
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->hasIds()Z
move-result v0
if-eqz v0, :cond_5a
move v0, v1
:goto_2a
move v4, v2
move-object v5, v3
move v3, v0
:goto_2d
invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->type(I)Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
if-eqz v0, :cond_1e
if-eqz v3, :cond_47
invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->findObjectId(I)Ljava/lang/Object;
move-result-object v7
if-eqz v7, :cond_3e
invoke-virtual {p1, v7}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectId(Ljava/lang/Object;)V
:cond_3e
invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->findTypeId(I)Ljava/lang/Object;
move-result-object v7
if-eqz v7, :cond_47
invoke-virtual {p1, v7}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeTypeId(Ljava/lang/Object;)V
:cond_47
sget-object v7, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v0
aget v0, v7, v0
packed-switch v0, :pswitch_data_15c
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Internal error: should never end up through this code path"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_5a
move v0, v2
goto :goto_2a
:pswitch_5c
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V
:goto_5f
move v0, v3
move v3, v4
move-object v4, v5
goto :goto_12
:pswitch_63
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
goto :goto_5f
:pswitch_67
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V
goto :goto_5f
:pswitch_6b
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V
goto :goto_5f
:pswitch_6f
invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;
move-result-object v0
instance-of v7, v0, Lcom/fasterxml/jackson/core/SerializableString;
if-eqz v7, :cond_7d
check-cast v0, Lcom/fasterxml/jackson/core/SerializableString;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
goto :goto_5f
:cond_7d
check-cast v0, Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
goto :goto_5f
:pswitch_83
invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;
move-result-object v0
instance-of v7, v0, Lcom/fasterxml/jackson/core/SerializableString;
if-eqz v7, :cond_91
check-cast v0, Lcom/fasterxml/jackson/core/SerializableString;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Lcom/fasterxml/jackson/core/SerializableString;)V
goto :goto_5f
:cond_91
check-cast v0, Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V
goto :goto_5f
:pswitch_97
invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;
move-result-object v0
instance-of v7, v0, Ljava/lang/Integer;
if-eqz v7, :cond_a9
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V
goto :goto_5f
:cond_a9
instance-of v7, v0, Ljava/math/BigInteger;
if-eqz v7, :cond_b3
check-cast v0, Ljava/math/BigInteger;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/math/BigInteger;)V
goto :goto_5f
:cond_b3
instance-of v7, v0, Ljava/lang/Long;
if-eqz v7, :cond_c1
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v7
invoke-virtual {p1, v7, v8}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V
goto :goto_5f
:cond_c1
instance-of v7, v0, Ljava/lang/Short;
if-eqz v7, :cond_cf
check-cast v0, Ljava/lang/Short;
invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S
move-result v0
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(S)V
goto :goto_5f
:cond_cf
check-cast v0, Ljava/lang/Number;
invoke-virtual {v0}, Ljava/lang/Number;->intValue()I
move-result v0
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V
goto :goto_5f
:pswitch_d9
invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;
move-result-object v0
instance-of v7, v0, Ljava/lang/Double;
if-eqz v7, :cond_ec
check-cast v0, Ljava/lang/Double;
invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
move-result-wide v7
invoke-virtual {p1, v7, v8}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(D)V
goto/16 :goto_5f
:cond_ec
instance-of v7, v0, Ljava/math/BigDecimal;
if-eqz v7, :cond_f7
check-cast v0, Ljava/math/BigDecimal;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V
goto/16 :goto_5f
:cond_f7
instance-of v7, v0, Ljava/lang/Float;
if-eqz v7, :cond_106
check-cast v0, Ljava/lang/Float;
invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
move-result v0
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(F)V
goto/16 :goto_5f
:cond_106
if-nez v0, :cond_10d
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V
goto/16 :goto_5f
:cond_10d
instance-of v7, v0, Ljava/lang/String;
if-eqz v7, :cond_118
check-cast v0, Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/lang/String;)V
goto/16 :goto_5f
:cond_118
new-instance v1, Lcom/fasterxml/jackson/core/JsonGenerationException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Unrecognized value type for VALUE_NUMBER_FLOAT: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ", can not serialize"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;)V
throw v1
:pswitch_13f
invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBoolean(Z)V
goto/16 :goto_5f
:pswitch_144
invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBoolean(Z)V
goto/16 :goto_5f
:pswitch_149
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V
goto/16 :goto_5f
:pswitch_14e
invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObject(Ljava/lang/Object;)V
goto/16 :goto_5f
:cond_157
move-object v5, v4
move v4, v3
move v3, v0
goto/16 :goto_2d
:pswitch_data_15c
.packed-switch 0x1
:pswitch_5c
:pswitch_63
:pswitch_67
:pswitch_6b
:pswitch_6f
:pswitch_83
:pswitch_97
:pswitch_d9
:pswitch_13f
:pswitch_144
:pswitch_149
:pswitch_14e
.end packed-switch
.end method
.method public setCodec(Lcom/fasterxml/jackson/core/ObjectCodec;)Lcom/fasterxml/jackson/core/JsonGenerator;
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;
return-object p0
.end method
.method public setFeatureMask(I)Lcom/fasterxml/jackson/core/JsonGenerator;
.registers 2
iput p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_generatorFeatures:I
return-object p0
.end method
.method public toString()Ljava/lang/String;
.registers 8
const/16 v6, 0x64
const/4 v1, 0x0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v0, "[TokenBuffer: "
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser()Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v3
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeTypeIds:Z
if-nez v0, :cond_19
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeObjectIds:Z
if-eqz v0, :cond_3d
:cond_19
const/4 v0, 0x1
:try_start_1a
:goto_1a
invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
:try_end_1d
.catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_6c
move-result-object v4
if-nez v4, :cond_3f
if-lt v1, v6, :cond_33
const-string v0, " ... (truncated "
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
add-int/lit8 v1, v1, -0x64
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " entries)"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_33
const/16 v0, 0x5d
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_3d
move v0, v1
goto :goto_1a
:cond_3f
if-eqz v0, :cond_44
:try_start_41
invoke-direct {p0, v2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendNativeIds(Ljava/lang/StringBuilder;)V
:cond_44
if-ge v1, v6, :cond_69
if-lez v1, :cond_4d
const-string v5, ", "
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_4d
invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonToken;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v4, v5, :cond_69
const/16 v4, 0x28
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/16 v4, 0x29
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:try_end_69
.catch Ljava/io/IOException; {:try_start_41 .. :try_end_69} :catch_6c
:cond_69
add-int/lit8 v1, v1, 0x1
goto :goto_1a
:catch_6c
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public useDefaultPrettyPrinter()Lcom/fasterxml/jackson/core/JsonGenerator;
.registers 1
return-object p0
.end method
.method public version()Lcom/fasterxml/jackson/core/Version;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/databind/cfg/PackageVersion;->VERSION:Lcom/fasterxml/jackson/core/Version;
return-object v0
.end method
.method public writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;I)I
.registers 5
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
.registers 7
new-array v0, p4, [B
const/4 v1, 0x0
invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeObject(Ljava/lang/Object;)V
return-void
.end method
.method public writeBoolean(Z)V
.registers 3
if-eqz p1, :cond_8
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;
:goto_4
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;)V
return-void
:cond_8
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;
goto :goto_4
.end method
.method public final writeEndArray()V
.registers 2
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
move-result-object v0
if-eqz v0, :cond_f
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
:cond_f
return-void
.end method
.method public final writeEndObject()V
.registers 2
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
move-result-object v0
if-eqz v0, :cond_f
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
:cond_f
return-void
.end method
.method public writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
.registers 4
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I
return-void
.end method
.method public final writeFieldName(Ljava/lang/String;)V
.registers 3
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I
return-void
.end method
.method public writeNull()V
.registers 2
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;)V
return-void
.end method
.method public writeNumber(D)V
.registers 5
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
return-void
.end method
.method public writeNumber(F)V
.registers 4
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
return-void
.end method
.method public writeNumber(I)V
.registers 4
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
return-void
.end method
.method public writeNumber(J)V
.registers 5
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
return-void
.end method
.method public writeNumber(Ljava/lang/String;)V
.registers 3
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
return-void
.end method
.method public writeNumber(Ljava/math/BigDecimal;)V
.registers 3
if-nez p1, :cond_6
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNull()V
:goto_5
return-void
:cond_6
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
goto :goto_5
.end method
.method public writeNumber(Ljava/math/BigInteger;)V
.registers 3
if-nez p1, :cond_6
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNull()V
:goto_5
return-void
:cond_6
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
goto :goto_5
.end method
.method public writeNumber(S)V
.registers 4
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
return-void
.end method
.method public writeObject(Ljava/lang/Object;)V
.registers 3
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
return-void
.end method
.method public writeObjectId(Ljava/lang/Object;)V
.registers 3
iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_objectId:Ljava/lang/Object;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeId:Z
return-void
.end method
.method public writeRaw(C)V
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V
return-void
.end method
.method public writeRaw(Lcom/fasterxml/jackson/core/SerializableString;)V
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V
return-void
.end method
.method public writeRaw(Ljava/lang/String;)V
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V
return-void
.end method
.method public writeRaw(Ljava/lang/String;II)V
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V
return-void
.end method
.method public writeRaw([CII)V
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V
return-void
.end method
.method public writeRawUTF8String([BII)V
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V
return-void
.end method
.method public writeRawValue(Ljava/lang/String;)V
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V
return-void
.end method
.method public writeRawValue(Ljava/lang/String;II)V
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V
return-void
.end method
.method public writeRawValue([CII)V
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V
return-void
.end method
.method public final writeStartArray()V
.registers 2
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->createChildArrayContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
return-void
.end method
.method public final writeStartObject()V
.registers 2
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->createChildObjectContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
return-void
.end method
.method public writeString(Lcom/fasterxml/jackson/core/SerializableString;)V
.registers 3
if-nez p1, :cond_6
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNull()V
:goto_5
return-void
:cond_6
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
goto :goto_5
.end method
.method public writeString(Ljava/lang/String;)V
.registers 3
if-nez p1, :cond_6
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNull()V
:goto_5
return-void
:cond_6
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
goto :goto_5
.end method
.method public writeString([CII)V
.registers 5
new-instance v0, Ljava/lang/String;
invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeString(Ljava/lang/String;)V
return-void
.end method
.method public writeTree(Lcom/fasterxml/jackson/core/TreeNode;)V
.registers 3
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
return-void
.end method
.method public writeTypeId(Ljava/lang/Object;)V
.registers 3
iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_typeId:Ljava/lang/Object;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_hasNativeId:Z
return-void
.end method
.method public writeUTF8String([BII)V
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V
return-void
.end method