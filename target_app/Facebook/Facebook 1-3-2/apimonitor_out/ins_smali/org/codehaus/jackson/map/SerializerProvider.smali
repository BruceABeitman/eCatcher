.class public abstract Lorg/codehaus/jackson/map/SerializerProvider;
.super Ljava/lang/Object;
.field protected final _config:Lorg/codehaus/jackson/map/SerializationConfig;
.method protected constructor <init>(Lorg/codehaus/jackson/map/SerializationConfig;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lorg/codehaus/jackson/map/SerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;
return-void
.end method
.method public abstract defaultSerializeDateValue(JLorg/codehaus/jackson/JsonGenerator;)V
.end method
.method public abstract defaultSerializeDateValue(Ljava/util/Date;Lorg/codehaus/jackson/JsonGenerator;)V
.end method
.method public final defaultSerializeField(Ljava/lang/String;Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V
.registers 6
invoke-virtual {p3, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
if-nez p2, :cond_e
invoke-virtual {p0}, Lorg/codehaus/jackson/map/SerializerProvider;->getNullValueSerializer()Lorg/codehaus/jackson/map/JsonSerializer;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1, p3, p0}, Lorg/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
:goto_d
return-void
:cond_e
invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;
move-result-object v0
invoke-virtual {v0, p2, p3, p0}, Lorg/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
goto :goto_d
.end method
.method public final defaultSerializeValue(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V
.registers 5
if-nez p1, :cond_b
invoke-virtual {p0}, Lorg/codehaus/jackson/map/SerializerProvider;->getNullValueSerializer()Lorg/codehaus/jackson/map/JsonSerializer;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1, p2, p0}, Lorg/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
:goto_a
return-void
:cond_b
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;
move-result-object v0
invoke-virtual {v0, p1, p2, p0}, Lorg/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
goto :goto_a
.end method
.method public abstract findValueSerializer(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;
.end method
.method public generateJsonSchema(Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/SerializerFactory;)Lorg/codehaus/jackson/schema/JsonSchema;
.registers 5
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public final getConfig()Lorg/codehaus/jackson/map/SerializationConfig;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/SerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;
return-object v0
.end method
.method public abstract getKeySerializer()Lorg/codehaus/jackson/map/JsonSerializer;
.end method
.method public abstract getNullKeySerializer()Lorg/codehaus/jackson/map/JsonSerializer;
.end method
.method public abstract getNullValueSerializer()Lorg/codehaus/jackson/map/JsonSerializer;
.end method
.method public abstract getUnknownTypeSerializer(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;
.end method
.method public abstract hasSerializerFor(Lorg/codehaus/jackson/map/SerializationConfig;Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerFactory;)Z
.end method
.method public final isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z
.registers 3
iget-object v0, p0, Lorg/codehaus/jackson/map/SerializerProvider;->_config:Lorg/codehaus/jackson/map/SerializationConfig;
invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z
move-result v0
return v0
.end method
.method public abstract serializeValue(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializerFactory;)V
.end method