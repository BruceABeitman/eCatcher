.class public Lcom/fasterxml/jackson/databind/jsontype/impl/MinimalClassNameIdResolver;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;
.source "MinimalClassNameIdResolver.java"
.field protected final _basePackageName:Ljava/lang/String;
.field protected final _basePackagePrefix:Ljava/lang/String;
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeFactory;)V
.registers 7
const/4 v3, 0x0
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeFactory;)V
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
const/16 v1, 0x2e
invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I
move-result v1
if-gez v1, :cond_1d
const-string v0, ""
iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/MinimalClassNameIdResolver;->_basePackageName:Ljava/lang/String;
const-string v0, "."
iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/MinimalClassNameIdResolver;->_basePackagePrefix:Ljava/lang/String;
:goto_1c
return-void
:cond_1d
add-int/lit8 v2, v1, 0x1
invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/MinimalClassNameIdResolver;->_basePackagePrefix:Ljava/lang/String;
invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/MinimalClassNameIdResolver;->_basePackageName:Ljava/lang/String;
goto :goto_1c
.end method
.method public getMechanism()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->MINIMAL_CLASS:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
return-object v0
.end method
.method public idFromValue(Ljava/lang/Object;)Ljava/lang/String;
.registers 4
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/MinimalClassNameIdResolver;->_basePackagePrefix:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_1c
iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/MinimalClassNameIdResolver;->_basePackagePrefix:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
:cond_1c
return-object v0
.end method
.method public typeFromId(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 5
const-string v0, "."
invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_2c
new-instance v0, Ljava/lang/StringBuilder;
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/MinimalClassNameIdResolver;->_basePackageName:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
add-int/2addr v1, v2
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/MinimalClassNameIdResolver;->_basePackageName:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_31
const/4 v1, 0x1
invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_28
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p1
:cond_2c
invoke-super {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->typeFromId(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
return-object v0
:cond_31
iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/MinimalClassNameIdResolver;->_basePackageName:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_28
.end method