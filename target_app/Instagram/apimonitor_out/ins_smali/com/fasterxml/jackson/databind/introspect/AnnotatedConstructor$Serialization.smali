.class final Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor$Serialization;
.super Ljava/lang/Object;
.source "AnnotatedConstructor.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.field protected args:[Ljava/lang/Class;
.field protected clazz:Ljava/lang/Class;
.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor$Serialization;->clazz:Ljava/lang/Class;
invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor$Serialization;->args:[Ljava/lang/Class;
return-void
.end method