.class public Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "UntypedObjectDeserializer.java"
.implements Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;
.implements Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;
.field private static final NO_OBJECTS:[Ljava/lang/Object; = null
.field public static final instance:Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer; = null
.field private static final serialVersionUID:J = 0x1L
.field protected _listDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
.field protected _mapDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
.field protected _numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
.field protected _stringDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/Object;
sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->NO_OBJECTS:[Ljava/lang/Object;
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;
return-void
.end method
.method public constructor <init>()V
.registers 2
const-class v0, Ljava/lang/Object;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
.registers 7
const-class v0, Ljava/lang/Object;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V
iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_mapDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_listDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_stringDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
return-void
.end method
.method protected _findCustomDeser(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 5
invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findRootValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isJacksonStdImpl(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_b
const/4 v0, 0x0
:cond_b
return-object v0
.end method
.method protected _withResolved(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 11
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;
move-object v1, p0
move-object v2, p1
move-object v3, p2
move-object v4, p3
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
return-object v0
.end method
.method public createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 8
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_mapDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
instance-of v1, v0, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;
if-eqz v1, :cond_4c
check-cast v0, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;
invoke-interface {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
move-object v1, v0
:goto_d
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_listDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
instance-of v2, v0, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;
if-eqz v2, :cond_4a
check-cast v0, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;
invoke-interface {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
move-object v2, v0
:goto_1a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_stringDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
instance-of v3, v0, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;
if-eqz v3, :cond_48
check-cast v0, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;
invoke-interface {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
move-object v3, v0
:goto_27
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
instance-of v4, v0, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;
if-eqz v4, :cond_33
check-cast v0, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;
invoke-interface {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
:cond_33
iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_mapDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-ne v1, v4, :cond_43
iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_listDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-ne v2, v4, :cond_43
iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_stringDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-ne v3, v4, :cond_43
iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eq v0, v4, :cond_47
:cond_43
invoke-virtual {p0, v1, v2, v3, v0}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_withResolved(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object p0
:cond_47
return-object p0
:cond_48
move-object v3, v0
goto :goto_27
:cond_4a
move-object v2, v0
goto :goto_1a
:cond_4c
move-object v1, v0
goto :goto_d
.end method
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 5
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_9e
const-class v0, Ljava/lang/Object;
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:pswitch_16
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_mapDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_mapDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
:goto_20
return-object v0
:cond_21
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->mapObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_20
:pswitch_26
sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_JAVA_ARRAY_FOR_JSON_ARRAY:Lcom/fasterxml/jackson/databind/DeserializationFeature;
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
move-result v0
if-eqz v0, :cond_33
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->mapArrayToArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[Ljava/lang/Object;
move-result-object v0
goto :goto_20
:cond_33
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_listDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_3e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_listDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_20
:cond_3e
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->mapArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_20
:pswitch_43
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getEmbeddedObject()Ljava/lang/Object;
move-result-object v0
goto :goto_20
:pswitch_48
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_stringDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_53
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_stringDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_20
:cond_53
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
goto :goto_20
:pswitch_58
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_63
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_20
:cond_63
sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_INTEGER_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
move-result v0
if-eqz v0, :cond_70
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;
move-result-object v0
goto :goto_20
:cond_70
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberValue()Ljava/lang/Number;
move-result-object v0
goto :goto_20
:pswitch_75
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_80
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_20
:cond_80
sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_DECIMAL_FOR_FLOATS:Lcom/fasterxml/jackson/databind/DeserializationFeature;
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
move-result v0
if-eqz v0, :cond_8d
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;
move-result-object v0
goto :goto_20
:cond_8d
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v0
goto :goto_20
:pswitch_96
sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
goto :goto_20
:pswitch_99
sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
goto :goto_20
:pswitch_9c
const/4 v0, 0x0
goto :goto_20
:pswitch_data_9e
.packed-switch 0x1
:pswitch_16
:pswitch_16
:pswitch_26
:pswitch_43
:pswitch_48
:pswitch_58
:pswitch_75
:pswitch_96
:pswitch_99
:pswitch_9c
.end packed-switch
.end method
.method public deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
.registers 6
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v0
aget v0, v1, v0
packed-switch v0, :pswitch_data_76
const-class v0, Ljava/lang/Object;
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:pswitch_16
invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeTypedFromAny(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
:goto_1a
return-object v0
:pswitch_1b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_stringDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_stringDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_1a
:cond_26
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
goto :goto_1a
:pswitch_2b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_36
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_1a
:cond_36
sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_INTEGER_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
move-result v0
if-eqz v0, :cond_43
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;
move-result-object v0
goto :goto_1a
:cond_43
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberValue()Ljava/lang/Number;
move-result-object v0
goto :goto_1a
:pswitch_48
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_53
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_1a
:cond_53
sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_DECIMAL_FOR_FLOATS:Lcom/fasterxml/jackson/databind/DeserializationFeature;
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
move-result v0
if-eqz v0, :cond_60
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;
move-result-object v0
goto :goto_1a
:cond_60
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v0
goto :goto_1a
:pswitch_69
sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
goto :goto_1a
:pswitch_6c
sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
goto :goto_1a
:pswitch_6f
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getEmbeddedObject()Ljava/lang/Object;
move-result-object v0
goto :goto_1a
:pswitch_74
const/4 v0, 0x0
goto :goto_1a
:pswitch_data_76
.packed-switch 0x1
:pswitch_16
:pswitch_16
:pswitch_16
:pswitch_6f
:pswitch_1b
:pswitch_2b
:pswitch_48
:pswitch_69
:pswitch_6c
:pswitch_74
.end packed-switch
.end method
.method protected mapArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 10
const/4 v1, 0x0
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v2, :cond_10
new-instance v0, Ljava/util/ArrayList;
const/4 v1, 0x4
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
:goto_f
return-object v0
:cond_10
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->leaseObjectBuffer()Lcom/fasterxml/jackson/databind/util/ObjectBuffer;
move-result-object v5
invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->resetAndStart()[Ljava/lang/Object;
move-result-object v0
move v2, v1
move-object v3, v0
move v0, v1
:cond_1b
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v6
add-int/lit8 v0, v0, 0x1
array-length v4, v3
if-lt v2, v4, :cond_44
invoke-virtual {v5, v3}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->appendCompletedChunk([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v3
move v4, v1
:goto_29
add-int/lit8 v2, v4, 0x1
aput-object v6, v3, v4
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v4
sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v4, v6, :cond_1b
new-instance v1, Ljava/util/ArrayList;
shr-int/lit8 v4, v0, 0x3
add-int/2addr v0, v4
add-int/lit8 v0, v0, 0x1
invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V
invoke-virtual {v5, v3, v2, v1}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->completeAndClearBuffer([Ljava/lang/Object;ILjava/util/List;)V
move-object v0, v1
goto :goto_f
:cond_44
move v4, v2
goto :goto_29
.end method
.method protected mapArrayToArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[Ljava/lang/Object;
.registers 9
const/4 v1, 0x0
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v2, :cond_c
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->NO_OBJECTS:[Ljava/lang/Object;
:goto_b
return-object v0
:cond_c
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->leaseObjectBuffer()Lcom/fasterxml/jackson/databind/util/ObjectBuffer;
move-result-object v4
invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->resetAndStart()[Ljava/lang/Object;
move-result-object v0
move-object v2, v0
move v0, v1
:cond_16
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v5
array-length v3, v2
if-lt v0, v3, :cond_33
invoke-virtual {v4, v2}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->appendCompletedChunk([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v2
move v3, v1
:goto_22
add-int/lit8 v0, v3, 0x1
aput-object v5, v2, v3
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v3
sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v3, v5, :cond_16
invoke-virtual {v4, v2, v0}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->completeAndClearBuffer([Ljava/lang/Object;I)[Ljava/lang/Object;
move-result-object v0
goto :goto_b
:cond_33
move v3, v0
goto :goto_22
.end method
.method protected mapObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 10
const/4 v6, 0x4
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_d
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
:cond_d
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_17
new-instance v0, Ljava/util/LinkedHashMap;
invoke-direct {v0, v6}, Ljava/util/LinkedHashMap;-><init>(I)V
:goto_16
return-object v0
:cond_17
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v3, :cond_33
new-instance v0, Ljava/util/LinkedHashMap;
invoke-direct {v0, v6}, Ljava/util/LinkedHashMap;-><init>(I)V
invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_16
:cond_33
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v4
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v5, :cond_52
new-instance v0, Ljava/util/LinkedHashMap;
invoke-direct {v0, v6}, Ljava/util/LinkedHashMap;-><init>(I)V
invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_16
:cond_52
new-instance v0, Ljava/util/LinkedHashMap;
invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_5d
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v1, v2, :cond_5d
goto :goto_16
.end method
.method public resolve(Lcom/fasterxml/jackson/databind/DeserializationContext;)V
.registers 6
const-class v0, Ljava/lang/Object;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
const-class v1, Ljava/lang/String;
invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v1
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
move-result-object v2
const-class v3, Ljava/util/Map;
invoke-virtual {v2, v3, v1, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructMapType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;
move-result-object v3
invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_findCustomDeser(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v3
iput-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_mapDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
const-class v3, Ljava/util/List;
invoke-virtual {v2, v3, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_findCustomDeser(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_listDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_findCustomDeser(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_stringDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
const-class v0, Ljava/lang/Number;
invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_findCustomDeser(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;->_numberDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
return-void
.end method