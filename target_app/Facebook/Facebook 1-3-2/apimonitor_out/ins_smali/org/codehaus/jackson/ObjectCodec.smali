.class public abstract Lorg/codehaus/jackson/ObjectCodec;
.super Ljava/lang/Object;
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public abstract readTree(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonNode;
.end method
.method public abstract readValue(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;
.end method
.method public abstract readValue(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
.end method
.method public abstract readValue(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
.end method
.method public abstract writeTree(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/JsonNode;)V
.end method
.method public abstract writeValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
.end method