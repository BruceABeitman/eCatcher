.class public Lcom/fasterxml/jackson/databind/type/HierarchicType;
.super Ljava/lang/Object;
.source "HierarchicType.java"
.field protected final _actualType:Ljava/lang/reflect/Type;
.field protected final _genericType:Ljava/lang/reflect/ParameterizedType;
.field protected final _rawClass:Ljava/lang/Class;
.field protected _subType:Lcom/fasterxml/jackson/databind/type/HierarchicType;
.field protected _superType:Lcom/fasterxml/jackson/databind/type/HierarchicType;
.method public constructor <init>(Ljava/lang/reflect/Type;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_actualType:Ljava/lang/reflect/Type;
instance-of v0, p1, Ljava/lang/Class;
if-eqz v0, :cond_11
check-cast p1, Ljava/lang/Class;
iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_rawClass:Ljava/lang/Class;
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;
:goto_10
return-void
:cond_11
instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;
if-eqz v0, :cond_24
check-cast p1, Ljava/lang/reflect/ParameterizedType;
iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;
invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;
move-result-object v0
check-cast v0, Ljava/lang/Class;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_rawClass:Ljava/lang/Class;
goto :goto_10
:cond_24
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Type "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " can not be used to construct HierarchicType"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;Lcom/fasterxml/jackson/databind/type/HierarchicType;Lcom/fasterxml/jackson/databind/type/HierarchicType;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_actualType:Ljava/lang/reflect/Type;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_rawClass:Ljava/lang/Class;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;
iput-object p4, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_superType:Lcom/fasterxml/jackson/databind/type/HierarchicType;
iput-object p5, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_subType:Lcom/fasterxml/jackson/databind/type/HierarchicType;
return-void
.end method
.method public final asGeneric()Ljava/lang/reflect/ParameterizedType;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;
return-object v0
.end method
.method public deepCloneWithoutSubtype()Lcom/fasterxml/jackson/databind/type/HierarchicType;
.registers 7
const/4 v5, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_superType:Lcom/fasterxml/jackson/databind/type/HierarchicType;
if-nez v0, :cond_17
move-object v4, v5
:goto_6
new-instance v0, Lcom/fasterxml/jackson/databind/type/HierarchicType;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_actualType:Ljava/lang/reflect/Type;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_rawClass:Ljava/lang/Class;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/HierarchicType;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;Lcom/fasterxml/jackson/databind/type/HierarchicType;Lcom/fasterxml/jackson/databind/type/HierarchicType;)V
if-eqz v4, :cond_16
invoke-virtual {v4, v0}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->setSubType(Lcom/fasterxml/jackson/databind/type/HierarchicType;)V
:cond_16
return-object v0
:cond_17
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_superType:Lcom/fasterxml/jackson/databind/type/HierarchicType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->deepCloneWithoutSubtype()Lcom/fasterxml/jackson/databind/type/HierarchicType;
move-result-object v4
goto :goto_6
.end method
.method public final getRawClass()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_rawClass:Ljava/lang/Class;
return-object v0
.end method
.method public final getSubType()Lcom/fasterxml/jackson/databind/type/HierarchicType;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_subType:Lcom/fasterxml/jackson/databind/type/HierarchicType;
return-object v0
.end method
.method public final getSuperType()Lcom/fasterxml/jackson/databind/type/HierarchicType;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_superType:Lcom/fasterxml/jackson/databind/type/HierarchicType;
return-object v0
.end method
.method public final isGeneric()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public setSubType(Lcom/fasterxml/jackson/databind/type/HierarchicType;)V
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_subType:Lcom/fasterxml/jackson/databind/type/HierarchicType;
return-void
.end method
.method public setSuperType(Lcom/fasterxml/jackson/databind/type/HierarchicType;)V
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_superType:Lcom/fasterxml/jackson/databind/type/HierarchicType;
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
:goto_a
return-object v0
:cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_rawClass:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
goto :goto_a
.end method