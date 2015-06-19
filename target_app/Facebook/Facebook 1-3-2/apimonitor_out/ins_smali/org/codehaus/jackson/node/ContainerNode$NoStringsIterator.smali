.class public Lorg/codehaus/jackson/node/ContainerNode$NoStringsIterator;
.super Ljava/lang/Object;
.implements Ljava/util/Iterator;
.field static final instance:Lorg/codehaus/jackson/node/ContainerNode$NoStringsIterator;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lorg/codehaus/jackson/node/ContainerNode$NoStringsIterator;
invoke-direct {v0}, Lorg/codehaus/jackson/node/ContainerNode$NoStringsIterator;-><init>()V
sput-object v0, Lorg/codehaus/jackson/node/ContainerNode$NoStringsIterator;->instance:Lorg/codehaus/jackson/node/ContainerNode$NoStringsIterator;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static instance()Lorg/codehaus/jackson/node/ContainerNode$NoStringsIterator;
.registers 1
sget-object v0, Lorg/codehaus/jackson/node/ContainerNode$NoStringsIterator;->instance:Lorg/codehaus/jackson/node/ContainerNode$NoStringsIterator;
return-object v0
.end method
.method public hasNext()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public bridge synthetic next()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lorg/codehaus/jackson/node/ContainerNode$NoStringsIterator;->next()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public next()Ljava/lang/String;
.registers 2
new-instance v0, Ljava/util/NoSuchElementException;
invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V
throw v0
.end method
.method public remove()V
.registers 2
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
.end method