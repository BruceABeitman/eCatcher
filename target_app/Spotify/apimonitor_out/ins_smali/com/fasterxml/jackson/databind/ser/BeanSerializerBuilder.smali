.class public Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final NO_PROPERTIES:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
.field protected _anyGetter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;
.field protected final _beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;
.field protected _config:Lcom/fasterxml/jackson/databind/SerializationConfig;
.field protected _filterId:Ljava/lang/Object;
.field protected _filteredProperties:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
.field protected _objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
.field protected _properties:Ljava/util/List;
.field protected _typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
new-array v0, v0, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
sput-object v0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->NO_PROPERTIES:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/BeanDescription;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;
return-void
.end method
.method public build()Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_23
:cond_c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_anyGetter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;
if-nez v0, :cond_12
const/4 v0, 0x0
:goto_11
return-object v0
:cond_12
sget-object v0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->NO_PROPERTIES:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
:goto_14
new-instance v1, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_filteredProperties:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
invoke-direct {v1, v2, p0, v0, v3}, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V
move-object v0, v1
goto :goto_11
:cond_23
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
new-array v1, v1, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
goto :goto_14
.end method
.method public createDummy()Lcom/fasterxml/jackson/databind/ser/BeanSerializer;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
invoke-static {v0}, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;->createDummy(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ser/BeanSerializer;
move-result-object v0
return-object v0
.end method
.method public getAnyGetter()Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_anyGetter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;
return-object v0
.end method
.method public getBeanDescription()Lcom/fasterxml/jackson/databind/BeanDescription;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;
return-object v0
.end method
.method public getFilterId()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_filterId:Ljava/lang/Object;
return-object v0
.end method
.method public getObjectIdWriter()Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
return-object v0
.end method
.method public getProperties()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;
return-object v0
.end method
.method public getTypeId()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
return-object v0
.end method
.method public setAnyGetter(Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;)V
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_anyGetter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;
return-void
.end method
.method protected setConfig(Lcom/fasterxml/jackson/databind/SerializationConfig;)V
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;
return-void
.end method
.method public setFilterId(Ljava/lang/Object;)V
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_filterId:Ljava/lang/Object;
return-void
.end method
.method public setFilteredProperties([Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_filteredProperties:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
return-void
.end method
.method public setObjectIdWriter(Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)V
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
return-void
.end method
.method public setProperties(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;
return-void
.end method
.method public setTypeId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
if-eqz v0, :cond_25
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Multiple type ids specified with "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " and "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_25
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
return-void
.end method