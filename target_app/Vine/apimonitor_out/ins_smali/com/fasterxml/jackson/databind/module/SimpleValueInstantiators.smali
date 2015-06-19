.class public Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;
.super Lcom/fasterxml/jackson/databind/deser/ValueInstantiators$Base;
.source "SimpleValueInstantiators.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = -0x7beb8da55ae36f3aL
.field protected _classMappings:Ljava/util/HashMap;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiators$Base;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;->_classMappings:Ljava/util/HashMap;
return-void
.end method
.method public addValueInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;->_classMappings:Ljava/util/HashMap;
new-instance v1, Lcom/fasterxml/jackson/databind/type/ClassKey;
invoke-direct {v1, p1}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V
invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object p0
.end method
.method public findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
.registers 7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;->_classMappings:Ljava/util/HashMap;
new-instance v1, Lcom/fasterxml/jackson/databind/type/ClassKey;
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getBeanClass()Ljava/lang/Class;
move-result-object v2
invoke-direct {v1, v2}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
if-nez v0, :cond_14
:goto_13
return-object p3
:cond_14
move-object p3, v0
goto :goto_13
.end method