.class public Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
.super Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.source "CreatorProperty.java"
.field private static final serialVersionUID:J = 0x1L
.field protected final _annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
.field protected final _creatorIndex:I
.field protected final _fallbackSetter:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.field protected final _injectableValueId:Ljava/lang/Object;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;ILjava/lang/Object;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V
.registers 17
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
move-object/from16 v6, p9
invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V
iput-object p6, p0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
iput p7, p0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_creatorIndex:I
iput-object p8, p0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_injectableValueId:Ljava/lang/Object;
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_fallbackSetter:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/CreatorProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
iget v0, p1, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_creatorIndex:I
iput v0, p0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_creatorIndex:I
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_injectableValueId:Ljava/lang/Object;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_injectableValueId:Ljava/lang/Object;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_fallbackSetter:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_fallbackSetter:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/CreatorProperty;Lcom/fasterxml/jackson/databind/PropertyName;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/PropertyName;)V
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
iget v0, p1, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_creatorIndex:I
iput v0, p0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_creatorIndex:I
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_injectableValueId:Ljava/lang/Object;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_injectableValueId:Ljava/lang/Object;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_fallbackSetter:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_fallbackSetter:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/CreatorProperty;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
.registers 4
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
iget v0, p1, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_creatorIndex:I
iput v0, p0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_creatorIndex:I
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_injectableValueId:Ljava/lang/Object;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_injectableValueId:Ljava/lang/Object;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_fallbackSetter:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/CreatorProperty;Ljava/lang/String;)V
.registers 4
new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;
invoke-direct {v0, p2}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V
invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/CreatorProperty;Lcom/fasterxml/jackson/databind/PropertyName;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;ILjava/lang/Object;Z)V
.registers 21
new-instance v2, Lcom/fasterxml/jackson/databind/PropertyName;
invoke-direct {v2, p1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V
const/4 v1, 0x0
move/from16 v0, p9
invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->construct(ZLjava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyMetadata;
move-result-object v10
move-object v1, p0
move-object v3, p2
move-object v4, p3
move-object v5, p4
move-object/from16 v6, p5
move-object/from16 v7, p6
move/from16 v8, p7
move-object/from16 v9, p8
invoke-direct/range {v1 .. v10}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;ILjava/lang/Object;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V
return-void
.end method
.method public deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
.registers 5
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, p3, v0}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V
return-void
.end method
.method public deserializeSetAndReturn(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, p3, v0}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public findInjectableValue(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_injectableValueId:Ljava/lang/Object;
if-nez v0, :cond_39
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Property \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\' (type "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ") has no injectable value id configured"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_39
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_injectableValueId:Ljava/lang/Object;
invoke-virtual {p1, v0, p0, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findInjectableValue(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v0
goto :goto_5
.end method
.method public getCreatorIndex()I
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_creatorIndex:I
return v0
.end method
.method public getInjectableValueId()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_injectableValueId:Ljava/lang/Object;
return-object v0
.end method
.method public getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
return-object v0
.end method
.method public inject(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->findInjectableValue(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V
return-void
.end method
.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_fallbackSetter:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
if-nez v0, :cond_25
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "No fallback setter/field defined: can not use creator property for "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_25
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_fallbackSetter:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V
return-void
.end method
.method public setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_fallbackSetter:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
if-nez v0, :cond_25
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "No fallback setter/field defined: can not use creator property for "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_25
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_fallbackSetter:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "[creator property, name \'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\'; inject id \'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->_injectableValueId:Ljava/lang/Object;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\']"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public withFallbackSetter(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/CreatorProperty;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
return-object v0
.end method
.method public withName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/CreatorProperty;Lcom/fasterxml/jackson/databind/PropertyName;)V
return-object v0
.end method
.method public bridge synthetic withName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->withName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
move-result-object v0
return-object v0
.end method
.method public withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/CreatorProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
return-object v0
.end method
.method public bridge synthetic withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
move-result-object v0
return-object v0
.end method