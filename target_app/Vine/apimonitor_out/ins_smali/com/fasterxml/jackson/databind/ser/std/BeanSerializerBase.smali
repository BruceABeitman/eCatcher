.class public abstract Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "BeanSerializerBase.java"
.implements Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;
.implements Lcom/fasterxml/jackson/databind/ser/ResolvableSerializer;
.implements Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;
.implements Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;
.field protected static final NAME_FOR_OBJECT_REF:Lcom/fasterxml/jackson/databind/PropertyName;
.field protected static final NO_PROPS:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
.field protected final _anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;
.field protected final _filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
.field protected final _objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
.field protected final _propertyFilterId:Ljava/lang/Object;
.field protected final _props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
.field protected final _serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
.field protected final _typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;
const-string v1, "#object-ref"
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->NAME_FOR_OBJECT_REF:Lcom/fasterxml/jackson/databind/PropertyName;
const/4 v0, 0x0
new-array v0, v0, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->NO_PROPS:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V
.registers 7
const/4 v0, 0x0
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V
iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
if-nez p2, :cond_15
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
:goto_14
return-void
:cond_15
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->getTypeId()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
move-result-object v1
iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->getAnyGetter()Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;
move-result-object v1
iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->getFilterId()Ljava/lang/Object;
move-result-object v1
iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->getObjectIdWriter()Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
move-result-object v1
iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->getBeanDescription()Lcom/fasterxml/jackson/databind/BeanDescription;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->findExpectedFormat(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
move-result-object v1
if-nez v1, :cond_3a
:goto_37
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
goto :goto_14
:cond_3a
invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
move-result-object v0
goto :goto_37
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;)V
.registers 4
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
iget-object v1, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
invoke-direct {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)V
.registers 4
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;
invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;Ljava/lang/Object;)V
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;Ljava/lang/Object;)V
.registers 5
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_handledType:Ljava/lang/Class;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V
.registers 5
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
invoke-static {v0, p2}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->rename([Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/databind/util/NameTransformer;)[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
move-result-object v0
iget-object v1, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
invoke-static {v1, p2}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->rename([Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/databind/util/NameTransformer;)[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
move-result-object v1
invoke-direct {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V
.registers 5
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_handledType:Ljava/lang/Class;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V
iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;[Ljava/lang/String;)V
.registers 13
const/4 v2, 0x0
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_handledType:Ljava/lang/Class;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V
invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->arrayToSet([Ljava/lang/Object;)Ljava/util/HashSet;
move-result-object v3
iget-object v4, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
iget-object v5, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
array-length v6, v4
new-instance v7, Ljava/util/ArrayList;
invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V
if-nez v5, :cond_29
move-object v1, v2
:goto_17
const/4 v0, 0x0
:goto_18
if-ge v0, v6, :cond_3b
aget-object v8, v4, v0
invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;
move-result-object v9
invoke-virtual {v3, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_30
:goto_26
:cond_26
add-int/lit8 v0, v0, 0x1
goto :goto_18
:cond_29
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V
move-object v1, v0
goto :goto_17
:cond_30
invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
if-eqz v5, :cond_26
aget-object v8, v5, v0
invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_26
:cond_3b
invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
move-result v0
new-array v0, v0, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
if-nez v1, :cond_62
:goto_4b
iput-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
return-void
:cond_62
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v0
new-array v0, v0, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
move-object v2, v0
goto :goto_4b
.end method
.method private final _customTypeId(Ljava/lang/Object;)Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_b
const-string v0, ""
:goto_a
return-object v0
:cond_b
instance-of v1, v0, Ljava/lang/String;
if-eqz v1, :cond_12
check-cast v0, Ljava/lang/String;
goto :goto_a
:cond_12
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_a
.end method
.method private static final rename([Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/databind/util/NameTransformer;)[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
.registers 6
if-eqz p0, :cond_b
array-length v0, p0
if-eqz v0, :cond_b
if-eqz p1, :cond_b
sget-object v0, Lcom/fasterxml/jackson/databind/util/NameTransformer;->NOP:Lcom/fasterxml/jackson/databind/util/NameTransformer;
if-ne p1, v0, :cond_c
:goto_b
:cond_b
return-object p0
:cond_c
array-length v2, p0
new-array v0, v2, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
const/4 v1, 0x0
:goto_10
if-ge v1, v2, :cond_1f
aget-object v3, p0, v1
if-eqz v3, :cond_1c
invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->rename(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
move-result-object v3
aput-object v3, v0, v1
:cond_1c
add-int/lit8 v1, v1, 0x1
goto :goto_10
:cond_1f
move-object p0, v0
goto :goto_b
.end method
.method protected _serializeObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;)V
.registers 8
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
if-nez v0, :cond_1c
const/4 v0, 0x0
:goto_7
if-nez v0, :cond_21
invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
:goto_c
invoke-virtual {p5, p2, p3, v1}, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->writeAsField(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;
if-eqz v1, :cond_25
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFieldsFiltered(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:goto_16
if-nez v0, :cond_29
invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
:goto_1b
return-void
:cond_1c
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_customTypeId(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_7
:cond_21
invoke-virtual {p4, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeCustomTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V
goto :goto_c
:cond_25
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFields(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
goto :goto_16
:cond_29
invoke-virtual {p4, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeCustomTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V
goto :goto_1b
.end method
.method protected final _serializeWithObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
.registers 11
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
invoke-virtual {p3, p1, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;
move-result-object v5
invoke-virtual {v5, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->writeAsId(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)Z
move-result v1
if-eqz v1, :cond_f
:goto_e
return-void
:cond_f
invoke-virtual {v5, p1}, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->generateId(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
iget-boolean v2, v0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->alwaysAsId:Z
if-eqz v2, :cond_1d
iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
invoke-virtual {v0, v1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
goto :goto_e
:cond_1d
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializeObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;)V
goto :goto_e
.end method
.method protected final _serializeWithObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Z)V
.registers 9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
invoke-virtual {p3, p1, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;
move-result-object v1
invoke-virtual {v1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->writeAsId(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)Z
move-result v2
if-eqz v2, :cond_f
:cond_e
:goto_e
return-void
:cond_f
invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->generateId(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
iget-boolean v3, v0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->alwaysAsId:Z
if-eqz v3, :cond_1d
iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
invoke-virtual {v0, v2, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
goto :goto_e
:cond_1d
if-eqz p4, :cond_22
invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V
:cond_22
invoke-virtual {v1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->writeAsField(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;
if-eqz v0, :cond_32
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFieldsFiltered(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:goto_2c
if-eqz p4, :cond_e
invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
goto :goto_e
:cond_32
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFields(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
goto :goto_2c
.end method
.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
.registers 8
const/4 v0, 0x0
if-nez p1, :cond_4
:cond_3
return-void
:cond_4
invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectObjectFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;
move-result-object v1
if-eqz v1, :cond_3
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;
if-eqz v2, :cond_2c
invoke-interface {p1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->getProvider()Lcom/fasterxml/jackson/databind/SerializerProvider;
move-result-object v2
iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;
const/4 v4, 0x0
invoke-virtual {p0, v2, v3, v4}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->findPropertyFilter(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
move-result-object v2
:goto_19
iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
array-length v3, v3
if-ge v0, v3, :cond_3
iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
aget-object v3, v3, v0
invoke-interface {p1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->getProvider()Lcom/fasterxml/jackson/databind/SerializerProvider;
move-result-object v4
invoke-interface {v2, v3, v1, v4}, Lcom/fasterxml/jackson/databind/ser/PropertyFilter;->depositSchemaProperty(Lcom/fasterxml/jackson/databind/ser/PropertyWriter;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
add-int/lit8 v0, v0, 0x1
goto :goto_19
:goto_2c
:cond_2c
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
array-length v2, v2
if-ge v0, v2, :cond_3
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
aget-object v2, v2, v0
invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->depositSchemaProperty(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;)V
add-int/lit8 v0, v0, 0x1
goto :goto_2c
.end method
.method protected abstract asArraySerializer()Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.end method
.method public createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 16
const/4 v11, 0x1
const/4 v2, 0x0
const/4 v1, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v5
if-eqz p2, :cond_d
if-nez v5, :cond_83
:cond_d
move-object v4, v1
:goto_e
if-eqz v4, :cond_148
invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertiesToIgnore(Lcom/fasterxml/jackson/databind/introspect/Annotated;)[Ljava/lang/String;
move-result-object v3
invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectIdInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
move-result-object v6
if-nez v6, :cond_89
if-eqz v0, :cond_31
new-instance v0, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
sget-object v2, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->NAME_FOR_OBJECT_REF:Lcom/fasterxml/jackson/databind/PropertyName;
invoke-direct {v0, v2, v1, v1}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Ljava/lang/Class;Ljava/lang/Class;)V
invoke-virtual {v5, v4, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectReferenceInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
move-result-object v0
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getAlwaysAsId()Z
move-result v0
invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->withAlwaysAsId(Z)Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
move-result-object v0
:goto_31
:cond_31
invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFilterId(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
move-result-object v2
if-eqz v2, :cond_144
iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;
if-eqz v6, :cond_43
iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;
invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_144
:cond_43
move-object v12, v2
move-object v2, v0
move-object v0, v12
:goto_46
if-eqz v2, :cond_141
iget-object v6, v2, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->idType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {p1, v6, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v6
invoke-virtual {v2, v6}, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->withSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
move-result-object v2
iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
if-eq v2, v6, :cond_141
invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->withObjectIdWriter(Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
move-result-object v2
:goto_5a
if-eqz v3, :cond_63
array-length v6, v3
if-eqz v6, :cond_63
invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->withIgnorals([Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
move-result-object v2
:cond_63
if-eqz v0, :cond_69
invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
move-result-object v2
:cond_69
if-eqz v4, :cond_13e
invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFormat(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
move-result-object v0
if-eqz v0, :cond_13e
invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
move-result-object v1
move-object v0, v1
:goto_76
if-nez v0, :cond_7a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
:cond_7a
sget-object v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ARRAY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
if-ne v0, v1, :cond_13b
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->asArraySerializer()Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
move-result-object v0
:goto_82
return-object v0
:cond_83
invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
move-result-object v3
move-object v4, v3
goto :goto_e
:cond_89
invoke-virtual {v5, v4, v6}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectReferenceInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
move-result-object v6
invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getGeneratorType()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v7
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
move-result-object v8
const-class v9, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
invoke-virtual {v8, v7, v9}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v7
aget-object v7, v7, v2
const-class v8, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$PropertyGenerator;
if-ne v0, v8, :cond_129
invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getPropertyName()Lcom/fasterxml/jackson/databind/PropertyName;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;
move-result-object v7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
array-length v8, v0
move v0, v2
:goto_b1
if-ne v0, v8, :cond_e2
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Invalid Object Id definition for "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_handledType:Ljava/lang/Class;
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ": can not find property with name \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e2
iget-object v9, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
aget-object v9, v9, v0
invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;
move-result-object v10
invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v10
if-eqz v10, :cond_126
if-lez v0, :cond_110
iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
iget-object v8, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
invoke-static {v7, v2, v8, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
aput-object v9, v7, v2
iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
if-eqz v7, :cond_110
iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
aget-object v7, v7, v0
iget-object v8, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
iget-object v10, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
invoke-static {v8, v2, v10, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
aput-object v7, v0, v2
:cond_110
invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
new-instance v7, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;
invoke-direct {v7, v6, v9}, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;-><init>(Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V
move-object v0, v1
check-cast v0, Lcom/fasterxml/jackson/databind/PropertyName;
invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getAlwaysAsId()Z
move-result v6
invoke-static {v2, v0, v7, v6}, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Z)Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
move-result-object v0
goto/16 :goto_31
:cond_126
add-int/lit8 v0, v0, 0x1
goto :goto_b1
:cond_129
invoke-virtual {p1, v4, v6}, Lcom/fasterxml/jackson/databind/SerializerProvider;->objectIdGeneratorInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
move-result-object v0
invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getPropertyName()Lcom/fasterxml/jackson/databind/PropertyName;
move-result-object v2
invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getAlwaysAsId()Z
move-result v6
invoke-static {v7, v2, v0, v6}, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Z)Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
move-result-object v0
goto/16 :goto_31
:cond_13b
move-object v0, v2
goto/16 :goto_82
:cond_13e
move-object v0, v1
goto/16 :goto_76
:cond_141
move-object v2, p0
goto/16 :goto_5a
:cond_144
move-object v2, v0
move-object v0, v1
goto/16 :goto_46
:cond_148
move-object v3, v1
move-object v2, v0
move-object v0, v1
goto/16 :goto_46
.end method
.method protected findConvertingSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 7
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v0
if-eqz v0, :cond_2a
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationConverter(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_2a
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
move-result-object v1
invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->converterInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/Converter;
move-result-object v1
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
move-result-object v0
invoke-interface {v1, v0}, Lcom/fasterxml/jackson/databind/util/Converter;->getOutputType(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
invoke-virtual {p1, v2, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v3
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;
invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;-><init>(Lcom/fasterxml/jackson/databind/util/Converter;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
:goto_29
return-object v0
:cond_2a
const/4 v0, 0x0
goto :goto_29
.end method
.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 8
const/4 v1, 0x0
const-string v0, "object"
const/4 v2, 0x1
invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;
move-result-object v2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_handledType:Ljava/lang/Class;
const-class v3, Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;
invoke-virtual {v0, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;
if-eqz v0, :cond_25
invoke-interface {v0}, Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;->id()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_25
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v3
if-lez v3, :cond_25
const-string v3, "id"
invoke-virtual {v2, v3, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
:cond_25
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;
move-result-object v3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;
if-eqz v0, :cond_45
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;
invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->findPropertyFilter(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
move-result-object v0
:goto_33
const/4 v1, 0x0
:goto_34
iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
array-length v4, v4
if-ge v1, v4, :cond_4b
iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
aget-object v4, v4, v1
if-nez v0, :cond_47
invoke-virtual {v4, v3, p1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->depositSchemaProperty(Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:goto_42
add-int/lit8 v1, v1, 0x1
goto :goto_34
:cond_45
move-object v0, v1
goto :goto_33
:cond_47
invoke-interface {v0, v4, v3, p1}, Lcom/fasterxml/jackson/databind/ser/PropertyFilter;->depositSchemaProperty(Lcom/fasterxml/jackson/databind/ser/PropertyWriter;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
goto :goto_42
:cond_4b
const-string v0, "properties"
invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;
return-object v2
.end method
.method public resolve(Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 9
const/4 v0, 0x0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
if-nez v1, :cond_3a
move v2, v0
:goto_6
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
array-length v4, v1
move v3, v0
:goto_a
if-ge v3, v4, :cond_98
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
aget-object v5, v0, v3
invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->willSuppressNulls()Z
move-result v0
if-nez v0, :cond_30
invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->hasNullSerializer()Z
move-result v0
if-nez v0, :cond_30
invoke-virtual {p1, v5}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findNullValueSerializer(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
if-eqz v0, :cond_30
invoke-virtual {v5, v0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignNullSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V
if-ge v3, v2, :cond_30
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
aget-object v1, v1, v3
if-eqz v1, :cond_30
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignNullSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V
:cond_30
invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->hasSerializer()Z
move-result v0
if-eqz v0, :cond_3f
:goto_36
:cond_36
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_a
:cond_3a
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
array-length v1, v1
move v2, v1
goto :goto_6
:cond_3f
invoke-virtual {p0, p1, v5}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->findConvertingSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v1
if-nez v1, :cond_89
invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getSerializationType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
if-nez v0, :cond_69
invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getGenericPropertyType()Ljava/lang/reflect/Type;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->isFinal()Z
move-result v1
if-nez v1, :cond_69
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z
move-result v1
if-nez v1, :cond_65
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->containedTypeCount()I
move-result v1
if-lez v1, :cond_36
:cond_65
invoke-virtual {v5, v0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->setNonTrivialBaseType(Lcom/fasterxml/jackson/databind/JavaType;)V
goto :goto_36
:cond_69
invoke-virtual {p1, v0, v5}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v1
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z
move-result v6
if-eqz v6, :cond_89
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
if-eqz v0, :cond_89
instance-of v6, v1, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
if-eqz v6, :cond_89
check-cast v1, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;->withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
move-result-object v1
:cond_89
invoke-virtual {v5, v1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V
if-ge v3, v2, :cond_36
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
aget-object v0, v0, v3
if-eqz v0, :cond_36
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V
goto :goto_36
:cond_98
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;
if-eqz v0, :cond_a1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;->resolve(Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:cond_a1
return-void
.end method
.method public abstract serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.end method
.method protected serializeFields(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
if-eqz v0, :cond_1a
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getActiveView()Ljava/lang/Class;
move-result-object v0
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
:goto_c
const/4 v2, 0x0
:try_start_d
array-length v1, v0
:goto_e
if-ge v2, v1, :cond_1d
aget-object v3, v0, v2
if-eqz v3, :cond_17
invoke-virtual {v3, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:cond_17
:try_end_17
.catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_27
.catch Ljava/lang/StackOverflowError; {:try_start_d .. :try_end_17} :catch_38
add-int/lit8 v2, v2, 0x1
goto :goto_e
:cond_1a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
goto :goto_c
:try_start_1d
:cond_1d
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;
if-eqz v1, :cond_26
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;
invoke-virtual {v1, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;->getAndSerialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:goto_26
:cond_26
:try_end_26
.catch Ljava/lang/Exception; {:try_start_1d .. :try_end_26} :catch_27
.catch Ljava/lang/StackOverflowError; {:try_start_1d .. :try_end_26} :catch_38
return-void
:catch_27
move-exception v1
array-length v3, v0
if-ne v2, v3, :cond_31
const-string v0, "[anySetter]"
:goto_2d
invoke-virtual {p0, p3, v1, p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_26
:cond_31
aget-object v0, v0, v2
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;
move-result-object v0
goto :goto_2d
:catch_38
move-exception v1
new-instance v3, Lcom/fasterxml/jackson/databind/JsonMappingException;
const-string v4, "Infinite recursion (StackOverflowError)"
invoke-direct {v3, v4, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
array-length v1, v0
if-ne v2, v1, :cond_4e
const-string v0, "[anySetter]"
:goto_45
new-instance v1, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;
invoke-direct {v1, p1, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;-><init>(Ljava/lang/Object;Ljava/lang/String;)V
invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->prependPath(Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;)V
throw v3
:cond_4e
aget-object v0, v0, v2
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;
move-result-object v0
goto :goto_45
.end method
.method protected serializeFieldsFiltered(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
if-eqz v0, :cond_18
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getActiveView()Ljava/lang/Class;
move-result-object v0
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
:goto_c
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;
invoke-virtual {p0, p3, v1, p1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->findPropertyFilter(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
move-result-object v1
if-nez v1, :cond_1b
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFields(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:cond_17
:goto_17
return-void
:cond_18
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
goto :goto_c
:cond_1b
const/4 v2, 0x0
:try_start_1c
array-length v3, v0
:goto_1d
if-ge v2, v3, :cond_29
aget-object v4, v0, v2
if-eqz v4, :cond_26
invoke-interface {v1, p1, p2, p3, v4}, Lcom/fasterxml/jackson/databind/ser/PropertyFilter;->serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/PropertyWriter;)V
:cond_26
add-int/lit8 v2, v2, 0x1
goto :goto_1d
:cond_29
iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;
if-eqz v3, :cond_17
iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;
invoke-virtual {v3, p1, p2, p3, v1}, Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;->getAndFilter(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/PropertyFilter;)V
:try_end_32
.catch Ljava/lang/Exception; {:try_start_1c .. :try_end_32} :catch_33
.catch Ljava/lang/StackOverflowError; {:try_start_1c .. :try_end_32} :catch_44
goto :goto_17
:catch_33
move-exception v1
array-length v3, v0
if-ne v2, v3, :cond_3d
const-string v0, "[anySetter]"
:goto_39
invoke-virtual {p0, p3, v1, p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_17
:cond_3d
aget-object v0, v0, v2
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;
move-result-object v0
goto :goto_39
:catch_44
move-exception v1
new-instance v3, Lcom/fasterxml/jackson/databind/JsonMappingException;
const-string v4, "Infinite recursion (StackOverflowError)"
invoke-direct {v3, v4, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
array-length v1, v0
if-ne v2, v1, :cond_5a
const-string v0, "[anySetter]"
:goto_51
new-instance v1, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;
invoke-direct {v1, p1, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;-><init>(Ljava/lang/Object;Ljava/lang/String;)V
invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->prependPath(Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;)V
throw v3
:cond_5a
aget-object v0, v0, v2
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;
move-result-object v0
goto :goto_51
.end method
.method public serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
.registers 7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
if-eqz v0, :cond_8
invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializeWithObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
:goto_7
return-void
:cond_8
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
if-nez v0, :cond_1f
const/4 v0, 0x0
:goto_d
if-nez v0, :cond_24
invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
:goto_12
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;
if-eqz v1, :cond_28
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFieldsFiltered(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:goto_19
if-nez v0, :cond_2c
invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
goto :goto_7
:cond_1f
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_customTypeId(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_d
:cond_24
invoke-virtual {p4, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeCustomTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V
goto :goto_12
:cond_28
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFields(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
goto :goto_19
:cond_2c
invoke-virtual {p4, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeCustomTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)V
goto :goto_7
.end method
.method public usesObjectId()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method protected abstract withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.end method
.method protected abstract withIgnorals([Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.end method
.method public abstract withObjectIdWriter(Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.end method