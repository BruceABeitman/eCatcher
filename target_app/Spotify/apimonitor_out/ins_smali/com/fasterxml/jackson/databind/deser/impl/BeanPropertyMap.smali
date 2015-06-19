.class public final Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;
.field private static final serialVersionUID:J = 0x1L
.field private final _buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
.field private final _hashMask:I
.field private _nextBucketIndex:I
.field private final _size:I
.method public constructor <init>(Ljava/util/Collection;)V
.registers 11
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_nextBucketIndex:I
invoke-interface {p1}, Ljava/util/Collection;->size()I
move-result v0
iput v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I
iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I
invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->findSize(I)I
move-result v0
add-int/lit8 v1, v0, -0x1
iput v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I
new-array v1, v0, [Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_1c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_43
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v4
iget v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I
and-int/2addr v4, v5
new-instance v5, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
aget-object v6, v1, v4
iget v7, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_nextBucketIndex:I
add-int/lit8 v8, v7, 0x1
iput v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_nextBucketIndex:I
invoke-direct {v5, v6, v3, v0, v7}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;Ljava/lang/String;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;I)V
aput-object v5, v1, v4
goto :goto_1c
:cond_43
iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
return-void
.end method
.method private constructor <init>([Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;II)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_nextBucketIndex:I
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
iput p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I
array-length v0, p1
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I
iput p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_nextBucketIndex:I
return-void
.end method
.method private _findWithEquals(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
aget-object v0, v0, p2
:goto_4
if-eqz v0, :cond_14
iget-object v1, v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_11
iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
:goto_10
return-object v0
:cond_11
iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->next:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
goto :goto_4
:cond_14
const/4 v0, 0x0
goto :goto_10
.end method
.method private static final findSize(I)I
.registers 3
const/16 v0, 0x20
if-gt p0, v0, :cond_b
add-int v0, p0, p0
:goto_6
const/4 v1, 0x2
:goto_7
if-ge v1, v0, :cond_f
add-int/2addr v1, v1
goto :goto_7
:cond_b
shr-int/lit8 v0, p0, 0x2
add-int/2addr v0, p0
goto :goto_6
:cond_f
return v1
.end method
.method public final assignIndexes()Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
.registers 8
const/4 v0, 0x0
iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
array-length v5, v4
move v3, v0
move v1, v0
:goto_6
if-ge v3, v5, :cond_1b
aget-object v0, v4, v3
:goto_a
if-eqz v0, :cond_17
iget-object v6, v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
add-int/lit8 v2, v1, 0x1
invoke-virtual {v6, v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->assignIndex(I)V
iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->next:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
move v1, v2
goto :goto_a
:cond_17
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_6
:cond_1b
return-object p0
.end method
.method public final find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.registers 5
invoke-virtual {p1}, Ljava/lang/String;->hashCode()I
move-result v0
iget v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I
and-int/2addr v1, v0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
aget-object v0, v0, v1
if-nez v0, :cond_f
const/4 v0, 0x0
:goto_e
return-object v0
:cond_f
iget-object v2, v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;
if-ne v2, p1, :cond_16
iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
goto :goto_e
:cond_16
iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->next:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
if-eqz v0, :cond_21
iget-object v2, v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;
if-ne v2, p1, :cond_16
iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
goto :goto_e
:cond_21
invoke-direct {p0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_findWithEquals(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v0
goto :goto_e
.end method
.method public final getPropertiesInInsertionOrder()[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.registers 8
iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_nextBucketIndex:I
new-array v2, v0, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
array-length v4, v3
const/4 v0, 0x0
move v1, v0
:goto_9
if-ge v1, v4, :cond_1c
aget-object v0, v3, v1
:goto_d
if-eqz v0, :cond_18
iget v5, v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->index:I
iget-object v6, v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
aput-object v6, v2, v5
iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->next:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
goto :goto_d
:cond_18
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_9
:cond_1c
return-object v2
.end method
.method public final iterator()Ljava/util/Iterator;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;-><init>([Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;)V
return-object v0
.end method
.method public final remove(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
.registers 11
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/String;->hashCode()I
move-result v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
array-length v1, v1
add-int/lit8 v1, v1, -0x1
and-int v5, v0, v1
const/4 v2, 0x0
const/4 v1, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
aget-object v0, v0, v5
move-object v3, v0
move v0, v1
move-object v1, v2
:goto_18
if-eqz v3, :cond_36
if-nez v0, :cond_29
iget-object v2, v3, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;
invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_29
const/4 v0, 0x1
:goto_25
iget-object v2, v3, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->next:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
move-object v3, v2
goto :goto_18
:cond_29
new-instance v2, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
iget-object v6, v3, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;
iget-object v7, v3, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
iget v8, v3, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->index:I
invoke-direct {v2, v1, v6, v7, v8}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;Ljava/lang/String;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;I)V
move-object v1, v2
goto :goto_25
:cond_36
if-nez v0, :cond_53
new-instance v0, Ljava/util/NoSuchElementException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "No entry \'"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\' found, can\'t remove"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V
throw v0
:cond_53
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
aput-object v1, v0, v5
return-void
.end method
.method public final renameAll(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
.registers 7
if-eqz p1, :cond_6
sget-object v0, Lcom/fasterxml/jackson/databind/util/NameTransformer;->NOP:Lcom/fasterxml/jackson/databind/util/NameTransformer;
if-ne p1, v0, :cond_7
:goto_6
:cond_6
return-object p0
:cond_7
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->iterator()Ljava/util/Iterator;
move-result-object v1
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
:goto_10
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3c
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/util/NameTransformer;->transform(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getValueDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v3
if-eqz v3, :cond_38
invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->unwrappingDeserializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v4
if-eq v4, v3, :cond_38
invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v0
:cond_38
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_10
:cond_3c
new-instance p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-direct {p0, v2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;-><init>(Ljava/util/Collection;)V
goto :goto_6
.end method
.method public final replace(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
.registers 11
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/String;->hashCode()I
move-result v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
array-length v1, v1
add-int/lit8 v1, v1, -0x1
and-int v5, v0, v1
const/4 v2, 0x0
const/4 v1, -0x1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
aget-object v0, v0, v5
move-object v3, v0
move v0, v1
move-object v1, v2
:goto_18
if-eqz v3, :cond_37
if-gez v0, :cond_2a
iget-object v2, v3, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;
invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_2a
iget v0, v3, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->index:I
:goto_26
iget-object v2, v3, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->next:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
move-object v3, v2
goto :goto_18
:cond_2a
new-instance v2, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
iget-object v6, v3, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;
iget-object v7, v3, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
iget v8, v3, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->index:I
invoke-direct {v2, v1, v6, v7, v8}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;Ljava/lang/String;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;I)V
move-object v1, v2
goto :goto_26
:cond_37
if-gez v0, :cond_54
new-instance v0, Ljava/util/NoSuchElementException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "No entry \'"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\' found, can\'t replace"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V
throw v0
:cond_54
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
new-instance v3, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
invoke-direct {v3, v1, v4, p1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;Ljava/lang/String;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;I)V
aput-object v3, v2, v5
return-void
.end method
.method public final size()I
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I
return v0
.end method
.method public final withProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
.registers 9
const/4 v3, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
array-length v1, v0
new-array v2, v1, [Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v3
if-nez v3, :cond_3b
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v1
iget v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I
and-int/2addr v1, v3
new-instance v3, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
aget-object v4, v2, v1
iget v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_nextBucketIndex:I
add-int/lit8 v6, v5, 0x1
iput v6, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_nextBucketIndex:I
invoke-direct {v3, v4, v0, p1, v5}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;Ljava/lang/String;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;I)V
aput-object v3, v2, v1
new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
iget v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I
add-int/lit8 v1, v1, 0x1
iget v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_nextBucketIndex:I
invoke-direct {v0, v2, v1, v3}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;-><init>([Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;II)V
:goto_3a
return-object v0
:cond_3b
new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
iget v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_nextBucketIndex:I
invoke-direct {v0, v2, v1, v3}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;-><init>([Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;II)V
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->replace(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
goto :goto_3a
.end method