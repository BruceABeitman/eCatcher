.class public abstract Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
.super Ljava/lang/Object;
.source "SourceFile"
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
.method public abstract getField()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
.end method
.method public abstract getGetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.end method
.method public abstract getMutator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.end method
.method public abstract getName()Ljava/lang/String;
.end method
.method public getPrimaryMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public abstract getSetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
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
.method public isTypeId()Z
.registers 2
const/4 v0, 0x0
return v0
.end method