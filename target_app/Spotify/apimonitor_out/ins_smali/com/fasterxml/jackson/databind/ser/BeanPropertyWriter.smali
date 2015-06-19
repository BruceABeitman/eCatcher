.class public Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/fasterxml/jackson/databind/BeanProperty;
.field public static final MARKER_FOR_EMPTY:Ljava/lang/Object;
.field protected final _accessorMethod:Ljava/lang/reflect/Method;
.field protected final _cfgSerializationType:Lcom/fasterxml/jackson/databind/JavaType;
.field protected final _contextAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;
.field protected final _declaredType:Lcom/fasterxml/jackson/databind/JavaType;
.field protected _dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
.field protected final _field:Ljava/lang/reflect/Field;
.field protected final _includeInViews:[Ljava/lang/Class;
.field protected _internalSettings:Ljava/util/HashMap;
.field protected final _member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.field protected final _name:Lcom/fasterxml/jackson/core/io/SerializedString;
.field protected _nonTrivialBaseType:Lcom/fasterxml/jackson/databind/JavaType;
.field protected _nullSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
.field protected _serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
.field protected final _suppressNulls:Z
.field protected final _suppressableValue:Ljava/lang/Object;
.field protected _typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->MARKER_FOR_EMPTY:Ljava/lang/Object;
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JavaType;ZLjava/lang/Object;)V
.registers 13
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_contextAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;
new-instance v0, Lcom/fasterxml/jackson/core/io/SerializedString;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getName()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_name:Lcom/fasterxml/jackson/core/io/SerializedString;
iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_declaredType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object p5, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-nez p5, :cond_3e
invoke-static {}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->emptyMap()Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
move-result-object v0
:goto_1d
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
iput-object p6, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
iput-object p7, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_cfgSerializationType:Lcom/fasterxml/jackson/databind/JavaType;
instance-of v0, p2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
if-eqz v0, :cond_40
iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getMember()Ljava/lang/reflect/Member;
move-result-object v0
check-cast v0, Ljava/lang/reflect/Field;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;
:goto_31
iput-boolean p8, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_suppressNulls:Z
iput-object p9, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->findViews()[Ljava/lang/Class;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_includeInViews:[Ljava/lang/Class;
iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_nullSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
return-void
:cond_3e
move-object v0, v1
goto :goto_1d
:cond_40
instance-of v0, p2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
if-eqz v0, :cond_4f
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getMember()Ljava/lang/reflect/Member;
move-result-object v0
check-cast v0, Ljava/lang/reflect/Method;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;
iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;
goto :goto_31
:cond_4f
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Can not pass member of type "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V
.registers 3
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_name:Lcom/fasterxml/jackson/core/io/SerializedString;
invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/core/io/SerializedString;)V
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/core/io/SerializedString;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_name:Lcom/fasterxml/jackson/core/io/SerializedString;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_contextAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_contextAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_declaredType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_declaredType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_nullSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_nullSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;
if-eqz v0, :cond_2e
new-instance v0, Ljava/util/HashMap;
iget-object v1, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;
invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;
:cond_2e
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_cfgSerializationType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_cfgSerializationType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_suppressNulls:Z
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_suppressNulls:Z
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_includeInViews:[Ljava/lang/Class;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_includeInViews:[Ljava/lang/Class;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_nonTrivialBaseType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_nonTrivialBaseType:Lcom/fasterxml/jackson/databind/JavaType;
return-void
.end method
.method protected _findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_nonTrivialBaseType:Lcom/fasterxml/jackson/databind/JavaType;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_nonTrivialBaseType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {p3, v0, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
invoke-virtual {p1, v0, p3, p0}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->findAndAddSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;
move-result-object v0
:goto_e
iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
if-eq p1, v1, :cond_16
iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
:cond_16
iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
return-object v0
:cond_19
invoke-virtual {p1, p2, p3, p0}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->findAndAddSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;
move-result-object v0
goto :goto_e
.end method
.method protected _handleSelfReference(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
.registers 5
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JsonSerializer;->usesObjectId()Z
move-result v0
if-eqz v0, :cond_7
return-void
:cond_7
new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;
const-string v1, "Direct self-reference leading to cycle"
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public assignNullSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_nullSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_nullSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-eq v0, p1, :cond_10
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Can not override null serializer"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_nullSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
return-void
.end method
.method public assignSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-eq v0, p1, :cond_10
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Can not override serializer"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
return-void
.end method
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
:goto_d
return-object v0
:cond_e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;
invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_d
.end method
.method public getGenericPropertyType()Ljava/lang/reflect/Type;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;
invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;
move-result-object v0
:goto_a
return-object v0
:cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;
invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;
move-result-object v0
goto :goto_a
.end method
.method public getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_name:Lcom/fasterxml/jackson/core/io/SerializedString;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/SerializedString;->getValue()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getSerializationType()Lcom/fasterxml/jackson/databind/JavaType;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_cfgSerializationType:Lcom/fasterxml/jackson/databind/JavaType;
return-object v0
.end method
.method public getType()Lcom/fasterxml/jackson/databind/JavaType;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_declaredType:Lcom/fasterxml/jackson/databind/JavaType;
return-object v0
.end method
.method public getViews()[Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_includeInViews:[Ljava/lang/Class;
return-object v0
.end method
.method public hasNullSerializer()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_nullSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public hasSerializer()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public rename(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_name:Lcom/fasterxml/jackson/core/io/SerializedString;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/SerializedString;->getValue()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/util/NameTransformer;->transform(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_name:Lcom/fasterxml/jackson/core/io/SerializedString;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/SerializedString;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_17
:goto_16
return-object p0
:cond_17
new-instance v0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
new-instance v2, Lcom/fasterxml/jackson/core/io/SerializedString;
invoke-direct {v2, v1}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V
invoke-direct {v0, p0, v2}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/core/io/SerializedString;)V
move-object p0, v0
goto :goto_16
.end method
.method public serializeAsColumn(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 8
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_10
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_nullSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-eqz v0, :cond_38
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_nullSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
const/4 v2, 0x0
invoke-virtual {v0, v2, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:cond_10
:goto_10
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-nez v0, :cond_24
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
if-nez v0, :cond_24
invoke-virtual {p0, v3, v2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
:cond_24
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;
if-eqz v2, :cond_48
sget-object v2, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->MARKER_FOR_EMPTY:Ljava/lang/Object;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;
if-ne v2, v3, :cond_3c
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonSerializer;->isEmpty(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_48
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->serializeAsPlaceholder(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:goto_37
return-void
:cond_38
invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V
goto :goto_10
:cond_3c
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;
invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_48
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->serializeAsPlaceholder(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
goto :goto_37
:cond_48
if-ne v1, p1, :cond_4d
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_handleSelfReference(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
:cond_4d
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
if-nez v2, :cond_55
invoke-virtual {v0, v1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
goto :goto_37
:cond_55
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
invoke-virtual {v0, v1, p2, p3, v2}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
goto :goto_37
.end method
.method public serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 8
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_16
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_nullSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_name:Lcom/fasterxml/jackson/core/io/SerializedString;
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_nullSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
const/4 v1, 0x0
invoke-virtual {v0, v1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:cond_15
:goto_15
return-void
:cond_16
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-nez v0, :cond_2a
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
if-nez v0, :cond_2a
invoke-virtual {p0, v3, v2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
:cond_2a
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;
if-eqz v2, :cond_3a
sget-object v2, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->MARKER_FOR_EMPTY:Ljava/lang/Object;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;
if-ne v2, v3, :cond_4c
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonSerializer;->isEmpty(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_15
:cond_3a
if-ne v1, p1, :cond_3f
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_handleSelfReference(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
:cond_3f
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_name:Lcom/fasterxml/jackson/core/io/SerializedString;
invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
if-nez v2, :cond_55
invoke-virtual {v0, v1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
goto :goto_15
:cond_4c
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;
invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3a
goto :goto_15
:cond_55
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
invoke-virtual {v0, v1, p2, p3, v2}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
goto :goto_15
.end method
.method public serializeAsPlaceholder(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_nullSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_nullSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
const/4 v1, 0x0
invoke-virtual {v0, v1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:goto_a
return-void
:cond_b
invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V
goto :goto_a
.end method
.method public setNonTrivialBaseType(Lcom/fasterxml/jackson/databind/JavaType;)V
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_nonTrivialBaseType:Lcom/fasterxml/jackson/databind/JavaType;
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x28
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v1, "property \'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\' ("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;
if-eqz v1, :cond_54
const-string v1, "via method "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;
invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "#"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;
invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_41
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-nez v1, :cond_78
const-string v1, ", no static serializer"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_4a
const/16 v1, 0x29
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_54
const-string v1, "field \""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;
invoke-virtual {v2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "#"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;
invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_41
:cond_78
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, ", static serializer of type "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_4a
.end method
.method public unwrappingWriter(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V
return-object v0
.end method
.method public willSuppressNulls()Z
.registers 2
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->_suppressNulls:Z
return v0
.end method