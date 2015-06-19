.class public Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;
.source "NumberDeserializers.java"
.field public static final instance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;
return-void
.end method
.method public constructor <init>()V
.registers 2
const-class v0, Ljava/math/BigInteger;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/math/BigInteger;
move-result-object v0
return-object v0
.end method
.method public deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/math/BigInteger;
.registers 6
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_2e
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getNumberType$72641f5()I
move-result v1
add-int/lit8 v1, v1, -0x1
aget v0, v0, v1
packed-switch v0, :pswitch_data_56
:cond_15
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_46
const/4 v0, 0x0
:goto_24
return-object v0
:pswitch_25
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getLongValue()J
move-result-wide v0
invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
move-result-object v0
goto :goto_24
:cond_2e
sget-object v1, Lcom/fasterxml/jackson/a/r;->j:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_3b
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getDecimalValue()Ljava/math/BigDecimal;
move-result-object v0
invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;
move-result-object v0
goto :goto_24
:cond_3b
sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;
if-eq v0, v1, :cond_15
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;->_valueClass:Ljava/lang/Class;
invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/a/r;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_46
:try_start_46
new-instance v0, Ljava/math/BigInteger;
invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
:try_end_4b
.catch Ljava/lang/IllegalArgumentException; {:try_start_46 .. :try_end_4b} :catch_4c
goto :goto_24
:catch_4c
move-exception v0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigIntegerDeserializer;->_valueClass:Ljava/lang/Class;
const-string v2, "not a valid representation"
invoke-virtual {p2, v1, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:pswitch_data_56
.packed-switch 0x1
:pswitch_25
:pswitch_25
.end packed-switch
.end method