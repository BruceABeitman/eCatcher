.class public Lcom/fasterxml/jackson/databind/util/LRUMap;
.super Ljava/util/LinkedHashMap;
.source "LRUMap.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.field protected transient _jdkSerializeMaxEntries:I
.field protected final _maxEntries:I
.method public constructor <init>(II)V
.registers 5
const v0, 0x3f4ccccd
const/4 v1, 0x1
invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V
iput p2, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_maxEntries:I
return-void
.end method
.method private readObject(Ljava/io/ObjectInputStream;)V
.registers 3
invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I
move-result v0
iput v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_jdkSerializeMaxEntries:I
return-void
.end method
.method private writeObject(Ljava/io/ObjectOutputStream;)V
.registers 3
iget v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_jdkSerializeMaxEntries:I
invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V
return-void
.end method
.method protected readResolve()Ljava/lang/Object;
.registers 4
new-instance v0, Lcom/fasterxml/jackson/databind/util/LRUMap;
iget v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_jdkSerializeMaxEntries:I
iget v2, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_jdkSerializeMaxEntries:I
invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/LRUMap;-><init>(II)V
return-object v0
.end method
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/LRUMap;->size()I
move-result v0
iget v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_maxEntries:I
if-le v0, v1, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method