.class public Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;
.super Lcom/fasterxml/jackson/databind/ser/FilterProvider;
.source "SimpleFilterProvider.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x27362c7685343d04L


# instance fields
.field protected _cfgFailOnUnknownId:Z

.field protected _defaultFilter:Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;

.field protected final _filtersById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ser/FilterProvider;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->_cfgFailOnUnknownId:Z

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->_filtersById:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addFilter(Ljava/lang/String;Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;)Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->_filtersById:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public findFilter(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->_filtersById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->_defaultFilter:Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;

    if-nez v0, :cond_3f

    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->_cfgFailOnUnknownId:Z

    if-eqz v1, :cond_3f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No filter configured with id \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    return-object v0
.end method

.method public getDefaultFilter()Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->_defaultFilter:Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;

    return-object v0
.end method

.method public removeFilter(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->_filtersById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;

    return-object v0
.end method

.method public setDefaultFilter(Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;)Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;
    .registers 2

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->_defaultFilter:Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;

    return-object p0
.end method

.method public setFailOnUnknownId(Z)Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;
    .registers 2

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->_cfgFailOnUnknownId:Z

    return-object p0
.end method

.method public willFailOnUnknownId()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleFilterProvider;->_cfgFailOnUnknownId:Z

    return v0
.end method
