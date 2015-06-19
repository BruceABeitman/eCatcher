.class public abstract Lcom/fasterxml/jackson/databind/DatabindContext;
.super Ljava/lang/Object;
.source "DatabindContext.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final canOverrideAccessModifiers()Z
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DatabindContext;->getConfig()Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z
move-result v0
return v0
.end method
.method public constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DatabindContext;->getConfig()Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
move-result-object v0
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
return-object v0
.end method
.method public constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DatabindContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
return-object v0
.end method
.method public converterInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/Converter;
.registers 6
const/4 v0, 0x0
if-nez p2, :cond_5
move-object p2, v0
:goto_4
return-object p2
:cond_5
instance-of v1, p2, Lcom/fasterxml/jackson/databind/util/Converter;
if-eqz v1, :cond_c
check-cast p2, Lcom/fasterxml/jackson/databind/util/Converter;
goto :goto_4
:cond_c
instance-of v1, p2, Ljava/lang/Class;
if-nez v1, :cond_33
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "AnnotationIntrospector returned Converter definition of type "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "; expected type Converter or Class<Converter> instead"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_33
check-cast p2, Ljava/lang/Class;
const-class v1, Lcom/fasterxml/jackson/databind/util/Converter$None;
if-eq p2, v1, :cond_3d
const-class v1, Lcom/fasterxml/jackson/databind/annotation/NoClass;
if-ne p2, v1, :cond_3f
:cond_3d
move-object p2, v0
goto :goto_4
:cond_3f
const-class v1, Lcom/fasterxml/jackson/databind/util/Converter;
invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v1
if-nez v1, :cond_66
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "AnnotationIntrospector returned Class "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "; expected Class<Converter>"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_66
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DatabindContext;->getConfig()Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
move-result-object v2
if-nez v2, :cond_7e
:goto_70
if-nez v0, :cond_7c
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z
move-result v0
invoke-static {p2, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/util/Converter;
:cond_7c
move-object p2, v0
goto :goto_4
:cond_7e
invoke-virtual {v2, v1, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;->converterInstance(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/Converter;
move-result-object v0
goto :goto_70
.end method
.method public abstract getActiveView()Ljava/lang/Class;
.end method
.method public abstract getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
.end method
.method public abstract getConfig()Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
.end method
.method public abstract getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
.end method
.method public final isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DatabindContext;->getConfig()Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
move-result v0
return v0
.end method
.method public objectIdGeneratorInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
.registers 6
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getGeneratorType()Ljava/lang/Class;
move-result-object v1
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DatabindContext;->getConfig()Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
move-result-object v2
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
move-result-object v0
if-nez v0, :cond_24
const/4 v0, 0x0
:goto_f
if-nez v0, :cond_1b
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z
move-result v0
invoke-static {v1, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
:cond_1b
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getScope()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;->forScope(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
move-result-object v0
return-object v0
:cond_24
invoke-virtual {v0, v2, p1, v1}, Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;->objectIdGeneratorInstance(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
move-result-object v0
goto :goto_f
.end method