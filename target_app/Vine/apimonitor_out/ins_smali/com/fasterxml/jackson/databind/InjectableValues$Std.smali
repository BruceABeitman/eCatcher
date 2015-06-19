.class public Lcom/fasterxml/jackson/databind/InjectableValues$Std;
.super Lcom/fasterxml/jackson/databind/InjectableValues;
.source "InjectableValues.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.field protected final _values:Ljava/util/Map;
.method public constructor <init>()V
.registers 2
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/InjectableValues$Std;-><init>(Ljava/util/Map;)V
return-void
.end method
.method public constructor <init>(Ljava/util/Map;)V
.registers 2
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/InjectableValues;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/InjectableValues$Std;->_values:Ljava/util/Map;
return-void
.end method
.method public addValue(Ljava/lang/Class;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/InjectableValues$Std;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/InjectableValues$Std;->_values:Ljava/util/Map;
invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object p0
.end method
.method public addValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/InjectableValues$Std;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/InjectableValues$Std;->_values:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object p0
.end method
.method public findInjectableValue(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Object;)Ljava/lang/Object;
.registers 9
instance-of v0, p1, Ljava/lang/String;
if-nez v0, :cond_30
if-nez p1, :cond_27
const-string v0, "[null]"
:goto_8
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Unrecognized inject value id type ("
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "), expecting String"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_27
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
goto :goto_8
:cond_30
check-cast p1, Ljava/lang/String;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/InjectableValues$Std;->_values:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_6f
iget-object v1, p0, Lcom/fasterxml/jackson/databind/InjectableValues$Std;->_values:Ljava/util/Map;
invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_6f
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "No injectable id with value \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\' found (for property \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-interface {p3}, Lcom/fasterxml/jackson/databind/BeanProperty;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\')"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_6f
return-object v0
.end method