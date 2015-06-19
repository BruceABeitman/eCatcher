.class public abstract Lcom/fasterxml/jackson/core/io/InputDecorator;
.super Ljava/lang/Object;
.source "InputDecorator.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public abstract decorate(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;)Ljava/io/InputStream;
.end method
.method public abstract decorate(Lcom/fasterxml/jackson/core/io/IOContext;[BII)Ljava/io/InputStream;
.end method
.method public abstract decorate(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/Reader;)Ljava/io/Reader;
.end method