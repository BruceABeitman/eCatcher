.class public final Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
.super Lorg/codehaus/jackson/map/introspect/Annotated;
.field final _annotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;
.field final _method:Ljava/lang/reflect/Method;
.field public _paramTypes:[Ljava/lang/Class;
.method public constructor <init>(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/introspect/AnnotationMap;)V
.registers 3
invoke-direct {p0}, Lorg/codehaus/jackson/map/introspect/Annotated;-><init>()V
iput-object p1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;
iput-object p2, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->_annotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;
return-void
.end method
.method public addIfNotPresent(Ljava/lang/annotation/Annotation;)V
.registers 3
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->_annotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;
invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->addIfNotPresent(Ljava/lang/annotation/Annotation;)V
return-void
.end method
.method public fixAccess()V
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;
invoke-static {v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V
return-void
.end method
.method public bridge synthetic getAnnotated()Ljava/lang/reflect/AnnotatedElement;
.registers 2
invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;
move-result-object v0
return-object v0
.end method
.method public getAnnotated()Ljava/lang/reflect/Method;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;
return-object v0
.end method
.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
.registers 3
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->_annotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;
invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v0
return-object v0
.end method
.method public getAnnotationCount()I
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->_annotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;
invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->size()I
move-result v0
return v0
.end method
.method public getDeclaringClass()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;
invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;
move-result-object v0
return-object v0
.end method
.method public getFullName()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "#"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "("
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterCount()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " params)"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getGenericParameterTypes()[Ljava/lang/reflect/Type;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;
invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;
move-result-object v0
return-object v0
.end method
.method public getGenericReturnType()Ljava/lang/reflect/Type;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;
invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;
move-result-object v0
return-object v0
.end method
.method public getModifiers()I
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;
invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I
move-result v0
return v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;
invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getParameterCount()I
.registers 2
invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterTypes()[Ljava/lang/Class;
move-result-object v0
array-length v0, v0
return v0
.end method
.method public getParameterTypes()[Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->_paramTypes:[Ljava/lang/Class;
if-nez v0, :cond_c
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;
invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
move-result-object v0
iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->_paramTypes:[Ljava/lang/Class;
:cond_c
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->_paramTypes:[Ljava/lang/Class;
return-object v0
.end method
.method public getReturnType()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;
invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
move-result-object v0
return-object v0
.end method
.method public getType()Ljava/lang/Class;
.registers 2
invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getReturnType()Ljava/lang/Class;
move-result-object v0
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "[method "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", annotations: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->_annotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method