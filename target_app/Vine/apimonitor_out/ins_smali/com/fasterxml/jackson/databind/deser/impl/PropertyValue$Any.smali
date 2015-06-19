.class final Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Any;
.super Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;
.source "PropertyValue.java"
.field final _property:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
.field final _propertyName:Ljava/lang/String;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;Ljava/lang/String;)V
.registers 5
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;Ljava/lang/Object;)V
iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Any;->_property:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Any;->_propertyName:Ljava/lang/String;
return-void
.end method
.method public assign(Ljava/lang/Object;)V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Any;->_property:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Any;->_propertyName:Ljava/lang/String;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Any;->value:Ljava/lang/Object;
invoke-virtual {v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method