.class final Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$1;
.super Ljava/lang/Object;
.source "SimpleBeanPropertyFilter.java"
.implements Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
.field final synthetic val$src:Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;
.method constructor <init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;)V
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$1;->val$src:Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public depositSchemaProperty(Lcom/fasterxml/jackson/databind/ser/PropertyWriter;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$1;->val$src:Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;
check-cast p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
invoke-interface {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;->depositSchemaProperty(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
return-void
.end method
.method public depositSchemaProperty(Lcom/fasterxml/jackson/databind/ser/PropertyWriter;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$1;->val$src:Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;
check-cast p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
invoke-interface {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;->depositSchemaProperty(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
return-void
.end method
.method public serializeAsElement(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/PropertyWriter;)V
.registers 6
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/PropertyWriter;)V
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$1;->val$src:Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;
check-cast p4, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
invoke-interface {v0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;->serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V
return-void
.end method