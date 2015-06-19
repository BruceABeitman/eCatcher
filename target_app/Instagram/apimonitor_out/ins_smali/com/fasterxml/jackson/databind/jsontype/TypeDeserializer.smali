.class public abstract Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
.super Ljava/lang/Object;
.source "TypeDeserializer.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static deserializeIfNatural(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
.registers 4
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeIfNatural(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public static deserializeIfNatural(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Class;)Ljava/lang/Object;
.registers 6
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v1
if-nez v1, :cond_8
:goto_7
:cond_7
return-object v0
:cond_8
sget-object v2, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v1
aget v1, v2, v1
packed-switch v1, :pswitch_data_5a
goto :goto_7
:pswitch_14
const-class v1, Ljava/lang/String;
invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v1
if-eqz v1, :cond_7
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v0
goto :goto_7
:pswitch_21
const-class v1, Ljava/lang/Integer;
invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v1
if-eqz v1, :cond_7
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getIntValue()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
goto :goto_7
:pswitch_32
const-class v1, Ljava/lang/Double;
invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v1
if-eqz v1, :cond_7
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getDoubleValue()D
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v0
goto :goto_7
:pswitch_43
const-class v1, Ljava/lang/Boolean;
invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v1
if-eqz v1, :cond_7
sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
goto :goto_7
:pswitch_4e
const-class v1, Ljava/lang/Boolean;
invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v1
if-eqz v1, :cond_7
sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
goto :goto_7
nop
:pswitch_data_5a
.packed-switch 0x1
:pswitch_14
:pswitch_21
:pswitch_32
:pswitch_43
:pswitch_4e
.end packed-switch
.end method
.method public abstract deserializeTypedFromAny(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.end method
.method public abstract deserializeTypedFromArray(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.end method
.method public abstract deserializeTypedFromObject(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.end method
.method public abstract deserializeTypedFromScalar(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.end method
.method public abstract forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
.end method
.method public abstract getDefaultImpl()Ljava/lang/Class;
.end method
.method public abstract getPropertyName()Ljava/lang/String;
.end method
.method public abstract getTypeIdResolver()Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;
.end method
.method public abstract getTypeInclusion()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
.end method