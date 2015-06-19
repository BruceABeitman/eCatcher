.class public Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;
.super Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
.source "SourceFile"
.field protected final _member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.field protected final _name:Ljava/lang/String;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)V
.registers 3
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getName()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_name:Ljava/lang/String;
return-void
.end method
.method public getAccessor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->getGetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
move-result-object v0
if-nez v0, :cond_a
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->getField()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
move-result-object v0
:cond_a
return-object v0
.end method
.method public getConstructorParameter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
instance-of v0, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public getField()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
instance-of v0, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public getGetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
instance-of v0, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I
move-result v0
if-nez v0, :cond_15
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
:goto_14
return-object v0
:cond_15
const/4 v0, 0x0
goto :goto_14
.end method
.method public getMutator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->getConstructorParameter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
move-result-object v0
if-nez v0, :cond_10
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->getSetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
move-result-object v0
if-nez v0, :cond_10
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->getField()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
move-result-object v0
:cond_10
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_name:Ljava/lang/String;
return-object v0
.end method
.method public getPrimaryMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
return-object v0
.end method
.method public getSetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
instance-of v0, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_16
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
:goto_15
return-object v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method
.method public hasConstructorParameter()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
instance-of v0, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
return v0
.end method
.method public hasField()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
instance-of v0, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
return v0
.end method
.method public hasGetter()Z
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->getGetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
move-result-object v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public hasSetter()Z
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->getSetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
move-result-object v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public isExplicitlyIncluded()Z
.registers 2
const/4 v0, 0x0
return v0
.end method