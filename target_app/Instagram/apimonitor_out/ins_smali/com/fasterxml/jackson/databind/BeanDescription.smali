.class public abstract Lcom/fasterxml/jackson/databind/BeanDescription;
.super Ljava/lang/Object;
.source "BeanDescription.java"
.field protected final _type:Lcom/fasterxml/jackson/databind/JavaType;
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/BeanDescription;->_type:Lcom/fasterxml/jackson/databind/JavaType;
return-void
.end method
.method public abstract bindingsForBeanType()Lcom/fasterxml/jackson/databind/type/TypeBindings;
.end method
.method public abstract findAnyGetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.end method
.method public abstract findAnySetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.end method
.method public abstract findBackReferenceProperties()Ljava/util/Map;
.end method
.method public abstract findDefaultConstructor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
.end method
.method public abstract findDeserializationConverter()Lcom/fasterxml/jackson/databind/util/Converter;
.end method
.method public abstract findExpectedFormat(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
.end method
.method public varargs abstract findFactoryMethod([Ljava/lang/Class;)Ljava/lang/reflect/Method;
.end method
.method public abstract findInjectables()Ljava/util/Map;
.end method
.method public abstract findJsonValueMethod()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.end method
.method public abstract findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.end method
.method public abstract findPOJOBuilder()Ljava/lang/Class;
.end method
.method public abstract findPOJOBuilderConfig()Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;
.end method
.method public abstract findProperties()Ljava/util/List;
.end method
.method public abstract findSerializationConverter()Lcom/fasterxml/jackson/databind/util/Converter;
.end method
.method public abstract findSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
.end method
.method public varargs abstract findSingleArgConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
.end method
.method public getBeanClass()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/BeanDescription;->_type:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
return-object v0
.end method
.method public abstract getClassAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;
.end method
.method public abstract getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
.end method
.method public abstract getConstructors()Ljava/util/List;
.end method
.method public abstract getFactoryMethods()Ljava/util/List;
.end method
.method public abstract getIgnoredPropertyNames()Ljava/util/Set;
.end method
.method public abstract getObjectIdInfo()Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
.end method
.method public getType()Lcom/fasterxml/jackson/databind/JavaType;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/BeanDescription;->_type:Lcom/fasterxml/jackson/databind/JavaType;
return-object v0
.end method
.method public abstract hasKnownClassAnnotations()Z
.end method
.method public abstract instantiateBean(Z)Ljava/lang/Object;
.end method
.method public abstract resolveType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;
.end method