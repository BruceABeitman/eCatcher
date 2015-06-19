.class public abstract Lorg/codehaus/jackson/map/JsonDeserializer;
.super Ljava/lang/Object;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public abstract deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
.end method
.method public deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public getNullValue()Ljava/lang/Object;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public shouldBeCached()Z
.registers 2
const/4 v0, 0x0
return v0
.end method