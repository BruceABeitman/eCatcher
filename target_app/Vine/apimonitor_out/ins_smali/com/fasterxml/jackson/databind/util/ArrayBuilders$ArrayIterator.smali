.class final Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ArrayIterator;
.super Ljava/lang/Object;
.source "ArrayBuilders.java"
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;
.field private final _array:[Ljava/lang/Object;
.field private _index:I
.method public constructor <init>([Ljava/lang/Object;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ArrayIterator;->_array:[Ljava/lang/Object;
const/4 v0, 0x0
iput v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ArrayIterator;->_index:I
return-void
.end method
.method public hasNext()Z
.registers 3
iget v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ArrayIterator;->_index:I
iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ArrayIterator;->_array:[Ljava/lang/Object;
array-length v1, v1
if-ge v0, v1, :cond_9
const/4 v0, 0x1
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method public iterator()Ljava/util/Iterator;
.registers 1
return-object p0
.end method
.method public next()Ljava/lang/Object;
.registers 4
iget v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ArrayIterator;->_index:I
iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ArrayIterator;->_array:[Ljava/lang/Object;
array-length v1, v1
if-lt v0, v1, :cond_d
new-instance v0, Ljava/util/NoSuchElementException;
invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V
throw v0
:cond_d
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ArrayIterator;->_array:[Ljava/lang/Object;
iget v1, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ArrayIterator;->_index:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ArrayIterator;->_index:I
aget-object v0, v0, v1
return-object v0
.end method
.method public remove()V
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method