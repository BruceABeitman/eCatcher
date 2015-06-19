.class final Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Iterator;
.field private final _buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
.field private _currentBucket:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
.field private _nextBucketIndex:I
.method public constructor <init>([Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
const/4 v1, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
array-length v2, v0
:goto_9
if-ge v1, v2, :cond_1a
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
add-int/lit8 v0, v1, 0x1
aget-object v1, v3, v1
if-eqz v1, :cond_18
iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;->_currentBucket:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
:goto_15
iput v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;->_nextBucketIndex:I
return-void
:cond_18
move v1, v0
goto :goto_9
:cond_1a
move v0, v1
goto :goto_15
.end method
.method public final hasNext()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;->_currentBucket:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public final next()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.registers 5
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;->_currentBucket:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
if-nez v1, :cond_a
new-instance v0, Ljava/util/NoSuchElementException;
invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V
throw v0
:cond_a
iget-object v0, v1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->next:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
:goto_c
if-nez v0, :cond_20
iget v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;->_nextBucketIndex:I
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
array-length v3, v3
if-ge v2, v3, :cond_20
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
iget v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;->_nextBucketIndex:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;->_nextBucketIndex:I
aget-object v0, v0, v2
goto :goto_c
:cond_20
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;->_currentBucket:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
iget-object v0, v1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
return-object v0
.end method
.method public final bridge synthetic next()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;->next()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v0
return-object v0
.end method
.method public final remove()V
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method