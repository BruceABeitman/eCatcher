.class  Lcom/fasterxml/jackson/databind/ObjectMapper$1;
.super Ljava/lang/Object;
.source "ObjectMapper.java"
.implements Lcom/fasterxml/jackson/databind/Module$SetupContext;
.field final synthetic this$0:Lcom/fasterxml/jackson/databind/ObjectMapper;
.field final synthetic val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
.method constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
.registers 3
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->this$0:Lcom/fasterxml/jackson/databind/ObjectMapper;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public addAbstractTypeResolver(Lcom/fasterxml/jackson/databind/AbstractTypeResolver;)V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v0, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_factory:Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;->withAbstractTypeResolver(Lcom/fasterxml/jackson/databind/AbstractTypeResolver;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v2, v2, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->with(Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
move-result-object v0
iput-object v0, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
return-void
.end method
.method public addBeanDeserializerModifier(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;)V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v0, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_factory:Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;->withDeserializerModifier(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v2, v2, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->with(Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
move-result-object v0
iput-object v0, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
return-void
.end method
.method public addBeanSerializerModifier(Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;)V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v1, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;
invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ser/SerializerFactory;->withSerializerModifier(Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;)Lcom/fasterxml/jackson/databind/ser/SerializerFactory;
move-result-object v1
iput-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;
return-void
.end method
.method public addDeserializationProblemHandler(Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;)V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->addHandler(Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;)Lcom/fasterxml/jackson/databind/ObjectMapper;
return-void
.end method
.method public addDeserializers(Lcom/fasterxml/jackson/databind/deser/Deserializers;)V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v0, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_factory:Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;->withAdditionalDeserializers(Lcom/fasterxml/jackson/databind/deser/Deserializers;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v2, v2, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->with(Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
move-result-object v0
iput-object v0, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
return-void
.end method
.method public addKeyDeserializers(Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;)V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v0, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_factory:Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;->withAdditionalKeyDeserializers(Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v2, v2, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->with(Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
move-result-object v0
iput-object v0, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
return-void
.end method
.method public addKeySerializers(Lcom/fasterxml/jackson/databind/ser/Serializers;)V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v1, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;
invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ser/SerializerFactory;->withAdditionalKeySerializers(Lcom/fasterxml/jackson/databind/ser/Serializers;)Lcom/fasterxml/jackson/databind/ser/SerializerFactory;
move-result-object v1
iput-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;
return-void
.end method
.method public addSerializers(Lcom/fasterxml/jackson/databind/ser/Serializers;)V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v1, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;
invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ser/SerializerFactory;->withAdditionalSerializers(Lcom/fasterxml/jackson/databind/ser/Serializers;)Lcom/fasterxml/jackson/databind/ser/SerializerFactory;
move-result-object v1
iput-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;
return-void
.end method
.method public addTypeModifier(Lcom/fasterxml/jackson/databind/type/TypeModifier;)V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v0, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->withModifier(Lcom/fasterxml/jackson/databind/type/TypeModifier;)Lcom/fasterxml/jackson/databind/type/TypeFactory;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setTypeFactory(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/ObjectMapper;
return-void
.end method
.method public addValueInstantiators(Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;)V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v0, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_factory:Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;->withValueInstantiators(Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v2, v2, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->with(Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
move-result-object v0
iput-object v0, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
return-void
.end method
.method public appendAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v1, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;
invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withAppendedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v1
iput-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v1, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;
invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withAppendedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v1
iput-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;
return-void
.end method
.method public getMapperVersion()Lcom/fasterxml/jackson/a/w;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->this$0:Lcom/fasterxml/jackson/databind/ObjectMapper;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->version()Lcom/fasterxml/jackson/a/w;
move-result-object v0
return-object v0
.end method
.method public getOwner()Lcom/fasterxml/jackson/a/s;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
return-object v0
.end method
.method public getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->this$0:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v0, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
return-object v0
.end method
.method public insertAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v1, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;
invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withInsertedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v1
iput-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v1, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;
invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withInsertedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v1
iput-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;
return-void
.end method
.method public isEnabled(Lcom/fasterxml/jackson/a/f;)Z
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/a/f;)Z
move-result v0
return v0
.end method
.method public isEnabled(Lcom/fasterxml/jackson/a/i;)Z
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z
move-result v0
return v0
.end method
.method public isEnabled(Lcom/fasterxml/jackson/a/n;)Z
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/a/n;)Z
move-result v0
return v0
.end method
.method public isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
move-result v0
return v0
.end method
.method public isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
move-result v0
return v0
.end method
.method public isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
move-result v0
return v0
.end method
.method public varargs registerSubtypes([Lcom/fasterxml/jackson/databind/jsontype/NamedType;)V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerSubtypes([Lcom/fasterxml/jackson/databind/jsontype/NamedType;)V
return-void
.end method
.method public varargs registerSubtypes([Ljava/lang/Class;)V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerSubtypes([Ljava/lang/Class;)V
return-void
.end method
.method public setClassIntrospector(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;)V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v1, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;
invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v1
iput-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
iget-object v1, v1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;
invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v1
iput-object v1, v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;
return-void
.end method
.method public setMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->addMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V
return-void
.end method