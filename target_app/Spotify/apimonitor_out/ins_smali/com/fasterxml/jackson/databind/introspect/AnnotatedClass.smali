.class public final Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
.super Lcom/fasterxml/jackson/databind/introspect/Annotated;
.source "SourceFile"
.field private static final NO_ANNOTATION_MAPS:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
.field protected final _annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
.field protected final _class:Ljava/lang/Class;
.field protected _classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
.field protected _constructors:Ljava/util/List;
.field protected _creatorMethods:Ljava/util/List;
.field protected _creatorsResolved:Z
.field protected _defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
.field protected _fields:Ljava/util/List;
.field protected _memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;
.field protected final _mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
.field protected final _primaryMixIn:Ljava/lang/Class;
.field protected final _superTypes:Ljava/util/List;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
new-array v0, v0, [Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
sput-object v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->NO_ANNOTATION_MAPS:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
return-void
.end method
.method private constructor <init>(Ljava/lang/Class;Ljava/util/List;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V
.registers 8
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorsResolved:Z
iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_superTypes:Ljava/util/List;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iput-object p4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
if-nez v0, :cond_18
const/4 v0, 0x0
:goto_13
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;
iput-object p5, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
return-void
:cond_18
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;
invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;
move-result-object v0
goto :goto_13
.end method
.method private _addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;[Ljava/lang/annotation/Annotation;)V
.registers 9
if-eqz p2, :cond_41
const/4 v1, 0x0
array-length v2, p2
const/4 v0, 0x0
move v5, v0
move-object v0, v1
move v1, v5
:goto_8
if-ge v1, v2, :cond_2b
aget-object v3, p2, v1
invoke-direct {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z
move-result v4
if-eqz v4, :cond_27
if-nez v0, :cond_19
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
:cond_19
invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
move-result-object v3
invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_24
add-int/lit8 v1, v1, 0x1
goto :goto_8
:cond_27
invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->addIfNotPresent(Ljava/lang/annotation/Annotation;)V
goto :goto_24
:cond_2b
if-eqz v0, :cond_41
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_31
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_41
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/annotation/Annotation;
invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;[Ljava/lang/annotation/Annotation;)V
goto :goto_31
:cond_41
return-void
.end method
.method private _addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Ljava/lang/annotation/Annotation;)V
.registers 9
if-eqz p2, :cond_41
const/4 v1, 0x0
array-length v2, p2
const/4 v0, 0x0
move v5, v0
move-object v0, v1
move v1, v5
:goto_8
if-ge v1, v2, :cond_2b
aget-object v3, p2, v1
invoke-direct {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z
move-result v4
if-eqz v4, :cond_27
if-nez v0, :cond_19
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
:cond_19
invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
move-result-object v3
invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_24
add-int/lit8 v1, v1, 0x1
goto :goto_8
:cond_27
invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->addIfNotPresent(Ljava/lang/annotation/Annotation;)V
goto :goto_24
:cond_2b
if-eqz v0, :cond_41
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_31
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_41
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/annotation/Annotation;
invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Ljava/lang/annotation/Annotation;)V
goto :goto_31
:cond_41
return-void
.end method
.method private _addOrOverrideAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;[Ljava/lang/annotation/Annotation;)V
.registers 9
if-eqz p2, :cond_41
const/4 v1, 0x0
array-length v2, p2
const/4 v0, 0x0
move v5, v0
move-object v0, v1
move v1, v5
:goto_8
if-ge v1, v2, :cond_2b
aget-object v3, p2, v1
invoke-direct {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z
move-result v4
if-eqz v4, :cond_27
if-nez v0, :cond_19
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
:cond_19
invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
move-result-object v3
invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_24
add-int/lit8 v1, v1, 0x1
goto :goto_8
:cond_27
invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->addOrOverride(Ljava/lang/annotation/Annotation;)V
goto :goto_24
:cond_2b
if-eqz v0, :cond_41
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_31
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_41
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/annotation/Annotation;
invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addOrOverrideAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;[Ljava/lang/annotation/Annotation;)V
goto :goto_31
:cond_41
return-void
.end method
.method private _emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
.registers 2
new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;-><init>()V
return-object v0
.end method
.method private _emptyAnnotationMaps(I)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
.registers 5
if-nez p1, :cond_5
sget-object v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->NO_ANNOTATION_MAPS:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
:cond_4
return-object v0
:cond_5
new-array v0, p1, [Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
const/4 v1, 0x0
:goto_8
if-ge v1, p1, :cond_4
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
move-result-object v2
aput-object v2, v0, v1
add-int/lit8 v1, v1, 0x1
goto :goto_8
.end method
.method private final _isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method private _isIncludableField(Ljava/lang/reflect/Field;)Z
.registers 5
const/4 v0, 0x0
invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z
move-result v1
if-eqz v1, :cond_8
:cond_7
:goto_7
return v0
:cond_8
invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I
move-result v1
invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
move-result v2
if-nez v2, :cond_7
invoke-static {v1}, Ljava/lang/reflect/Modifier;->isTransient(I)Z
move-result v1
if-nez v1, :cond_7
const/4 v0, 0x1
goto :goto_7
.end method
.method public static construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
.registers 9
const/4 v5, 0x0
new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-static {p0, v5}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findSuperTypes(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
move-result-object v2
move-object v1, p0
move-object v3, p1
move-object v4, p2
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;-><init>(Ljava/lang/Class;Ljava/util/List;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V
return-object v0
.end method
.method public static constructWithoutSuperTypes(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
.registers 9
new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v2
const/4 v5, 0x0
move-object v1, p0
move-object v3, p1
move-object v4, p2
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;-><init>(Ljava/lang/Class;Ljava/util/List;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V
return-object v0
.end method
.method private resolveClassAnnotations()V
.registers 4
new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
if-eqz v0, :cond_4b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;
invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addClassMixIns(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;Ljava/lang/Class;Ljava/lang/Class;)V
:cond_18
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;
invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Ljava/lang/annotation/Annotation;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_superTypes:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_29
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_44
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Class;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
invoke-virtual {p0, v2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addClassMixIns(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;Ljava/lang/Class;)V
iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
move-result-object v0
invoke-direct {p0, v2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Ljava/lang/annotation/Annotation;)V
goto :goto_29
:cond_44
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
const-class v1, Ljava/lang/Object;
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addClassMixIns(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;Ljava/lang/Class;)V
:cond_4b
return-void
.end method
.method private resolveCreators()V
.registers 11
const/4 v9, 0x1
const/4 v2, 0x0
const/4 v1, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;
move-result-object v4
array-length v5, v4
move v3, v1
move-object v0, v2
:goto_c
if-ge v3, v5, :cond_36
aget-object v6, v4, v3
invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;
move-result-object v7
array-length v7, v7
if-nez v7, :cond_20
invoke-virtual {p0, v6, v9}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructConstructor(Ljava/lang/reflect/Constructor;Z)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
move-result-object v6
iput-object v6, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
:goto_1d
add-int/lit8 v3, v3, 0x1
goto :goto_c
:cond_20
if-nez v0, :cond_2e
new-instance v0, Ljava/util/ArrayList;
const/16 v7, 0xa
array-length v8, v4
invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I
move-result v7
invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V
:cond_2e
invoke-virtual {p0, v6, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructConstructor(Ljava/lang/reflect/Constructor;Z)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
move-result-object v6
invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_1d
:cond_36
if-nez v0, :cond_8c
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;
:goto_3e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;
if-eqz v0, :cond_53
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
if-nez v0, :cond_4e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_53
:cond_4e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addConstructorMixIns(Ljava/lang/Class;)V
:cond_53
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
if-eqz v0, :cond_8f
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
if-eqz v0, :cond_67
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z
move-result v0
if-eqz v0, :cond_67
iput-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
:cond_67
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;
if-eqz v0, :cond_8f
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
:goto_71
add-int/lit8 v3, v0, -0x1
if-ltz v3, :cond_8f
iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;
invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
invoke-virtual {v4, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z
move-result v0
if-eqz v0, :cond_f5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;
invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
move v0, v3
goto :goto_71
:cond_8c
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;
goto :goto_3e
:cond_8f
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
move-result-object v3
array-length v4, v3
move-object v0, v2
:goto_97
if-ge v1, v4, :cond_b8
aget-object v2, v3, v1
invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I
move-result v5
invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
move-result v5
if-eqz v5, :cond_b5
if-nez v0, :cond_ae
new-instance v0, Ljava/util/ArrayList;
const/16 v5, 0x8
invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V
:cond_ae
invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructCreatorMethod(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
move-result-object v2
invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_b5
add-int/lit8 v1, v1, 0x1
goto :goto_97
:cond_b8
if-nez v0, :cond_c3
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;
:cond_c0
iput-boolean v9, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorsResolved:Z
return-void
:cond_c3
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;
if-eqz v0, :cond_ce
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addFactoryMixIns(Ljava/lang/Class;)V
:cond_ce
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
if-eqz v0, :cond_c0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
:goto_d8
add-int/lit8 v1, v0, -0x1
if-ltz v1, :cond_c0
iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z
move-result v0
if-eqz v0, :cond_f3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
move v0, v1
goto :goto_d8
:cond_f3
move v0, v1
goto :goto_d8
:cond_f5
move v0, v3
goto/16 :goto_71
.end method
.method private resolveFields()V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_findFields(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
move-result-object v0
if-eqz v0, :cond_f
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v1
if-nez v1, :cond_16
:cond_f
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_fields:Ljava/util/List;
:goto_15
return-void
:cond_16
new-instance v1, Ljava/util/ArrayList;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v2
invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V
iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_fields:Ljava/util/List;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_fields:Ljava/util/List;
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
goto :goto_15
.end method
.method private resolveMemberMethods()V
.registers 6
new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;
new-instance v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;
invoke-direct {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;-><init>()V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;
invoke-virtual {p0, v0, v1, v3, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMemberMethods(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_superTypes:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_1b
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_39
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Class;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
if-nez v1, :cond_32
const/4 v1, 0x0
:goto_2c
iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;
invoke-virtual {p0, v0, v4, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMemberMethods(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;)V
goto :goto_1b
:cond_32
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
invoke-interface {v1, v0}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;
move-result-object v1
goto :goto_2c
:cond_39
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
if-eqz v0, :cond_4e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
const-class v1, Ljava/lang/Object;
invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;
move-result-object v0
if-eqz v0, :cond_4e
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;
invoke-virtual {p0, v1, v3, v0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMethodMixIns(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;)V
:cond_4e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
if-eqz v0, :cond_8c
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->isEmpty()Z
move-result v0
if-nez v0, :cond_8c
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_5c
:cond_5c
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_8c
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
:try_start_68
const-class v2, Ljava/lang/Object;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterTypes()[Ljava/lang/Class;
move-result-object v4
invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v2
if-eqz v2, :cond_5c
invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructMethod(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
move-result-object v2
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;
move-result-object v0
const/4 v3, 0x0
invoke-virtual {p0, v0, v2, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMixOvers(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Z)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;
invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->add(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V
:try_end_89
.catch Ljava/lang/Exception; {:try_start_68 .. :try_end_89} :catch_8a
goto :goto_5c
:catch_8a
move-exception v0
goto :goto_5c
:cond_8c
return-void
.end method
.method protected final _addClassMixIns(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;Ljava/lang/Class;)V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
invoke-interface {v0, p2}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;
move-result-object v0
invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addClassMixIns(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;Ljava/lang/Class;Ljava/lang/Class;)V
:cond_d
return-void
.end method
.method protected final _addClassMixIns(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;Ljava/lang/Class;Ljava/lang/Class;)V
.registers 6
if-nez p3, :cond_3
:cond_2
return-void
:cond_3
invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Ljava/lang/annotation/Annotation;)V
invoke-static {p3, p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findSuperTypes(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_12
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Ljava/lang/annotation/Annotation;)V
goto :goto_12
.end method
.method protected final _addConstructorMixIns(Ljava/lang/Class;)V
.registers 12
const/4 v2, 0x0
const/4 v3, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;
if-nez v0, :cond_26
move v1, v2
:goto_7
invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;
move-result-object v6
array-length v7, v6
move v4, v2
move-object v0, v3
:goto_e
if-ge v4, v7, :cond_6e
aget-object v8, v6, v4
invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;
move-result-object v3
array-length v3, v3
if-nez v3, :cond_2e
iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
if-eqz v3, :cond_22
iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
invoke-virtual {p0, v8, v3, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMixOvers(Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;Z)V
:goto_22
:cond_22
add-int/lit8 v3, v4, 0x1
move v4, v3
goto :goto_e
:cond_26
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
move v1, v0
goto :goto_7
:cond_2e
if-nez v0, :cond_4c
new-array v3, v1, [Lcom/fasterxml/jackson/databind/introspect/MemberKey;
move v5, v2
:goto_33
if-ge v5, v1, :cond_4d
new-instance v9, Lcom/fasterxml/jackson/databind/introspect/MemberKey;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;
invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;
move-result-object v0
invoke-direct {v9, v0}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Constructor;)V
aput-object v9, v3, v5
add-int/lit8 v0, v5, 0x1
move v5, v0
goto :goto_33
:cond_4c
move-object v3, v0
:cond_4d
new-instance v5, Lcom/fasterxml/jackson/databind/introspect/MemberKey;
invoke-direct {v5, v8}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Constructor;)V
move v0, v2
:goto_53
if-ge v0, v1, :cond_6f
aget-object v9, v3, v0
invoke-virtual {v5, v9}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_6b
iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;
invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
const/4 v5, 0x1
invoke-virtual {p0, v8, v0, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMixOvers(Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;Z)V
move-object v0, v3
goto :goto_22
:cond_6b
add-int/lit8 v0, v0, 0x1
goto :goto_53
:cond_6e
return-void
:cond_6f
move-object v0, v3
goto :goto_22
.end method
.method protected final _addFactoryMixIns(Ljava/lang/Class;)V
.registers 12
const/4 v3, 0x0
const/4 v0, 0x0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v5
invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
move-result-object v6
array-length v7, v6
move v2, v3
:goto_e
if-ge v2, v7, :cond_66
aget-object v8, v6, v2
invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I
move-result v1
invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
move-result v1
if-eqz v1, :cond_67
invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
move-result-object v1
array-length v1, v1
if-eqz v1, :cond_67
if-nez v0, :cond_41
new-array v1, v5, [Lcom/fasterxml/jackson/databind/introspect/MemberKey;
move v4, v3
:goto_28
if-ge v4, v5, :cond_42
new-instance v9, Lcom/fasterxml/jackson/databind/introspect/MemberKey;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;
invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;
move-result-object v0
invoke-direct {v9, v0}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V
aput-object v9, v1, v4
add-int/lit8 v0, v4, 0x1
move v4, v0
goto :goto_28
:cond_41
move-object v1, v0
:cond_42
new-instance v4, Lcom/fasterxml/jackson/databind/introspect/MemberKey;
invoke-direct {v4, v8}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V
move v0, v3
:goto_48
if-ge v0, v5, :cond_5e
aget-object v9, v1, v0
invoke-virtual {v4, v9}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_63
iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;
invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
const/4 v4, 0x1
invoke-virtual {p0, v8, v0, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMixOvers(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Z)V
:goto_5e
:cond_5e
add-int/lit8 v0, v2, 0x1
move v2, v0
move-object v0, v1
goto :goto_e
:cond_63
add-int/lit8 v0, v0, 0x1
goto :goto_48
:cond_66
return-void
:cond_67
move-object v1, v0
goto :goto_5e
.end method
.method protected final _addFieldMixIns(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)V
.registers 10
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-static {p2, p1, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findSuperTypes(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_f
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_43
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;
move-result-object v3
array-length v4, v3
const/4 v0, 0x0
move v1, v0
:goto_22
if-ge v1, v4, :cond_f
aget-object v5, v3, v1
invoke-direct {p0, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_isIncludableField(Ljava/lang/reflect/Field;)Z
move-result v0
if-eqz v0, :cond_3f
invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
move-result-object v0
invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
if-eqz v0, :cond_3f
invoke-virtual {v5}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
move-result-object v5
invoke-direct {p0, v0, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addOrOverrideAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;[Ljava/lang/annotation/Annotation;)V
:cond_3f
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_22
:cond_43
return-void
.end method
.method protected final _addMemberMethods(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;)V
.registers 12
const/4 v1, 0x0
if-eqz p3, :cond_6
invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMethodMixIns(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;)V
:cond_6
if-nez p1, :cond_9
:cond_8
return-void
:cond_9
invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
move-result-object v2
array-length v3, v2
move v0, v1
:goto_f
if-ge v0, v3, :cond_8
aget-object v4, v2, v0
invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_isIncludableMemberMethod(Ljava/lang/reflect/Method;)Z
move-result v5
if-eqz v5, :cond_33
invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->find(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
move-result-object v5
if-nez v5, :cond_36
invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructMethod(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
move-result-object v5
invoke-virtual {p2, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->add(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V
invoke-virtual {p4, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->remove(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
move-result-object v4
if-eqz v4, :cond_33
invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;
move-result-object v4
invoke-virtual {p0, v4, v5, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMixOvers(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Z)V
:goto_33
:cond_33
add-int/lit8 v0, v0, 0x1
goto :goto_f
:cond_36
invoke-virtual {p0, v4, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMixUnders(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V
invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/Class;->isInterface()Z
move-result v6
if-eqz v6, :cond_33
invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/Class;->isInterface()Z
move-result v6
if-nez v6, :cond_33
invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->withMethod(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
move-result-object v4
invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->add(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V
goto :goto_33
.end method
.method protected final _addMethodMixIns(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;)V
.registers 11
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-static {p3, p1, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findSuperTypes(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_f
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3f
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
move-result-object v2
array-length v3, v2
const/4 v0, 0x0
:goto_21
if-ge v0, v3, :cond_f
aget-object v4, v2, v0
invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_isIncludableMemberMethod(Ljava/lang/reflect/Method;)Z
move-result v5
if-eqz v5, :cond_34
invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->find(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
move-result-object v5
if-eqz v5, :cond_37
invoke-virtual {p0, v4, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMixUnders(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V
:goto_34
:cond_34
add-int/lit8 v0, v0, 0x1
goto :goto_21
:cond_37
invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructMethod(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
move-result-object v4
invoke-virtual {p4, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->add(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V
goto :goto_34
:cond_3f
return-void
.end method
.method protected final _addMixOvers(Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;Z)V
.registers 12
const/4 v1, 0x0
invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
move-result-object v0
invoke-direct {p0, p2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addOrOverrideAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;[Ljava/lang/annotation/Annotation;)V
if-eqz p3, :cond_24
invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
move-result-object v3
array-length v4, v3
move v2, v1
:goto_10
if-ge v2, v4, :cond_24
aget-object v5, v3, v2
array-length v6, v5
move v0, v1
:goto_16
if-ge v0, v6, :cond_20
aget-object v7, v5, v0
invoke-virtual {p2, v2, v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->addOrOverrideParam(ILjava/lang/annotation/Annotation;)V
add-int/lit8 v0, v0, 0x1
goto :goto_16
:cond_20
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_10
:cond_24
return-void
.end method
.method protected final _addMixOvers(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Z)V
.registers 12
const/4 v1, 0x0
invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
move-result-object v0
invoke-direct {p0, p2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addOrOverrideAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;[Ljava/lang/annotation/Annotation;)V
if-eqz p3, :cond_24
invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
move-result-object v3
array-length v4, v3
move v2, v1
:goto_10
if-ge v2, v4, :cond_24
aget-object v5, v3, v2
array-length v6, v5
move v0, v1
:goto_16
if-ge v0, v6, :cond_20
aget-object v7, v5, v0
invoke-virtual {p2, v2, v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->addOrOverrideParam(ILjava/lang/annotation/Annotation;)V
add-int/lit8 v0, v0, 0x1
goto :goto_16
:cond_20
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_10
:cond_24
return-void
.end method
.method protected final _addMixUnders(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V
.registers 4
invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
move-result-object v0
invoke-direct {p0, p2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;[Ljava/lang/annotation/Annotation;)V
return-void
.end method
.method protected final _collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;-><init>()V
invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Ljava/lang/annotation/Annotation;)V
return-object v0
.end method
.method protected final _collectRelevantAnnotations([[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
.registers 6
array-length v1, p1
new-array v2, v1, [Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
const/4 v0, 0x0
:goto_4
if-ge v0, v1, :cond_11
aget-object v3, p1, v0
invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
move-result-object v3
aput-object v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_4
:cond_11
return-object v2
.end method
.method protected final _constructConstructor(Ljava/lang/reflect/Constructor;Z)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
.registers 10
const/4 v1, 0x0
const/4 v5, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
if-nez v0, :cond_19
new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
move-result-object v1
invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;
move-result-object v2
array-length v2, v2
invoke-direct {p0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_emptyAnnotationMaps(I)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
move-result-object v2
invoke-direct {v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V
:goto_18
return-object v0
:cond_19
if-eqz p2, :cond_29
new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
move-result-object v2
invoke-direct {v0, p1, v2, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V
goto :goto_18
:cond_29
invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
move-result-object v0
invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;
move-result-object v2
array-length v2, v2
array-length v3, v0
if-eq v2, v3, :cond_a6
invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z
move-result v4
if-eqz v4, :cond_8c
array-length v4, v0
add-int/lit8 v4, v4, 0x2
if-ne v2, v4, :cond_8c
array-length v1, v0
add-int/lit8 v1, v1, 0x2
new-array v1, v1, [[Ljava/lang/annotation/Annotation;
const/4 v3, 0x2
array-length v4, v0
invoke-static {v0, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectRelevantAnnotations([[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
move-result-object v0
:goto_52
if-nez v0, :cond_aa
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Internal error: constructor for "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " has mismatch: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " parameters; "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
array-length v1, v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " sets of annotations"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_8c
invoke-virtual {v3}, Ljava/lang/Class;->isMemberClass()Z
move-result v3
if-eqz v3, :cond_ba
array-length v3, v0
add-int/lit8 v3, v3, 0x1
if-ne v2, v3, :cond_ba
array-length v1, v0
add-int/lit8 v1, v1, 0x1
new-array v1, v1, [[Ljava/lang/annotation/Annotation;
const/4 v3, 0x1
array-length v4, v0
invoke-static {v0, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectRelevantAnnotations([[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
move-result-object v0
goto :goto_52
:cond_a6
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectRelevantAnnotations([[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
move-result-object v0
:cond_aa
new-instance v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
move-result-object v2
invoke-direct {v1, p1, v2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V
move-object v0, v1
goto/16 :goto_18
:cond_ba
move-object v6, v1
move-object v1, v0
move-object v0, v6
goto :goto_52
.end method
.method protected final _constructCreatorMethod(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
if-nez v0, :cond_17
new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
move-result-object v1
invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
move-result-object v2
array-length v2, v2
invoke-direct {p0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_emptyAnnotationMaps(I)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
move-result-object v2
invoke-direct {v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V
:goto_16
return-object v0
:cond_17
new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
move-result-object v1
invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectRelevantAnnotations([[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
move-result-object v2
invoke-direct {v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V
goto :goto_16
.end method
.method protected final _constructField(Ljava/lang/reflect/Field;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
if-nez v0, :cond_e
new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
move-result-object v1
invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;-><init>(Ljava/lang/reflect/Field;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V
:goto_d
return-object v0
:cond_e
new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
move-result-object v1
invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;-><init>(Ljava/lang/reflect/Field;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V
goto :goto_d
.end method
.method protected final _constructMethod(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.registers 5
const/4 v2, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
if-nez v0, :cond_f
new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
move-result-object v1
invoke-direct {v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V
:goto_e
return-object v0
:cond_f
new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
move-result-object v1
invoke-direct {v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V
goto :goto_e
.end method
.method protected final _findFields(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
.registers 11
invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
move-result-object v2
if-eqz v2, :cond_42
invoke-virtual {p0, v2, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_findFields(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
move-result-object v1
invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;
move-result-object v3
array-length v4, v3
const/4 v0, 0x0
move v7, v0
move-object v0, v1
move v1, v7
:goto_13
if-ge v1, v4, :cond_32
aget-object v5, v3, v1
invoke-direct {p0, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_isIncludableField(Ljava/lang/reflect/Field;)Z
move-result v6
if-eqz v6, :cond_2f
if-nez v0, :cond_24
new-instance v0, Ljava/util/LinkedHashMap;
invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
:cond_24
invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
move-result-object v6
invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructField(Ljava/lang/reflect/Field;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
move-result-object v5
invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_2f
add-int/lit8 v1, v1, 0x1
goto :goto_13
:cond_32
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
if-eqz v1, :cond_41
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
invoke-interface {v1, p1}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;
move-result-object v1
if-eqz v1, :cond_41
invoke-virtual {p0, v2, v1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addFieldMixIns(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)V
:goto_41
:cond_41
return-object v0
:cond_42
move-object v0, p2
goto :goto_41
.end method
.method protected final _isIncludableMemberMethod(Ljava/lang/reflect/Method;)Z
.registers 5
const/4 v0, 0x0
invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I
move-result v1
invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
move-result v1
if-eqz v1, :cond_c
:goto_b
:cond_b
return v0
:cond_c
invoke-virtual {p1}, Ljava/lang/reflect/Method;->isSynthetic()Z
move-result v1
if-nez v1, :cond_b
invoke-virtual {p1}, Ljava/lang/reflect/Method;->isBridge()Z
move-result v1
if-nez v1, :cond_b
invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
move-result-object v1
array-length v1, v1
const/4 v2, 0x2
if-gt v1, v2, :cond_b
const/4 v0, 0x1
goto :goto_b
.end method
.method public final fields()Ljava/lang/Iterable;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_fields:Ljava/util/List;
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveFields()V
:cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_fields:Ljava/util/List;
return-object v0
.end method
.method public final findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveMemberMethods()V
:cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->find(Ljava/lang/String;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
move-result-object v0
return-object v0
.end method
.method protected final getAllAnnotations()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveClassAnnotations()V
:cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
return-object v0
.end method
.method public final getAnnotated()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;
return-object v0
.end method
.method public final bridge synthetic getAnnotated()Ljava/lang/reflect/AnnotatedElement;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotated()Ljava/lang/Class;
move-result-object v0
return-object v0
.end method
.method public final getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveClassAnnotations()V
:cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v0
return-object v0
.end method
.method public final getAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveClassAnnotations()V
:cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
return-object v0
.end method
.method public final getConstructors()Ljava/util/List;
.registers 2
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorsResolved:Z
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveCreators()V
:cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;
return-object v0
.end method
.method public final getDefaultConstructor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
.registers 2
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorsResolved:Z
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveCreators()V
:cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
return-object v0
.end method
.method public final getGenericType()Ljava/lang/reflect/Type;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;
return-object v0
.end method
.method public final getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getRawType()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;
return-object v0
.end method
.method public final getStaticMethods()Ljava/util/List;
.registers 2
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorsResolved:Z
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveCreators()V
:cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;
return-object v0
.end method
.method public final hasAnnotations()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveClassAnnotations()V
:cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->size()I
move-result v0
if-lez v0, :cond_11
const/4 v0, 0x1
:goto_10
return v0
:cond_11
const/4 v0, 0x0
goto :goto_10
.end method
.method public final memberMethods()Ljava/lang/Iterable;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveMemberMethods()V
:cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "[AnnotedClass "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;
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