.class public abstract Lcom/fasterxml/jackson/core/io/OutputDecorator;
.super Ljava/lang/Object;
.source "OutputDecorator.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public abstract decorate(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/OutputStream;)Ljava/io/OutputStream;
.end method
.method public abstract decorate(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/Writer;)Ljava/io/Writer;
.end method