.class public Lcom/fasterxml/jackson/databind/util/EmptyIterator;
.super Ljava/lang/Object;
.source "EmptyIterator.java"
.implements Ljava/util/Iterator;
.field private static final instance:Lcom/fasterxml/jackson/databind/util/EmptyIterator;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/util/EmptyIterator;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/EmptyIterator;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/util/EmptyIterator;->instance:Lcom/fasterxml/jackson/databind/util/EmptyIterator;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static instance()Ljava/util/Iterator;
.registers 1
sget-object v0, Lcom/fasterxml/jackson/databind/util/EmptyIterator;->instance:Lcom/fasterxml/jackson/databind/util/EmptyIterator;
return-object v0
.end method
.method public hasNext()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public next()Ljava/lang/Object;
.registers 2
new-instance v0, Ljava/util/NoSuchElementException;
invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V
throw v0
.end method
.method public remove()V
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method