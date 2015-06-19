.class public Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$FilterExceptFilter;
.super Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;
.source "SimpleBeanPropertyFilter.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.field protected final _propertiesToInclude:Ljava/util/Set;
.method public constructor <init>(Ljava/util/Set;)V
.registers 2
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$FilterExceptFilter;->_propertiesToInclude:Ljava/util/Set;
return-void
.end method
.method protected include(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)Z
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$FilterExceptFilter;->_propertiesToInclude:Ljava/util/Set;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method protected include(Lcom/fasterxml/jackson/databind/ser/PropertyWriter;)Z
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$FilterExceptFilter;->_propertiesToInclude:Ljava/util/Set;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/ser/PropertyWriter;->getName()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method