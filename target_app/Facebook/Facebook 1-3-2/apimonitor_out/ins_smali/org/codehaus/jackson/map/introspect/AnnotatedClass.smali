.class public final Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
.super Lorg/codehaus/jackson/map/introspect/Annotated;
.field final _annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;
.field final _class:Ljava/lang/Class;
.field  _classAnnotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;
.field  _defaultConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
.field  _fields:Ljava/util/List;
.field  _memberMethods:Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;
.field  _singleArgConstructors:Ljava/util/List;
.field  _singleArgStaticMethods:Ljava/util/List;
.field final _superTypes:Ljava/util/Collection;
.method private constructor <init>(Ljava/lang/Class;Ljava/util/List;Lorg/codehaus/jackson/map/AnnotationIntrospector;)V
.registers 4
invoke-direct {p0}, Lorg/codehaus/jackson/map/introspect/Annotated;-><init>()V
iput-object p1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;
iput-object p2, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_superTypes:Ljava/util/Collection;
iput-object p3, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;
return-void
.end method
.method private _addFields(Ljava/util/List;Ljava/lang/Class;)V
.registers 9
invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
move-result-object v0
if-eqz v0, :cond_3d
invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_addFields(Ljava/util/List;Ljava/lang/Class;)V
invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;
move-result-object v0
array-length v1, v0
const/4 v2, 0x0
:goto_f
if-ge v2, v1, :cond_3d
aget-object v3, v0, v2
invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_isIncludableField(Ljava/lang/reflect/Field;)Z
move-result v4
if-nez v4, :cond_1c
:cond_19
:goto_19
add-int/lit8 v2, v2, 0x1
goto :goto_f
:cond_1c
invoke-virtual {v3}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;
move-result-object v4
invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I
move-result v5
invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z
move-result v5
if-nez v5, :cond_2d
array-length v4, v4
if-lez v4, :cond_19
:cond_2d
invoke-virtual {p0, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_constructField(Ljava/lang/reflect/Field;)Lorg/codehaus/jackson/map/introspect/AnnotatedField;
move-result-object v3
iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;
invoke-virtual {v4, v3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableField(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z
move-result v4
if-nez v4, :cond_19
invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_19
:cond_3d
return-void
.end method
.method private _isIncludableField(Ljava/lang/reflect/Field;)Z
.registers 5
const/4 v2, 0x0
invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z
move-result v0
if-eqz v0, :cond_9
move v0, v2
:goto_8
return v0
:cond_9
invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I
move-result v0
invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
move-result v1
if-nez v1, :cond_19
invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z
move-result v0
if-eqz v0, :cond_1b
:cond_19
move v0, v2
goto :goto_8
:cond_1b
const/4 v0, 0x1
goto :goto_8
.end method
.method public static construct(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
.registers 4
const/4 v0, 0x0
invoke-static {p0, v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->findSuperTypes(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
move-result-object v0
new-instance v1, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
invoke-direct {v1, p0, v0, p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;-><init>(Ljava/lang/Class;Ljava/util/List;Lorg/codehaus/jackson/map/AnnotationIntrospector;)V
invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->resolveClassAnnotations()V
return-object v1
.end method
.method protected _collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;
.registers 7
new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotationMap;
invoke-direct {v0}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;-><init>()V
if-eqz p1, :cond_1b
array-length v1, p1
const/4 v2, 0x0
:goto_9
if-ge v2, v1, :cond_1b
aget-object v3, p1, v2
iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;
invoke-virtual {v4, v3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z
move-result v4
if-eqz v4, :cond_18
invoke-virtual {v0, v3}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->add(Ljava/lang/annotation/Annotation;)V
:cond_18
add-int/lit8 v2, v2, 0x1
goto :goto_9
:cond_1b
return-object v0
.end method
.method protected _constructConstructor(Ljava/lang/reflect/Constructor;)Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
.registers 4
new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
move-result-object v1
invoke-virtual {p0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;
move-result-object v1
invoke-direct {v0, p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;-><init>(Ljava/lang/reflect/Constructor;Lorg/codehaus/jackson/map/introspect/AnnotationMap;)V
return-object v0
.end method
.method protected _constructField(Ljava/lang/reflect/Field;)Lorg/codehaus/jackson/map/introspect/AnnotatedField;
.registers 4
new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;
invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
move-result-object v1
invoke-virtual {p0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;
move-result-object v1
invoke-direct {v0, p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;-><init>(Ljava/lang/reflect/Field;Lorg/codehaus/jackson/map/introspect/AnnotationMap;)V
return-object v0
.end method
.method protected _constructMethod(Ljava/lang/reflect/Method;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
.registers 4
new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
move-result-object v1
invoke-virtual {p0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lorg/codehaus/jackson/map/introspect/AnnotationMap;
move-result-object v1
invoke-direct {v0, p1, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;-><init>(Ljava/lang/reflect/Method;Lorg/codehaus/jackson/map/introspect/AnnotationMap;)V
return-object v0
.end method
.method protected _isIncludableMethod(Ljava/lang/reflect/Method;)Z
.registers 3
invoke-virtual {p1}, Ljava/lang/reflect/Method;->isSynthetic()Z
move-result v0
if-nez v0, :cond_c
invoke-virtual {p1}, Ljava/lang/reflect/Method;->isBridge()Z
move-result v0
if-eqz v0, :cond_e
:cond_c
const/4 v0, 0x0
:goto_d
return v0
:cond_e
const/4 v0, 0x1
goto :goto_d
.end method
.method public fields()Ljava/lang/Iterable;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_fields:Ljava/util/List;
if-nez v0, :cond_9
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
:goto_8
return-object v0
:cond_9
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_fields:Ljava/util/List;
goto :goto_8
.end method
.method public findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
.registers 4
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;
invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->find(Ljava/lang/String;[Ljava/lang/Class;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
move-result-object v0
return-object v0
.end method
.method public getAnnotated()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;
return-object v0
.end method
.method public bridge synthetic getAnnotated()Ljava/lang/reflect/AnnotatedElement;
.registers 2
invoke-virtual {p0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotated()Ljava/lang/Class;
move-result-object v0
return-object v0
.end method
.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
.registers 3
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;
invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v0
goto :goto_5
.end method
.method public getDefaultConstructor()Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_defaultConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
return-object v0
.end method
.method public getFieldCount()I
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_fields:Ljava/util/List;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_fields:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
goto :goto_5
.end method
.method public getMemberMethodCount()I
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;
invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->size()I
move-result v0
return v0
.end method
.method public getModifiers()I
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I
move-result v0
return v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getSingleArgConstructors()Ljava/util/List;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_singleArgConstructors:Ljava/util/List;
if-nez v0, :cond_9
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
:goto_8
return-object v0
:cond_9
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_singleArgConstructors:Ljava/util/List;
goto :goto_8
.end method
.method public getSingleArgStaticMethods()Ljava/util/List;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_singleArgStaticMethods:Ljava/util/List;
if-nez v0, :cond_9
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
:goto_8
return-object v0
:cond_9
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_singleArgStaticMethods:Ljava/util/List;
goto :goto_8
.end method
.method public getType()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;
return-object v0
.end method
.method public memberMethods()Ljava/lang/Iterable;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;
return-object v0
.end method
.method protected resolveClassAnnotations()V
.registers 8
const/4 v6, 0x0
new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotationMap;
invoke-direct {v0}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;-><init>()V
iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
move-result-object v0
array-length v1, v0
move v2, v6
:goto_10
if-ge v2, v1, :cond_24
aget-object v3, v0, v2
iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;
invoke-virtual {v4, v3}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z
move-result v4
if-eqz v4, :cond_21
iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;
invoke-virtual {v4, v3}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->add(Ljava/lang/annotation/Annotation;)V
:cond_21
add-int/lit8 v2, v2, 0x1
goto :goto_10
:cond_24
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_superTypes:Ljava/util/Collection;
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_2a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_50
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
move-result-object v0
array-length v2, v0
move v3, v6
:goto_3c
if-ge v3, v2, :cond_2a
aget-object v4, v0, v3
iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;
invoke-virtual {v5, v4}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z
move-result v5
if-eqz v5, :cond_4d
iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_classAnnotations:Lorg/codehaus/jackson/map/introspect/AnnotationMap;
invoke-virtual {v5, v4}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->addIfNotPresent(Ljava/lang/annotation/Annotation;)V
:cond_4d
add-int/lit8 v3, v3, 0x1
goto :goto_3c
:cond_50
return-void
.end method
.method public resolveCreators(Z)V
.registers 9
const/4 v6, 0x0
const/4 v5, 0x0
iput-object v6, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_singleArgConstructors:Ljava/util/List;
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;
move-result-object v0
array-length v1, v0
move v2, v5
:goto_c
if-ge v2, v1, :cond_39
aget-object v3, v0, v2
invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;
move-result-object v4
array-length v4, v4
packed-switch v4, :pswitch_data_74
:goto_18
:cond_18
add-int/lit8 v2, v2, 0x1
goto :goto_c
:pswitch_1b
invoke-virtual {p0, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_constructConstructor(Ljava/lang/reflect/Constructor;)Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
move-result-object v3
iput-object v3, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_defaultConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
goto :goto_18
:pswitch_22
if-eqz p1, :cond_18
iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_singleArgConstructors:Ljava/util/List;
if-nez v4, :cond_2f
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
iput-object v4, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_singleArgConstructors:Ljava/util/List;
:cond_2f
iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_singleArgConstructors:Ljava/util/List;
invoke-virtual {p0, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_constructConstructor(Ljava/lang/reflect/Constructor;)Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;
move-result-object v3
invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_18
:cond_39
iput-object v6, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_singleArgStaticMethods:Ljava/util/List;
if-eqz p1, :cond_72
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
move-result-object v0
array-length v1, v0
move v2, v5
:goto_45
if-ge v2, v1, :cond_72
aget-object v3, v0, v2
invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I
move-result v4
invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
move-result v4
if-eqz v4, :cond_6f
invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
move-result-object v4
array-length v4, v4
const/4 v5, 0x1
if-ne v4, v5, :cond_6f
iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_singleArgStaticMethods:Ljava/util/List;
if-nez v4, :cond_66
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
iput-object v4, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_singleArgStaticMethods:Ljava/util/List;
:cond_66
iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_singleArgStaticMethods:Ljava/util/List;
invoke-virtual {p0, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_constructMethod(Ljava/lang/reflect/Method;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
move-result-object v3
invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_6f
add-int/lit8 v2, v2, 0x1
goto :goto_45
:cond_72
return-void
nop
:pswitch_data_74
.packed-switch 0x0
:pswitch_1b
:pswitch_22
.end packed-switch
.end method
.method public resolveFields()V
.registers 3
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_fields:Ljava/util/List;
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_fields:Ljava/util/List;
iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;
invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_addFields(Ljava/util/List;Ljava/lang/Class;)V
return-void
.end method
.method public resolveMemberMethods(Lorg/codehaus/jackson/map/introspect/MethodFilter;)V
.registers 13
const/4 v10, 0x0
new-instance v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;
invoke-direct {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;-><init>()V
iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
move-result-object v0
array-length v1, v0
move v2, v10
:goto_10
if-ge v2, v1, :cond_26
aget-object v3, v0, v2
invoke-virtual {p0, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_isIncludableMethod(Ljava/lang/reflect/Method;)Z
move-result v4
if-eqz v4, :cond_23
iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;
invoke-virtual {p0, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_constructMethod(Ljava/lang/reflect/Method;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
move-result-object v3
invoke-virtual {v4, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->add(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V
:cond_23
add-int/lit8 v2, v2, 0x1
goto :goto_10
:cond_26
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_superTypes:Ljava/util/Collection;
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_2c
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_75
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
move-result-object v0
array-length v2, v0
move v3, v10
:goto_3e
if-ge v3, v2, :cond_2c
aget-object v4, v0, v3
invoke-virtual {p0, v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_isIncludableMethod(Ljava/lang/reflect/Method;)Z
move-result v5
if-nez v5, :cond_4b
:cond_48
:goto_48
add-int/lit8 v3, v3, 0x1
goto :goto_3e
:cond_4b
iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;
invoke-virtual {v5, v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->find(Ljava/lang/reflect/Method;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
move-result-object v5
if-nez v5, :cond_5d
iget-object v5, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;
invoke-virtual {p0, v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_constructMethod(Ljava/lang/reflect/Method;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
move-result-object v4
invoke-virtual {v5, v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->add(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V
goto :goto_48
:cond_5d
invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
move-result-object v4
array-length v6, v4
move v7, v10
:goto_63
if-ge v7, v6, :cond_48
aget-object v8, v4, v7
iget-object v9, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;
invoke-virtual {v9, v8}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z
move-result v9
if-eqz v9, :cond_72
invoke-virtual {v5, v8}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->addIfNotPresent(Ljava/lang/annotation/Annotation;)V
:cond_72
add-int/lit8 v7, v7, 0x1
goto :goto_63
:cond_75
iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_memberMethods:Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;
invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethodMap;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_7b
:goto_7b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_93
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;
iget-object v2, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;
invoke-virtual {v2, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableMethod(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
move-result v0
if-eqz v0, :cond_7b
invoke-interface {v1}, Ljava/util/Iterator;->remove()V
goto :goto_7b
:cond_93
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "[AnnotedClass "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->_class:Ljava/lang/Class;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method