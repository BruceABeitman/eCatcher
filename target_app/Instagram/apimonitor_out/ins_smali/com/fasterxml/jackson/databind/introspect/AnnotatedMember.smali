.class public abstract Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.super Lcom/fasterxml/jackson/databind/introspect/Annotated;
.source "AnnotatedMember.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x6633b4850c53b6dfL
.field protected final transient _annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V
.registers 2
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->_annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
return-void
.end method
.method public final addIfNotPresent(Ljava/lang/annotation/Annotation;)V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->_annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->addIfNotPresent(Ljava/lang/annotation/Annotation;)V
return-void
.end method
.method public final addOrOverride(Ljava/lang/annotation/Annotation;)V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->_annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->add(Ljava/lang/annotation/Annotation;)V
return-void
.end method
.method public final fixAccess()V
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getMember()Ljava/lang/reflect/Member;
move-result-object v0
invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V
return-void
.end method
.method protected getAllAnnotations()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->_annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
return-object v0
.end method
.method public abstract getDeclaringClass()Ljava/lang/Class;
.end method
.method public abstract getMember()Ljava/lang/reflect/Member;
.end method
.method public abstract getValue(Ljava/lang/Object;)Ljava/lang/Object;
.end method
.method public abstract setValue(Ljava/lang/Object;Ljava/lang/Object;)V
.end method