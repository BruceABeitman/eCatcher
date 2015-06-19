.class public abstract Lcom/fasterxml/jackson/databind/ser/FilterProvider;
.super Ljava/lang/Object;
.source "FilterProvider.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public abstract findFilter(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;
.end method
.method public findPropertyFilter(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
.registers 4
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/FilterProvider;->findFilter(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;
move-result-object v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
invoke-static {v0}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;->from(Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
move-result-object v0
goto :goto_7
.end method