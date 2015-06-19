.class public Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;
.super Lcom/fasterxml/jackson/databind/AbstractTypeResolver;
.source "SimpleAbstractTypeResolver.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x77d76620fcbdac67L
.field protected final _mappings:Ljava/util/HashMap;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/AbstractTypeResolver;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;->_mappings:Ljava/util/HashMap;
return-void
.end method
.method public addMapping(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;
.registers 6
if-ne p1, p2, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Can not add mapping from class to itself"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-nez v0, :cond_3d
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Can not add mapping from class "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " to "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ", as latter is not a subtype of former"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3d
invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I
move-result v0
invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
move-result v0
if-nez v0, :cond_66
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Can not add mapping from class "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " since it is not abstract"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_66
iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;->_mappings:Ljava/util/HashMap;
new-instance v1, Lcom/fasterxml/jackson/databind/type/ClassKey;
invoke-direct {v1, p1}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V
invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object p0
.end method
.method public findTypeMapping(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 6
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;->_mappings:Ljava/util/HashMap;
new-instance v2, Lcom/fasterxml/jackson/databind/type/ClassKey;
invoke-direct {v2, v0}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V
invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Class;
if-nez v0, :cond_15
const/4 v0, 0x0
:goto_14
return-object v0
:cond_15
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
goto :goto_14
.end method
.method public resolveAbstractType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 4
const/4 v0, 0x0
return-object v0
.end method