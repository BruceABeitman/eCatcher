.class public final Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;
.super Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.source "MethodProperty.java"
.field private static final serialVersionUID:J = 0x1L
.field protected final _annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.field protected final transient _setter:Ljava/lang/reflect/Method;
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_setter:Ljava/lang/reflect/Method;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_setter:Ljava/lang/reflect/Method;
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;Ljava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/String;)V
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_setter:Ljava/lang/reflect/Method;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_setter:Ljava/lang/reflect/Method;
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;Ljava/lang/reflect/Method;)V
.registers 4
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_setter:Ljava/lang/reflect/Method;
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V
.registers 7
invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;)V
iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
invoke-virtual {p5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_setter:Ljava/lang/reflect/Method;
return-void
.end method
.method public final deserializeAndSet(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
.registers 5
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, p3, v0}, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V
return-void
.end method
.method public final deserializeSetAndReturn(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, p3, v0}, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v0
return-object v0
.end method
.method public final getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
return-object v0
.end method
.method final readResolve()Ljava/lang/Object;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;Ljava/lang/reflect/Method;)V
return-object v0
.end method
.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
.registers 6
:try_start_0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_setter:Ljava/lang/reflect/Method;
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p2, v1, v2
invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:goto_b
:try_end_b
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c
return-void
:catch_c
move-exception v0
invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_throwAsIOE(Ljava/lang/Exception;Ljava/lang/Object;)V
goto :goto_b
.end method
.method public final setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.registers 6
:try_start_0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_setter:Ljava/lang/reflect/Method;
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p2, v1, v2
invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_b
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_11
move-result-object v0
if-nez v0, :cond_f
:goto_e
return-object p1
:cond_f
move-object p1, v0
goto :goto_e
:catch_11
move-exception v0
invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_throwAsIOE(Ljava/lang/Exception;Ljava/lang/Object;)V
const/4 p1, 0x0
goto :goto_e
.end method
.method public final bridge synthetic withName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->withName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;
move-result-object v0
return-object v0
.end method
.method public final withName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;Ljava/lang/String;)V
return-object v0
.end method
.method public final bridge synthetic withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;
move-result-object v0
return-object v0
.end method
.method public final withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
return-object v0
.end method