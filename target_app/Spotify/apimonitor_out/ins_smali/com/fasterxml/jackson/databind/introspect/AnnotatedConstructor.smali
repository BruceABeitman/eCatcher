.class public final Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
.super Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
.source "SourceFile"
.field private static final serialVersionUID:J = 0x1L
.field protected final _constructor:Ljava/lang/reflect/Constructor;
.field protected _serialization:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor$Serialization;
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor$Serialization;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, v0, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;
iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->_serialization:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor$Serialization;
return-void
.end method
.method public constructor <init>(Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V
.registers 6
invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Null constructor not allowed"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;
return-void
.end method
.method public final call()Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final call([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;
invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final call1(Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic getAnnotated()Ljava/lang/reflect/AnnotatedElement;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;
move-result-object v0
return-object v0
.end method
.method public final getAnnotated()Ljava/lang/reflect/Constructor;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;
return-object v0
.end method
.method public final getDeclaringClass()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;
invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;
move-result-object v0
return-object v0
.end method
.method public final getGenericParameterType(I)Ljava/lang/reflect/Type;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;
invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;
move-result-object v0
array-length v1, v0
if-lt p1, v1, :cond_b
const/4 v0, 0x0
:goto_a
return-object v0
:cond_b
aget-object v0, v0, p1
goto :goto_a
.end method
.method public final getGenericType()Ljava/lang/reflect/Type;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getRawType()Ljava/lang/Class;
move-result-object v0
return-object v0
.end method
.method public final getMember()Ljava/lang/reflect/Member;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;
return-object v0
.end method
.method public final getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;
invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getParameterCount()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;
invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;
move-result-object v0
array-length v0, v0
return v0
.end method
.method public final getRawParameterType(I)Ljava/lang/Class;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;
invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;
move-result-object v0
array-length v1, v0
if-lt p1, v1, :cond_b
const/4 v0, 0x0
:goto_a
return-object v0
:cond_b
aget-object v0, v0, p1
goto :goto_a
.end method
.method public final getRawType()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;
invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;
move-result-object v0
return-object v0
.end method
.method public final getType(Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;
invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getType(Lcom/fasterxml/jackson/databind/type/TypeBindings;[Ljava/lang/reflect/TypeVariable;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
return-object v0
.end method
.method public final getValue(Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
new-instance v0, Ljava/lang/UnsupportedOperationException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Cannot call getValue() on constructor of "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getDeclaringClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method final readResolve()Ljava/lang/Object;
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->_serialization:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor$Serialization;
iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor$Serialization;->clazz:Ljava/lang/Class;
:try_start_4
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->_serialization:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor$Serialization;
iget-object v1, v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor$Serialization;->args:[Ljava/lang/Class;
invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->isAccessible()Z
move-result v2
if-nez v2, :cond_15
invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V
:cond_15
new-instance v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
const/4 v3, 0x0
const/4 v4, 0x0
invoke-direct {v2, v1, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V
:try_end_1c
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_1d
return-object v2
:catch_1d
move-exception v1
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Could not find constructor with "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->_serialization:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor$Serialization;
iget-object v3, v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor$Serialization;->args:[Ljava/lang/Class;
array-length v3, v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " args from Class \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public final setValue(Ljava/lang/Object;Ljava/lang/Object;)V
.registers 6
new-instance v0, Ljava/lang/UnsupportedOperationException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Cannot call setValue() on constructor of "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getDeclaringClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "[constructor for "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", annotations: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->_annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method final writeReplace()Ljava/lang/Object;
.registers 4
new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
new-instance v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor$Serialization;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;
invoke-direct {v1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor$Serialization;-><init>(Ljava/lang/reflect/Constructor;)V
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor$Serialization;)V
return-object v0
.end method