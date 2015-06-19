.class public Lcom/ibm/icu/impl/IntTrieBuilder;
.super Lcom/ibm/icu/impl/TrieBuilder;
.source "IntTrieBuilder.java"
.field protected m_data_:[I
.field protected m_initialValue_:I
.field private m_leadUnitValue_:I
.method public constructor <init>(Lcom/ibm/icu/impl/IntTrieBuilder;)V
.registers 6
const/4 v3, 0x0
invoke-direct {p0, p1}, Lcom/ibm/icu/impl/TrieBuilder;-><init>(Lcom/ibm/icu/impl/TrieBuilder;)V
iget v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataCapacity_:I
new-array v0, v0, [I
iput-object v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I
iget-object v0, p1, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I
iget-object v1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I
iget v2, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I
invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v0, p1, Lcom/ibm/icu/impl/IntTrieBuilder;->m_initialValue_:I
iput v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_initialValue_:I
iget v0, p1, Lcom/ibm/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I
iput v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I
return-void
.end method
.method public constructor <init>([IIIIZ)V
.registers 12
const/4 v5, 0x0
invoke-direct {p0}, Lcom/ibm/icu/impl/TrieBuilder;-><init>()V
const/16 v3, 0x20
if-lt p2, v3, :cond_e
if-eqz p5, :cond_16
const/16 v3, 0x400
if-ge p2, v3, :cond_16
:cond_e
new-instance v3, Ljava/lang/IllegalArgumentException;
const-string v4, "Argument maxdatalength is too small"
invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
:cond_16
if-eqz p1, :cond_3f
iput-object p1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I
:goto_1a
const/16 v2, 0x20
if-eqz p5, :cond_2b
const/4 v0, 0x0
:goto_1f
iget-object v3, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_index_:[I
add-int/lit8 v1, v0, 0x1
aput v2, v3, v0
add-int/lit8 v2, v2, 0x20
const/16 v3, 0x8
if-lt v1, v3, :cond_44
:cond_2b
iput v2, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I
iget-object v3, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I
iget v4, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I
invoke-static {v3, v5, v4, p3}, Ljava/util/Arrays;->fill([IIII)V
iput p3, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_initialValue_:I
iput p4, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I
iput p2, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataCapacity_:I
iput-boolean p5, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_isLatin1Linear_:Z
iput-boolean v5, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_isCompacted_:Z
return-void
:cond_3f
new-array v3, p2, [I
iput-object v3, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I
goto :goto_1a
:cond_44
move v0, v1
goto :goto_1f
.end method
.method private allocDataBlock()I
.registers 4
iget v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I
add-int/lit8 v1, v0, 0x20
iget v2, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataCapacity_:I
if-le v1, v2, :cond_a
const/4 v2, -0x1
:goto_9
return v2
:cond_a
iput v1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I
move v2, v0
goto :goto_9
.end method
.method private compact(Z)V
.registers 12
const/16 v9, 0x20
iget-boolean v6, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_isCompacted_:Z
if-eqz v6, :cond_7
:goto_6
return-void
:cond_7
invoke-virtual {p0}, Lcom/ibm/icu/impl/IntTrieBuilder;->findUnusedBlocks()V
const/16 v3, 0x20
iget-boolean v6, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_isLatin1Linear_:Z
if-eqz v6, :cond_12
add-int/lit16 v3, v3, 0x100
:cond_12
const/16 v1, 0x20
move v4, v1
:goto_15
iget v6, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I
if-ge v4, v6, :cond_9e
iget-object v6, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_map_:[I
ushr-int/lit8 v7, v4, 0x5
aget v6, v6, v7
if-gez v6, :cond_24
add-int/lit8 v4, v4, 0x20
goto :goto_15
:cond_24
if-lt v4, v3, :cond_3c
iget-object v6, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I
if-eqz p1, :cond_3a
const/4 v7, 0x4
:goto_2b
invoke-static {v6, v1, v4, v7}, Lcom/ibm/icu/impl/IntTrieBuilder;->findSameDataBlock([IIII)I
move-result v0
if-ltz v0, :cond_3c
iget-object v6, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_map_:[I
ushr-int/lit8 v7, v4, 0x5
aput v0, v6, v7
add-int/lit8 v4, v4, 0x20
goto :goto_15
:cond_3a
move v7, v9
goto :goto_2b
:cond_3c
if-eqz p1, :cond_51
if-lt v4, v3, :cond_51
const/16 v0, 0x1c
:goto_42
if-lez v0, :cond_52
iget-object v6, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I
sub-int v7, v1, v0
invoke-static {v6, v7, v4, v0}, Lcom/ibm/icu/impl/IntTrieBuilder;->equal_int([IIII)Z
move-result v6
if-nez v6, :cond_52
add-int/lit8 v0, v0, -0x4
goto :goto_42
:cond_51
const/4 v0, 0x0
:cond_52
if-lez v0, :cond_74
iget-object v6, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_map_:[I
ushr-int/lit8 v7, v4, 0x5
sub-int v8, v1, v0
aput v8, v6, v7
add-int/2addr v4, v0
sub-int v0, v9, v0
move v5, v4
move v2, v1
:goto_61
if-lez v0, :cond_bc
iget-object v6, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I
add-int/lit8 v1, v2, 0x1
iget-object v7, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I
add-int/lit8 v4, v5, 0x1
aget v7, v7, v5
aput v7, v6, v2
add-int/lit8 v0, v0, -0x1
move v5, v4
move v2, v1
goto :goto_61
:cond_74
if-ge v1, v4, :cond_93
iget-object v6, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_map_:[I
ushr-int/lit8 v7, v4, 0x5
aput v1, v6, v7
const/16 v0, 0x20
move v5, v4
move v2, v1
:goto_80
if-lez v0, :cond_bc
iget-object v6, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I
add-int/lit8 v1, v2, 0x1
iget-object v7, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I
add-int/lit8 v4, v5, 0x1
aget v7, v7, v5
aput v7, v6, v2
add-int/lit8 v0, v0, -0x1
move v5, v4
move v2, v1
goto :goto_80
:cond_93
iget-object v6, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_map_:[I
ushr-int/lit8 v7, v4, 0x5
aput v4, v6, v7
add-int/lit8 v1, v1, 0x20
move v4, v1
goto/16 :goto_15
:cond_9e
const/4 v0, 0x0
:goto_9f
iget v6, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_indexLength_:I
if-ge v0, v6, :cond_b8
iget-object v6, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_index_:[I
iget-object v7, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_map_:[I
iget-object v8, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_index_:[I
aget v8, v8, v0
invoke-static {v8}, Ljava/lang/Math;->abs(I)I
move-result v8
ushr-int/lit8 v8, v8, 0x5
aget v7, v7, v8
aput v7, v6, v0
add-int/lit8 v0, v0, 0x1
goto :goto_9f
:cond_b8
iput v1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I
goto/16 :goto_6
:cond_bc
move v4, v5
move v1, v2
goto/16 :goto_15
.end method
.method private fillBlock(IIIIZ)V
.registers 9
add-int/2addr p3, p1
add-int/2addr p1, p2
if-eqz p5, :cond_f
move v0, p1
:goto_5
if-ge v0, p3, :cond_20
iget-object v1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I
add-int/lit8 p1, v0, 0x1
aput p4, v1, v0
move v0, p1
goto :goto_5
:cond_f
:goto_f
if-ge p1, p3, :cond_21
iget-object v1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I
aget v1, v1, p1
iget v2, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_initialValue_:I
if-ne v1, v2, :cond_1d
iget-object v1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I
aput p4, v1, p1
:cond_1d
add-int/lit8 p1, p1, 0x1
goto :goto_f
:cond_20
move p1, v0
:cond_21
return-void
.end method
.method private static final findSameDataBlock([IIII)I
.registers 6
add-int/lit8 p1, p1, -0x20
const/4 v0, 0x0
:goto_3
if-gt v0, p1, :cond_11
const/16 v1, 0x20
invoke-static {p0, v0, p2, v1}, Lcom/ibm/icu/impl/IntTrieBuilder;->equal_int([IIII)Z
move-result v1
if-eqz v1, :cond_f
move v1, v0
:goto_e
return v1
:cond_f
add-int/2addr v0, p3
goto :goto_3
:cond_11
const/4 v1, -0x1
goto :goto_e
.end method
.method private final fold(Lcom/ibm/icu/impl/TrieBuilder$DataManipulate;)V
.registers 14
const/16 v11, 0x800
const/4 v2, 0x0
const/16 v3, 0x20
new-array v9, v3, [I
iget-object v7, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_index_:[I
const/16 v0, 0x6c0
invoke-static {v7, v0, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
const/4 v1, 0x0
iget v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I
iget v4, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_initialValue_:I
if-ne v0, v4, :cond_22
:goto_15
const/16 v6, 0x6c0
:goto_17
const/16 v0, 0x6e0
if-ge v6, v0, :cond_39
iget-object v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_index_:[I
aput v1, v0, v6
add-int/lit8 v6, v6, 0x1
goto :goto_17
:cond_22
invoke-direct {p0}, Lcom/ibm/icu/impl/IntTrieBuilder;->allocDataBlock()I
move-result v1
if-gez v1, :cond_30
new-instance v0, Ljava/lang/IllegalStateException;
const-string v2, "Internal error: Out of memory space"
invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_30
iget v4, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I
const/4 v5, 0x1
move-object v0, p0
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V
neg-int v1, v1
goto :goto_15
:cond_39
const/16 v8, 0x800
const/high16 v6, 0x1
:goto_3d
const/high16 v0, 0x11
if-ge v6, v0, :cond_80
shr-int/lit8 v0, v6, 0x5
aget v0, v7, v0
if-eqz v0, :cond_7d
and-int/lit16 v6, v6, -0x400
shr-int/lit8 v0, v6, 0x5
invoke-static {v7, v8, v0}, Lcom/ibm/icu/impl/IntTrieBuilder;->findSameIndexBlock([III)I
move-result v1
add-int/lit8 v0, v1, 0x20
invoke-interface {p1, v6, v0}, Lcom/ibm/icu/impl/TrieBuilder$DataManipulate;->getFoldedValue(II)I
move-result v10
invoke-static {v6}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C
move-result v0
invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/IntTrieBuilder;->getValue(I)I
move-result v0
if-eq v10, v0, :cond_7a
invoke-static {v6}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C
move-result v0
invoke-virtual {p0, v0, v10}, Lcom/ibm/icu/impl/IntTrieBuilder;->setValue(II)Z
move-result v0
if-nez v0, :cond_71
new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;
const-string v2, "Data table overflow"
invoke-direct {v0, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
:cond_71
if-ne v1, v8, :cond_7a
shr-int/lit8 v0, v6, 0x5
invoke-static {v7, v0, v7, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
add-int/lit8 v8, v8, 0x20
:cond_7a
add-int/lit16 v6, v6, 0x400
goto :goto_3d
:cond_7d
add-int/lit8 v6, v6, 0x20
goto :goto_3d
:cond_80
const v0, 0x8800
if-lt v8, v0, :cond_8d
new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;
const-string v2, "Index table overflow"
invoke-direct {v0, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
:cond_8d
const/16 v0, 0x820
sub-int v4, v8, v11
invoke-static {v7, v11, v7, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
invoke-static {v9, v2, v7, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
add-int/lit8 v8, v8, 0x20
iput v8, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_indexLength_:I
return-void
.end method
.method private getDataBlock(I)I
.registers 8
shr-int/lit8 p1, p1, 0x5
iget-object v2, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_index_:[I
aget v0, v2, p1
if-lez v0, :cond_a
move v2, v0
:goto_9
return v2
:cond_a
invoke-direct {p0}, Lcom/ibm/icu/impl/IntTrieBuilder;->allocDataBlock()I
move-result v1
if-gez v1, :cond_12
const/4 v2, -0x1
goto :goto_9
:cond_12
iget-object v2, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_index_:[I
aput v1, v2, p1
iget-object v2, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I
invoke-static {v0}, Ljava/lang/Math;->abs(I)I
move-result v3
iget-object v4, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I
const/16 v5, 0x80
invoke-static {v2, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
move v2, v1
goto :goto_9
.end method
.method public getValue(I)I
.registers 6
iget-boolean v1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_isCompacted_:Z
if-nez v1, :cond_b
const v1, 0x10ffff
if-gt p1, v1, :cond_b
if-gez p1, :cond_d
:cond_b
const/4 v1, 0x0
:goto_c
return v1
:cond_d
iget-object v1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_index_:[I
shr-int/lit8 v2, p1, 0x5
aget v0, v1, v2
iget-object v1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I
invoke-static {v0}, Ljava/lang/Math;->abs(I)I
move-result v2
and-int/lit8 v3, p1, 0x1f
add-int/2addr v2, v3
aget v1, v1, v2
goto :goto_c
.end method
.method public getValue(I[Z)I
.registers 8
const/4 v4, 0x1
const/4 v3, 0x0
iget-boolean v1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_isCompacted_:Z
if-nez v1, :cond_d
const v1, 0x10ffff
if-gt p1, v1, :cond_d
if-gez p1, :cond_13
:cond_d
if-eqz p2, :cond_11
aput-boolean v4, p2, v3
:cond_11
move v1, v3
:goto_12
return v1
:cond_13
iget-object v1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_index_:[I
shr-int/lit8 v2, p1, 0x5
aget v0, v1, v2
if-eqz p2, :cond_20
if-nez v0, :cond_2c
move v1, v4
:goto_1e
aput-boolean v1, p2, v3
:cond_20
iget-object v1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I
invoke-static {v0}, Ljava/lang/Math;->abs(I)I
move-result v2
and-int/lit8 v3, p1, 0x1f
add-int/2addr v2, v3
aget v1, v1, v2
goto :goto_12
:cond_2c
move v1, v3
goto :goto_1e
.end method
.method public serialize(Ljava/io/OutputStream;ZLcom/ibm/icu/impl/TrieBuilder$DataManipulate;)I
.registers 11
const/4 v6, 0x1
if-nez p3, :cond_b
new-instance v5, Ljava/lang/IllegalArgumentException;
const-string v6, "Parameters can not be null"
invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v5
:cond_b
iget-boolean v5, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_isCompacted_:Z
if-nez v5, :cond_1b
const/4 v5, 0x0
invoke-direct {p0, v5}, Lcom/ibm/icu/impl/IntTrieBuilder;->compact(Z)V
invoke-direct {p0, p3}, Lcom/ibm/icu/impl/IntTrieBuilder;->fold(Lcom/ibm/icu/impl/TrieBuilder$DataManipulate;)V
invoke-direct {p0, v6}, Lcom/ibm/icu/impl/IntTrieBuilder;->compact(Z)V
iput-boolean v6, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_isCompacted_:Z
:cond_1b
if-eqz p2, :cond_2f
iget v5, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I
iget v6, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_indexLength_:I
add-int v2, v5, v6
:goto_23
const/high16 v5, 0x4
if-lt v2, v5, :cond_32
new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;
const-string v6, "Data length too small"
invoke-direct {v5, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v5
:cond_2f
iget v2, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I
goto :goto_23
:cond_32
iget v5, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_indexLength_:I
mul-int/lit8 v5, v5, 0x2
add-int/lit8 v2, v5, 0x10
if-eqz p2, :cond_42
iget v5, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I
mul-int/lit8 v5, v5, 0x2
add-int/2addr v2, v5
:goto_3f
if-nez p1, :cond_48
:cond_41
return v2
:cond_42
iget v5, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I
mul-int/lit8 v5, v5, 0x4
add-int/2addr v2, v5
goto :goto_3f
:cond_48
new-instance v0, Ljava/io/DataOutputStream;
invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
const v5, 0x54726965
invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V
const/16 v3, 0x25
if-nez p2, :cond_59
or-int/lit16 v3, v3, 0x100
:cond_59
iget-boolean v5, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_isLatin1Linear_:Z
if-eqz v5, :cond_5f
or-int/lit16 v3, v3, 0x200
:cond_5f
invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V
iget v5, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_indexLength_:I
invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V
iget v5, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I
invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V
if-eqz p2, :cond_96
const/4 v1, 0x0
:goto_6f
iget v5, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_indexLength_:I
if-ge v1, v5, :cond_82
iget-object v5, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_index_:[I
aget v5, v5, v1
iget v6, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_indexLength_:I
add-int/2addr v5, v6
ushr-int/lit8 v4, v5, 0x2
invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeChar(I)V
add-int/lit8 v1, v1, 0x1
goto :goto_6f
:cond_82
const/4 v1, 0x0
:goto_83
iget v5, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I
if-ge v1, v5, :cond_41
iget-object v5, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I
aget v5, v5, v1
const v6, 0xffff
and-int v4, v5, v6
invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeChar(I)V
add-int/lit8 v1, v1, 0x1
goto :goto_83
:cond_96
const/4 v1, 0x0
:goto_97
iget v5, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_indexLength_:I
if-ge v1, v5, :cond_a7
iget-object v5, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_index_:[I
aget v5, v5, v1
ushr-int/lit8 v4, v5, 0x2
invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeChar(I)V
add-int/lit8 v1, v1, 0x1
goto :goto_97
:cond_a7
const/4 v1, 0x0
:goto_a8
iget v5, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I
if-ge v1, v5, :cond_41
iget-object v5, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I
aget v5, v5, v1
invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V
add-int/lit8 v1, v1, 0x1
goto :goto_a8
.end method
.method public serialize(Lcom/ibm/icu/impl/TrieBuilder$DataManipulate;Lcom/ibm/icu/impl/Trie$DataManipulate;)Lcom/ibm/icu/impl/IntTrie;
.registers 10
const/4 v3, 0x1
const/4 v5, 0x0
if-nez p1, :cond_c
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v3, "Parameters can not be null"
invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-boolean v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_isCompacted_:Z
if-nez v0, :cond_1b
invoke-direct {p0, v5}, Lcom/ibm/icu/impl/IntTrieBuilder;->compact(Z)V
invoke-direct {p0, p1}, Lcom/ibm/icu/impl/IntTrieBuilder;->fold(Lcom/ibm/icu/impl/TrieBuilder$DataManipulate;)V
invoke-direct {p0, v3}, Lcom/ibm/icu/impl/IntTrieBuilder;->compact(Z)V
iput-boolean v3, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_isCompacted_:Z
:cond_1b
iget v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I
const/high16 v3, 0x4
if-lt v0, v3, :cond_29
new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;
const-string v3, "Data length too small"
invoke-direct {v0, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
:cond_29
iget v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_indexLength_:I
new-array v1, v0, [C
iget v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I
new-array v2, v0, [I
const/4 v6, 0x0
:goto_32
iget v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_indexLength_:I
if-ge v6, v0, :cond_42
iget-object v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_index_:[I
aget v0, v0, v6
ushr-int/lit8 v0, v0, 0x2
int-to-char v0, v0
aput-char v0, v1, v6
add-int/lit8 v6, v6, 0x1
goto :goto_32
:cond_42
iget-object v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I
iget v3, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_dataLength_:I
invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
const/16 v4, 0x25
or-int/lit16 v4, v4, 0x100
iget-boolean v0, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_isLatin1Linear_:Z
if-eqz v0, :cond_53
or-int/lit16 v4, v4, 0x200
:cond_53
new-instance v0, Lcom/ibm/icu/impl/IntTrie;
iget v3, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_initialValue_:I
move-object v5, p2
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/IntTrie;-><init>([C[IIILcom/ibm/icu/impl/Trie$DataManipulate;)V
return-object v0
.end method
.method public setRange(IIIZ)Z
.registers 20
iget-boolean v2, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_isCompacted_:Z
if-nez v2, :cond_1d
if-ltz p1, :cond_1d
const v2, 0x10ffff
move/from16 v0, p1
move v1, v2
if-gt v0, v1, :cond_1d
if-ltz p2, :cond_1d
const/high16 v2, 0x11
move/from16 v0, p2
move v1, v2
if-gt v0, v1, :cond_1d
move/from16 v0, p1
move/from16 v1, p2
if-le v0, v1, :cond_1f
:cond_1d
const/4 v2, 0x0
:goto_1e
return v2
:cond_1f
move/from16 v0, p1
move/from16 v1, p2
if-ne v0, v1, :cond_27
const/4 v2, 0x1
goto :goto_1e
:cond_27
and-int/lit8 v2, p1, 0x1f
if-eqz v2, :cond_4a
invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/impl/IntTrieBuilder;->getDataBlock(I)I
move-result v3
if-gez v3, :cond_33
const/4 v2, 0x0
goto :goto_1e
:cond_33
add-int/lit8 v2, p1, 0x20
and-int/lit8 v12, v2, -0x20
move v0, v12
move/from16 v1, p2
if-gt v0, v1, :cond_75
and-int/lit8 v4, p1, 0x1f
const/16 v5, 0x20
move-object v2, p0
move/from16 v6, p3
move/from16 v7, p4
invoke-direct/range {v2 .. v7}, Lcom/ibm/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V
move/from16 p1, v12
:cond_4a
and-int/lit8 v14, p2, 0x1f
and-int/lit8 p2, p2, -0x20
const/4 v5, 0x0
iget v2, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_initialValue_:I
move/from16 v0, p3
move v1, v2
if-ne v0, v1, :cond_83
move v13, v5
:goto_57
move/from16 v0, p1
move/from16 v1, p2
if-ge v0, v1, :cond_ba
iget-object v2, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_index_:[I
shr-int/lit8 v3, p1, 0x5
aget v3, v2, v3
if-lez v3, :cond_86
const/4 v4, 0x0
const/16 v5, 0x20
move-object v2, p0
move/from16 v6, p3
move/from16 v7, p4
invoke-direct/range {v2 .. v7}, Lcom/ibm/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V
move v5, v13
:goto_71
add-int/lit8 p1, p1, 0x20
move v13, v5
goto :goto_57
:cond_75
and-int/lit8 v4, p1, 0x1f
and-int/lit8 v5, p2, 0x1f
move-object v2, p0
move/from16 v6, p3
move/from16 v7, p4
invoke-direct/range {v2 .. v7}, Lcom/ibm/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V
const/4 v2, 0x1
goto :goto_1e
:cond_83
const/4 v5, -0x1
move v13, v5
goto :goto_57
:cond_86
iget-object v2, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I
neg-int v4, v3
aget v2, v2, v4
move v0, v2
move/from16 v1, p3
if-eq v0, v1, :cond_d3
if-eqz v3, :cond_94
if-eqz p4, :cond_d3
:cond_94
if-ltz v13, :cond_9f
iget-object v2, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_index_:[I
shr-int/lit8 v3, p1, 0x5
neg-int v4, v13
aput v4, v2, v3
move v5, v13
goto :goto_71
:cond_9f
invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/impl/IntTrieBuilder;->getDataBlock(I)I
move-result v5
if-gez v5, :cond_a8
const/4 v2, 0x0
goto/16 :goto_1e
:cond_a8
iget-object v2, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_index_:[I
shr-int/lit8 v3, p1, 0x5
neg-int v4, v5
aput v4, v2, v3
const/4 v6, 0x0
const/16 v7, 0x20
const/4 v9, 0x1
move-object v4, p0
move/from16 v8, p3
invoke-direct/range {v4 .. v9}, Lcom/ibm/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V
goto :goto_71
:cond_ba
if-lez v14, :cond_d0
invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/impl/IntTrieBuilder;->getDataBlock(I)I
move-result v3
if-gez v3, :cond_c5
const/4 v2, 0x0
goto/16 :goto_1e
:cond_c5
const/4 v8, 0x0
move-object v6, p0
move v7, v3
move v9, v14
move/from16 v10, p3
move/from16 v11, p4
invoke-direct/range {v6 .. v11}, Lcom/ibm/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V
:cond_d0
const/4 v2, 0x1
goto/16 :goto_1e
:cond_d3
move v5, v13
goto :goto_71
.end method
.method public setValue(II)Z
.registers 6
const/4 v2, 0x0
iget-boolean v1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_isCompacted_:Z
if-nez v1, :cond_c
const v1, 0x10ffff
if-gt p1, v1, :cond_c
if-gez p1, :cond_e
:cond_c
move v1, v2
:goto_d
return v1
:cond_e
invoke-direct {p0, p1}, Lcom/ibm/icu/impl/IntTrieBuilder;->getDataBlock(I)I
move-result v0
if-gez v0, :cond_16
move v1, v2
goto :goto_d
:cond_16
iget-object v1, p0, Lcom/ibm/icu/impl/IntTrieBuilder;->m_data_:[I
and-int/lit8 v2, p1, 0x1f
add-int/2addr v2, v0
aput p2, v1, v2
const/4 v1, 0x1
goto :goto_d
.end method