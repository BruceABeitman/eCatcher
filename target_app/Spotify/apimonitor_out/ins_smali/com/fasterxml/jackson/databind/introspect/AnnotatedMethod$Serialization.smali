.class final Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod$Serialization;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.field protected args:[Ljava/lang/Class;
.field protected clazz:Ljava/lang/Class;
.field protected name:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/reflect/Method;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod$Serialization;->clazz:Ljava/lang/Class;
invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod$Serialization;->name:Ljava/lang/String;
invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod$Serialization;->args:[Ljava/lang/Class;
return-void
.end method