.class  Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$1;
.super Ljava/lang/Object;
.source "POJOPropertyBuilder.java"
.implements Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;
.field final synthetic this$0:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
.method constructor <init>(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;)V
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$1;->this$0:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public bridge synthetic withMember(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$1;->withMember(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)[Ljava/lang/Class;
move-result-object v0
return-object v0
.end method
.method public withMember(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)[Ljava/lang/Class;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$1;->this$0:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findViews(Lcom/fasterxml/jackson/databind/introspect/Annotated;)[Ljava/lang/Class;
move-result-object v0
return-object v0
.end method