.class public Lcom/fasterxml/jackson/databind/BeanProperty$Std;
.super Ljava/lang/Object;
.source "BeanProperty.java"
.implements Lcom/fasterxml/jackson/databind/BeanProperty;
.field protected final _contextAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;
.field protected final _isRequired:Z
.field protected final _member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.field protected final _name:Ljava/lang/String;
.field protected final _type:Lcom/fasterxml/jackson/databind/JavaType;
.field protected final _wrapperName:Lcom/fasterxml/jackson/databind/PropertyName;
.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Z)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_name:Ljava/lang/String;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_type:Lcom/fasterxml/jackson/databind/JavaType;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_wrapperName:Lcom/fasterxml/jackson/databind/PropertyName;
iput-boolean p6, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_isRequired:Z
iput-object p5, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
iput-object p4, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_contextAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;
return-void
.end method
.method public depositSchemaProperty(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;)V
.registers 5
new-instance v0, Ljava/lang/UnsupportedOperationException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Instances of "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " should not get visited"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v0
goto :goto_5
.end method
.method public getContextAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_contextAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_contextAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;
invoke-interface {v0, p1}, Lcom/fasterxml/jackson/databind/util/Annotations;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v0
goto :goto_5
.end method
.method public getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_name:Ljava/lang/String;
return-object v0
.end method
.method public getType()Lcom/fasterxml/jackson/databind/JavaType;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_type:Lcom/fasterxml/jackson/databind/JavaType;
return-object v0
.end method
.method public getWrapperName()Lcom/fasterxml/jackson/databind/PropertyName;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_wrapperName:Lcom/fasterxml/jackson/databind/PropertyName;
return-object v0
.end method
.method public isRequired()Z
.registers 2
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_isRequired:Z
return v0
.end method
.method public withType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanProperty$Std;
.registers 9
new-instance v0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_name:Ljava/lang/String;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_wrapperName:Lcom/fasterxml/jackson/databind/PropertyName;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_contextAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->_isRequired:Z
move-object v2, p1
invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Z)V
return-object v0
.end method