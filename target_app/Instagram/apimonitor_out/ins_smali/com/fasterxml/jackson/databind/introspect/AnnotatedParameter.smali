.class public final Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
.super Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.source "AnnotatedParameter.java"
.field private static final serialVersionUID:J = 0x1L
.field protected final _index:I
.field protected final _owner:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
.field protected final _type:Ljava/lang/reflect/Type;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;I)V
.registers 5
invoke-direct {p0, p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->_owner:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->_type:Ljava/lang/reflect/Type;
iput p4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->_index:I
return-void
.end method
.method public final getAnnotated()Ljava/lang/reflect/AnnotatedElement;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->_annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->_annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v0
goto :goto_5
.end method
.method public final getDeclaringClass()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->_owner:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getDeclaringClass()Ljava/lang/Class;
move-result-object v0
return-object v0
.end method
.method public final getGenericType()Ljava/lang/reflect/Type;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->_type:Ljava/lang/reflect/Type;
return-object v0
.end method
.method public final getIndex()I
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->_index:I
return v0
.end method
.method public final getMember()Ljava/lang/reflect/Member;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->_owner:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getMember()Ljava/lang/reflect/Member;
move-result-object v0
return-object v0
.end method
.method public final getModifiers()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->_owner:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getModifiers()I
move-result v0
return v0
.end method
.method public final getName()Ljava/lang/String;
.registers 2
const-string v0, ""
return-object v0
.end method
.method public final getOwner()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->_owner:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
return-object v0
.end method
.method public final getParameterType()Ljava/lang/reflect/Type;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->_type:Ljava/lang/reflect/Type;
return-object v0
.end method
.method public final getRawType()Ljava/lang/Class;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->_type:Ljava/lang/reflect/Type;
instance-of v0, v0, Ljava/lang/Class;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->_type:Ljava/lang/reflect/Type;
check-cast v0, Ljava/lang/Class;
:goto_a
return-object v0
:cond_b
invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->_type:Ljava/lang/reflect/Type;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
goto :goto_a
.end method
.method public final getValue(Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
new-instance v0, Ljava/lang/UnsupportedOperationException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Cannot call getValue() on constructor parameter of "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getDeclaringClass()Ljava/lang/Class;
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
.method public final setValue(Ljava/lang/Object;Ljava/lang/Object;)V
.registers 6
new-instance v0, Ljava/lang/UnsupportedOperationException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Cannot call setValue() on constructor parameter of "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getDeclaringClass()Ljava/lang/Class;
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
const-string v1, "[parameter #"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getIndex()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", annotations: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->_annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic withAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/Annotated;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->withAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
move-result-object v0
return-object v0
.end method
.method public final withAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->_annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
if-ne p1, v0, :cond_5
:goto_4
return-object p0
:cond_5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->_owner:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
iget v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->_index:I
invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->replaceParameterAnnotations(ILcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
move-result-object p0
goto :goto_4
.end method