.class public final Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
.super Lorg/codehaus/jackson/map/introspect/Annotated;
.field final _annotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;
.field final _constructor:Ljava/lang/reflect/Constructor;
.method public constructor <init>(Ljava/lang/reflect/Constructor;Lorg/codehaus/jackson/map/introspect/AnnotationMap;)V
.registers 3
invoke-direct {p0}, Lorg/codehaus/jackson/map/introspect/Annotated;-><init>()V
iput-object p1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;
iput-object p2, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->_annotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;
return-void
.end method
.method public fixAccess()V
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;
invoke-static {v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V
return-void
.end method
.method public bridge synthetic getAnnotated()Ljava/lang/reflect/AnnotatedElement;
.registers 2
invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;
move-result-object v0
return-object v0
.end method
.method public getAnnotated()Ljava/lang/reflect/Constructor;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;
return-object v0
.end method
.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
.registers 3
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->_annotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;
invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v0
return-object v0
.end method
.method public getModifiers()I
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;
invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I
move-result v0
return v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;
invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getParameterTypes()[Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;
invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;
move-result-object v0
return-object v0
.end method
.method public getType()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;
invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;
move-result-object v0
return-object v0
.end method