.class public final Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$NumberSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;
.source "SourceFile"
.field public static final instance:Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$NumberSerializer;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$NumberSerializer;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$NumberSerializer;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$NumberSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$NumberSerializer;
return-void
.end method
.method public constructor <init>()V
.registers 2
const-class v0, Ljava/lang/Number;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method public final serialize(Ljava/lang/Number;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 6
instance-of v0, p1, Ljava/math/BigDecimal;
if-eqz v0, :cond_a
check-cast p1, Ljava/math/BigDecimal;
invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V
:goto_9
return-void
:cond_a
instance-of v0, p1, Ljava/math/BigInteger;
if-eqz v0, :cond_14
check-cast p1, Ljava/math/BigInteger;
invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/math/BigInteger;)V
goto :goto_9
:cond_14
instance-of v0, p1, Ljava/lang/Integer;
if-eqz v0, :cond_20
invoke-virtual {p1}, Ljava/lang/Number;->intValue()I
move-result v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V
goto :goto_9
:cond_20
instance-of v0, p1, Ljava/lang/Long;
if-eqz v0, :cond_2c
invoke-virtual {p1}, Ljava/lang/Number;->longValue()J
move-result-wide v0
invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V
goto :goto_9
:cond_2c
instance-of v0, p1, Ljava/lang/Double;
if-eqz v0, :cond_38
invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D
move-result-wide v0
invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(D)V
goto :goto_9
:cond_38
instance-of v0, p1, Ljava/lang/Float;
if-eqz v0, :cond_44
invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F
move-result v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(F)V
goto :goto_9
:cond_44
instance-of v0, p1, Ljava/lang/Byte;
if-nez v0, :cond_4c
instance-of v0, p1, Ljava/lang/Short;
if-eqz v0, :cond_54
:cond_4c
invoke-virtual {p1}, Ljava/lang/Number;->intValue()I
move-result v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V
goto :goto_9
:cond_54
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/lang/String;)V
goto :goto_9
.end method
.method public final bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
check-cast p1, Ljava/lang/Number;
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$NumberSerializer;->serialize(Ljava/lang/Number;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
return-void
.end method