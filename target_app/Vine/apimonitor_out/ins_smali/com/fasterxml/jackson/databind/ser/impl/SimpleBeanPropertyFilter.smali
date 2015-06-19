.class public abstract Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;
.super Ljava/lang/Object;
.source "SimpleBeanPropertyFilter.java"
.implements Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;
.implements Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static filterOutAllExcept(Ljava/util/Set;)Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;
.registers 2
new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$FilterExceptFilter;
invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$FilterExceptFilter;-><init>(Ljava/util/Set;)V
return-object v0
.end method
.method public static varargs filterOutAllExcept([Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;
.registers 3
new-instance v0, Ljava/util/HashSet;
array-length v1, p0
invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V
invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
new-instance v1, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$FilterExceptFilter;
invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$FilterExceptFilter;-><init>(Ljava/util/Set;)V
return-object v1
.end method
.method public static from(Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
.registers 2
new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$1;
invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$1;-><init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;)V
return-object v0
.end method
.method public static serializeAllExcept(Ljava/util/Set;)Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;
.registers 2
new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;
invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;-><init>(Ljava/util/Set;)V
return-object v0
.end method
.method public static varargs serializeAllExcept([Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;
.registers 3
new-instance v0, Ljava/util/HashSet;
array-length v1, p0
invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V
invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
new-instance v1, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;
invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;-><init>(Ljava/util/Set;)V
return-object v1
.end method
.method public depositSchemaProperty(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 5
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;->include(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)Z
move-result v0
if-eqz v0, :cond_9
invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->depositSchemaProperty(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;)V
:cond_9
return-void
.end method
.method public depositSchemaProperty(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 5
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;->include(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)Z
move-result v0
if-eqz v0, :cond_9
invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->depositSchemaProperty(Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:cond_9
return-void
.end method
.method public depositSchemaProperty(Lcom/fasterxml/jackson/databind/ser/PropertyWriter;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 5
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;->include(Lcom/fasterxml/jackson/databind/ser/PropertyWriter;)Z
move-result v0
if-eqz v0, :cond_9
invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/ser/PropertyWriter;->depositSchemaProperty(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;)V
:cond_9
return-void
.end method
.method public depositSchemaProperty(Lcom/fasterxml/jackson/databind/ser/PropertyWriter;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 5
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;->include(Lcom/fasterxml/jackson/databind/ser/PropertyWriter;)Z
move-result v0
if-eqz v0, :cond_9
invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/PropertyWriter;->depositSchemaProperty(Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:cond_9
return-void
.end method
.method protected abstract include(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)Z
.end method
.method protected abstract include(Lcom/fasterxml/jackson/databind/ser/PropertyWriter;)Z
.end method
.method protected includeElement(Ljava/lang/Object;)Z
.registers 3
const/4 v0, 0x1
return v0
.end method
.method public serializeAsElement(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/PropertyWriter;)V
.registers 6
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;->includeElement(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9
invoke-virtual {p4, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/PropertyWriter;->serializeAsElement(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:cond_9
return-void
.end method
.method public serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V
.registers 6
invoke-virtual {p0, p4}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;->include(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)Z
move-result v0
if-eqz v0, :cond_a
invoke-virtual {p4, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:cond_9
:goto_9
return-void
:cond_a
invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->canOmitFields()Z
move-result v0
if-nez v0, :cond_9
invoke-virtual {p4, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->serializeAsOmittedField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
goto :goto_9
.end method
.method public serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/PropertyWriter;)V
.registers 6
invoke-virtual {p0, p4}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;->include(Lcom/fasterxml/jackson/databind/ser/PropertyWriter;)Z
move-result v0
if-eqz v0, :cond_a
invoke-virtual {p4, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/PropertyWriter;->serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:cond_9
:goto_9
return-void
:cond_a
invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->canOmitFields()Z
move-result v0
if-nez v0, :cond_9
invoke-virtual {p4, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/PropertyWriter;->serializeAsOmittedField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
goto :goto_9
.end method