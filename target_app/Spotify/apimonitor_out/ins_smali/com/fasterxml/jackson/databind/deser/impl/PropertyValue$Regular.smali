.class final Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Regular;
.super Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;
.source "SourceFile"
.field final _property:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;Ljava/lang/Object;)V
iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Regular;->_property:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
return-void
.end method
.method public final assign(Ljava/lang/Object;)V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Regular;->_property:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Regular;->value:Ljava/lang/Object;
invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V
return-void
.end method