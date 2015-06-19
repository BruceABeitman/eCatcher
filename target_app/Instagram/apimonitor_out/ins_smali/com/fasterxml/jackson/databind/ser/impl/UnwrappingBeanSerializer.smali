.class public Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.source "UnwrappingBeanSerializer.java"
.field protected final _nameTransformer:Lcom/fasterxml/jackson/databind/util/NameTransformer;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)V
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;->_nameTransformer:Lcom/fasterxml/jackson/databind/util/NameTransformer;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;->_nameTransformer:Lcom/fasterxml/jackson/databind/util/NameTransformer;
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;[Ljava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;[Ljava/lang/String;)V
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;->_nameTransformer:Lcom/fasterxml/jackson/databind/util/NameTransformer;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;->_nameTransformer:Lcom/fasterxml/jackson/databind/util/NameTransformer;
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V
iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;->_nameTransformer:Lcom/fasterxml/jackson/databind/util/NameTransformer;
return-void
.end method
.method protected asArraySerializer()Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.registers 1
return-object p0
.end method
.method public isUnwrappingSerializer()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
if-eqz v0, :cond_9
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;->_serializeWithObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;Z)V
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;->_propertyFilterId:Ljava/lang/Object;
if-eqz v0, :cond_11
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;->serializeFieldsFiltered(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
goto :goto_8
:cond_11
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;->serializeFields(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
goto :goto_8
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "UnwrappingBeanSerializer for "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;->handledType()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public unwrappingSerializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V
return-object v0
.end method
.method protected withIgnorals([Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;[Ljava/lang/String;)V
return-object v0
.end method
.method protected bridge synthetic withIgnorals([Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;->withIgnorals([Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;
move-result-object v0
return-object v0
.end method
.method public withObjectIdWriter(Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)V
return-object v0
.end method
.method public bridge synthetic withObjectIdWriter(Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;->withObjectIdWriter(Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;
move-result-object v0
return-object v0
.end method