.class final Lcom/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector$1;
.super Lcom/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector;
.source "NopAnnotationIntrospector.java"
.field private static final serialVersionUID:J = 0x1L
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector;-><init>()V
return-void
.end method
.method public version()Lcom/fasterxml/jackson/core/Version;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/databind/cfg/PackageVersion;->VERSION:Lcom/fasterxml/jackson/core/Version;
return-object v0
.end method