.class final Lcom/fasterxml/jackson/databind/introspect/AnnotatedField$Serialization;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.field protected clazz:Ljava/lang/Class;
.field protected name:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/reflect/Field;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField$Serialization;->clazz:Ljava/lang/Class;
invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField$Serialization;->name:Ljava/lang/String;
return-void
.end method