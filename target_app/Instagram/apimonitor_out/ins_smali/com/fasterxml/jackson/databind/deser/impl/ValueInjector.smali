.class public Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
.super Lcom/fasterxml/jackson/databind/BeanProperty$Std;
.source "ValueInjector.java"
.field protected final _valueId:Ljava/lang/Object;
.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Ljava/lang/Object;)V
.registers 13
const/4 v3, 0x0
const/4 v6, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v4, p3
move-object v5, p4
invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Z)V
iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;->_valueId:Ljava/lang/Object;
return-void
.end method
.method public findValue(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;->_valueId:Ljava/lang/Object;
invoke-virtual {p1, v0, p0, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findInjectableValue(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public inject(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;->_member:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;->findValue(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
return-void
.end method