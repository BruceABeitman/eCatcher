.class public abstract Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
.super Ljava/lang/Object;
.source "BeanPropertyDefinition.java"
.implements Lcom/fasterxml/jackson/databind/util/Named;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public couldDeserialize()Z
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getMutator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
move-result-object v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public couldSerialize()Z
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getAccessor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
move-result-object v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public findObjectIdInfo()Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public findReferenceType()Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public findViews()[Ljava/lang/Class;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public abstract getAccessor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.end method
.method public abstract getConstructorParameter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
.end method
.method public abstract getField()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
.end method
.method public abstract getFullName()Lcom/fasterxml/jackson/databind/PropertyName;
.end method
.method public abstract getGetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.end method
.method public abstract getInternalName()Ljava/lang/String;
.end method
.method public abstract getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;
.end method
.method public abstract getMutator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.end method
.method public abstract getName()Ljava/lang/String;
.end method
.method public abstract getNonConstructorMutator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.end method
.method public getPrimaryMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public abstract getSetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.end method
.method public abstract getWrapperName()Lcom/fasterxml/jackson/databind/PropertyName;
.end method
.method public abstract hasConstructorParameter()Z
.end method
.method public abstract hasField()Z
.end method
.method public abstract hasGetter()Z
.end method
.method public abstract hasSetter()Z
.end method
.method public abstract isExplicitlyIncluded()Z
.end method
.method public final isRequired()Z
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;
move-result-object v0
if-eqz v0, :cond_e
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->isRequired()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public isTypeId()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public abstract withName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
.end method
.method public withName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->withSimpleName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
move-result-object v0
return-object v0
.end method
.method public abstract withSimpleName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
.end method