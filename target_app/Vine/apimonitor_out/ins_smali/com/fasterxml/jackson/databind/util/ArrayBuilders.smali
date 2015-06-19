.class public final Lcom/fasterxml/jackson/databind/util/ArrayBuilders;
.super Ljava/lang/Object;
.source "ArrayBuilders.java"
.field private _booleanBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$BooleanBuilder;
.field private _byteBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;
.field private _doubleBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;
.field private _floatBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$FloatBuilder;
.field private _intBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$IntBuilder;
.field private _longBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$LongBuilder;
.field private _shortBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_booleanBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$BooleanBuilder;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_byteBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_shortBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_intBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$IntBuilder;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_longBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$LongBuilder;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_floatBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$FloatBuilder;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_doubleBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;
return-void
.end method
.method public static addToList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
.registers 2
if-nez p0, :cond_7
new-instance p0, Ljava/util/ArrayList;
invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
:cond_7
invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public static arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;
.registers 2
new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ArrayIterator;
invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ArrayIterator;-><init>([Ljava/lang/Object;)V
return-object v0
.end method
.method public static arrayAsIterator([Ljava/lang/Object;)Ljava/util/Iterator;
.registers 2
new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ArrayIterator;
invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ArrayIterator;-><init>([Ljava/lang/Object;)V
return-object v0
.end method
.method public static arrayToList([Ljava/lang/Object;)Ljava/util/ArrayList;
.registers 5
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
if-eqz p0, :cond_13
array-length v2, p0
const/4 v0, 0x0
:goto_9
if-ge v0, v2, :cond_13
aget-object v3, p0, v0
invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_9
:cond_13
return-object v1
.end method
.method public static arrayToSet([Ljava/lang/Object;)Ljava/util/HashSet;
.registers 5
new-instance v1, Ljava/util/HashSet;
invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
if-eqz p0, :cond_13
array-length v2, p0
const/4 v0, 0x0
:goto_9
if-ge v0, v2, :cond_13
aget-object v3, p0, v0
invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_9
:cond_13
return-object v1
.end method
.method public static getArrayComparator(Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I
move-result v0
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
new-instance v2, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$1;
invoke-direct {v2, v1, v0, p0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$1;-><init>(Ljava/lang/Class;ILjava/lang/Object;)V
return-object v2
.end method
.method public static insertInList([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
.registers 6
const/4 v3, 0x0
array-length v1, p0
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
move-result-object v0
add-int/lit8 v2, v1, 0x1
invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/Object;
check-cast v0, [Ljava/lang/Object;
if-lez v1, :cond_1a
const/4 v2, 0x1
invoke-static {p0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_1a
aput-object p1, v0, v3
return-object v0
.end method
.method public static insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
.registers 7
const/4 v4, 0x1
const/4 v2, 0x0
array-length v3, p0
move v1, v2
:goto_4
if-ge v1, v3, :cond_31
aget-object v0, p0, v1
if-ne v0, p1, :cond_2d
if-nez v1, :cond_e
move-object v0, p0
:cond_d
:goto_d
return-object v0
:cond_e
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
move-result-object v0
invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/Object;
check-cast v0, [Ljava/lang/Object;
invoke-static {p0, v2, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aput-object p1, v0, v2
add-int/lit8 v1, v1, 0x1
sub-int v2, v3, v1
if-lez v2, :cond_d
invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto :goto_d
:cond_2d
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_4
:cond_31
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
move-result-object v0
add-int/lit8 v1, v3, 0x1
invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/Object;
check-cast v0, [Ljava/lang/Object;
if-lez v3, :cond_48
invoke-static {p0, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_48
aput-object p1, v0, v2
goto :goto_d
.end method
.method public static setAndArray(Ljava/util/Set;[Ljava/lang/Object;)Ljava/util/HashSet;
.registers 6
new-instance v1, Ljava/util/HashSet;
invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
if-eqz p0, :cond_a
invoke-virtual {v1, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
:cond_a
if-eqz p1, :cond_18
array-length v2, p1
const/4 v0, 0x0
:goto_e
if-ge v0, v2, :cond_18
aget-object v3, p1, v0
invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_e
:cond_18
return-object v1
.end method
.method public getBooleanBuilder()Lcom/fasterxml/jackson/databind/util/ArrayBuilders$BooleanBuilder;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_booleanBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$BooleanBuilder;
if-nez v0, :cond_b
new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$BooleanBuilder;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$BooleanBuilder;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_booleanBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$BooleanBuilder;
:cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_booleanBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$BooleanBuilder;
return-object v0
.end method
.method public getByteBuilder()Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_byteBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;
if-nez v0, :cond_b
new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_byteBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;
:cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_byteBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;
return-object v0
.end method
.method public getDoubleBuilder()Lcom/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_doubleBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;
if-nez v0, :cond_b
new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_doubleBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;
:cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_doubleBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;
return-object v0
.end method
.method public getFloatBuilder()Lcom/fasterxml/jackson/databind/util/ArrayBuilders$FloatBuilder;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_floatBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$FloatBuilder;
if-nez v0, :cond_b
new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$FloatBuilder;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$FloatBuilder;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_floatBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$FloatBuilder;
:cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_floatBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$FloatBuilder;
return-object v0
.end method
.method public getIntBuilder()Lcom/fasterxml/jackson/databind/util/ArrayBuilders$IntBuilder;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_intBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$IntBuilder;
if-nez v0, :cond_b
new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$IntBuilder;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$IntBuilder;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_intBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$IntBuilder;
:cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_intBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$IntBuilder;
return-object v0
.end method
.method public getLongBuilder()Lcom/fasterxml/jackson/databind/util/ArrayBuilders$LongBuilder;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_longBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$LongBuilder;
if-nez v0, :cond_b
new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$LongBuilder;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$LongBuilder;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_longBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$LongBuilder;
:cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_longBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$LongBuilder;
return-object v0
.end method
.method public getShortBuilder()Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_shortBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;
if-nez v0, :cond_b
new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_shortBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;
:cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_shortBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;
return-object v0
.end method