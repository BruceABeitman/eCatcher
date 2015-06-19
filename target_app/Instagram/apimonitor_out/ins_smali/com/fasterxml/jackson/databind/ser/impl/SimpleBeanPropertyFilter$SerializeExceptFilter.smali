.class public Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;
.super Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;
.source "SimpleBeanPropertyFilter.java"
.field protected final _propertiesToExclude:Ljava/util/Set;
.method public constructor <init>(Ljava/util/Set;)V
.registers 2
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;->_propertiesToExclude:Ljava/util/Set;
return-void
.end method
.method protected include(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)Z
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;->_propertiesToExclude:Ljava/util/Set;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method