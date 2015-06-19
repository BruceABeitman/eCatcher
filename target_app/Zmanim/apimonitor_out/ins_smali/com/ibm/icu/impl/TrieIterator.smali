.class public Lcom/ibm/icu/impl/TrieIterator;
.super Ljava/lang/Object;
.source "TrieIterator.java"
.implements Lcom/ibm/icu/util/RangeValueIterator;
.field private static final BMP_INDEX_LENGTH_:I = 0x800
.field private static final DATA_BLOCK_LENGTH_:I = 0x20
.field private static final LEAD_SURROGATE_MIN_VALUE_:I = 0xd800
.field private static final TRAIL_SURROGATE_COUNT_:I = 0x400
.field private static final TRAIL_SURROGATE_INDEX_BLOCK_LENGTH_:I = 0x20
.field private static final TRAIL_SURROGATE_MIN_VALUE_:I = 0xdc00
.field private m_currentCodepoint_:I
.field private m_initialValue_:I
.field private m_nextBlockIndex_:I
.field private m_nextBlock_:I
.field private m_nextCodepoint_:I
.field private m_nextIndex_:I
.field private m_nextTrailIndexOffset_:I
.field private m_nextValue_:I
.field private m_trie_:Lcom/ibm/icu/impl/Trie;
.method public constructor <init>(Lcom/ibm/icu/impl/Trie;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Argument trie cannot be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lcom/ibm/icu/impl/TrieIterator;->m_trie_:Lcom/ibm/icu/impl/Trie;
iget-object v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_trie_:Lcom/ibm/icu/impl/Trie;
invoke-virtual {v0}, Lcom/ibm/icu/impl/Trie;->getInitialValue()I
move-result v0
invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/TrieIterator;->extract(I)I
move-result v0
iput v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_initialValue_:I
invoke-virtual {p0}, Lcom/ibm/icu/impl/TrieIterator;->reset()V
return-void
.end method
.method private final calculateNextBMPElement(Lcom/ibm/icu/util/RangeValueIterator$Element;)Z
.registers 8
const/4 v5, 0x0
const/4 v4, 0x1
iget v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextBlock_:I
iget v1, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextValue_:I
iget v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
iput v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_currentCodepoint_:I
iget v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
iget v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextBlockIndex_:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextBlockIndex_:I
invoke-direct {p0, v1}, Lcom/ibm/icu/impl/TrieIterator;->checkBlockDetail(I)Z
move-result v2
if-nez v2, :cond_25
iget v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_currentCodepoint_:I
iget v3, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
invoke-direct {p0, p1, v2, v3, v1}, Lcom/ibm/icu/impl/TrieIterator;->setResult(Lcom/ibm/icu/util/RangeValueIterator$Element;III)V
move v2, v4
:goto_24
return v2
:cond_25
iget v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
const/high16 v3, 0x1
if-ge v2, v3, :cond_5b
iget v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextIndex_:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextIndex_:I
iget v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
const v3, 0xd800
if-ne v2, v3, :cond_4d
const/16 v2, 0x800
iput v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextIndex_:I
:goto_3c
:cond_3c
iput v5, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextBlockIndex_:I
invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/TrieIterator;->checkBlock(II)Z
move-result v2
if-nez v2, :cond_25
iget v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_currentCodepoint_:I
iget v3, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
invoke-direct {p0, p1, v2, v3, v1}, Lcom/ibm/icu/impl/TrieIterator;->setResult(Lcom/ibm/icu/util/RangeValueIterator$Element;III)V
move v2, v4
goto :goto_24
:cond_4d
iget v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
const v3, 0xdc00
if-ne v2, v3, :cond_3c
iget v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
shr-int/lit8 v2, v2, 0x5
iput v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextIndex_:I
goto :goto_3c
:cond_5b
iget v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
sub-int/2addr v2, v4
iput v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
iget v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextBlockIndex_:I
sub-int/2addr v2, v4
iput v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextBlockIndex_:I
move v2, v5
goto :goto_24
.end method
.method private final calculateNextSupplementaryElement(Lcom/ibm/icu/util/RangeValueIterator$Element;)V
.registers 11
const v8, 0xdc00
const/4 v7, 0x0
iget v1, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextValue_:I
iget v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextBlock_:I
iget v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
add-int/lit8 v4, v4, 0x1
iput v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
iget v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextBlockIndex_:I
add-int/lit8 v4, v4, 0x1
iput v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextBlockIndex_:I
iget v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
invoke-static {v4}, Lcom/ibm/icu/text/UTF16;->getTrailSurrogate(I)C
move-result v4
if-eq v4, v8, :cond_52
invoke-direct {p0}, Lcom/ibm/icu/impl/TrieIterator;->checkNullNextTrailIndex()Z
move-result v4
if-nez v4, :cond_34
invoke-direct {p0, v1}, Lcom/ibm/icu/impl/TrieIterator;->checkBlockDetail(I)Z
move-result v4
if-nez v4, :cond_34
iget v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_currentCodepoint_:I
iget v5, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
invoke-direct {p0, p1, v4, v5, v1}, Lcom/ibm/icu/impl/TrieIterator;->setResult(Lcom/ibm/icu/util/RangeValueIterator$Element;III)V
iget v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
iput v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_currentCodepoint_:I
:goto_33
return-void
:cond_34
iget v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextIndex_:I
add-int/lit8 v4, v4, 0x1
iput v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextIndex_:I
iget v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I
add-int/lit8 v4, v4, 0x1
iput v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I
invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/TrieIterator;->checkTrailBlock(II)Z
move-result v4
if-nez v4, :cond_52
iget v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_currentCodepoint_:I
iget v5, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
invoke-direct {p0, p1, v4, v5, v1}, Lcom/ibm/icu/impl/TrieIterator;->setResult(Lcom/ibm/icu/util/RangeValueIterator$Element;III)V
iget v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
iput v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_currentCodepoint_:I
goto :goto_33
:cond_52
iget v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
invoke-static {v4}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C
move-result v3
:goto_58
if-ge v3, v8, :cond_e8
iget-object v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_trie_:Lcom/ibm/icu/impl/Trie;
iget-object v4, v4, Lcom/ibm/icu/impl/Trie;->m_index_:[C
shr-int/lit8 v5, v3, 0x5
aget-char v4, v4, v5
shl-int/lit8 v2, v4, 0x2
iget-object v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_trie_:Lcom/ibm/icu/impl/Trie;
iget v4, v4, Lcom/ibm/icu/impl/Trie;->m_dataOffset_:I
if-ne v2, v4, :cond_8c
iget v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_initialValue_:I
if-eq v1, v4, :cond_82
iget v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_initialValue_:I
iput v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextValue_:I
iput v7, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextBlock_:I
iput v7, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextBlockIndex_:I
iget v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_currentCodepoint_:I
iget v5, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
invoke-direct {p0, p1, v4, v5, v1}, Lcom/ibm/icu/impl/TrieIterator;->setResult(Lcom/ibm/icu/util/RangeValueIterator$Element;III)V
iget v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
iput v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_currentCodepoint_:I
goto :goto_33
:cond_82
add-int/lit8 v3, v3, 0x20
int-to-char v4, v3
invoke-static {v4, v8}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I
move-result v4
iput v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
goto :goto_58
:cond_8c
iget-object v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_trie_:Lcom/ibm/icu/impl/Trie;
iget-object v4, v4, Lcom/ibm/icu/impl/Trie;->m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;
if-nez v4, :cond_9a
new-instance v4, Ljava/lang/NullPointerException;
const-string v5, "The field DataManipulate in this Trie is null"
invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v4
:cond_9a
iget-object v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_trie_:Lcom/ibm/icu/impl/Trie;
iget-object v4, v4, Lcom/ibm/icu/impl/Trie;->m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;
iget-object v5, p0, Lcom/ibm/icu/impl/TrieIterator;->m_trie_:Lcom/ibm/icu/impl/Trie;
and-int/lit8 v6, v3, 0x1f
add-int/2addr v6, v2
invoke-virtual {v5, v6}, Lcom/ibm/icu/impl/Trie;->getValue(I)I
move-result v5
invoke-interface {v4, v5}, Lcom/ibm/icu/impl/Trie$DataManipulate;->getFoldingOffset(I)I
move-result v4
iput v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextIndex_:I
iget v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextIndex_:I
if-gtz v4, :cond_d3
iget v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_initialValue_:I
if-eq v1, v4, :cond_ca
iget v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_initialValue_:I
iput v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextValue_:I
iput v7, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextBlock_:I
iput v7, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextBlockIndex_:I
iget v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_currentCodepoint_:I
iget v5, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
invoke-direct {p0, p1, v4, v5, v1}, Lcom/ibm/icu/impl/TrieIterator;->setResult(Lcom/ibm/icu/util/RangeValueIterator$Element;III)V
iget v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
iput v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_currentCodepoint_:I
goto/16 :goto_33
:cond_ca
iget v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
add-int/lit16 v4, v4, 0x400
iput v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
:cond_d0
add-int/lit8 v3, v3, 0x1
goto :goto_58
:cond_d3
iput v7, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I
invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/TrieIterator;->checkTrailBlock(II)Z
move-result v4
if-nez v4, :cond_d0
iget v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_currentCodepoint_:I
iget v5, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
invoke-direct {p0, p1, v4, v5, v1}, Lcom/ibm/icu/impl/TrieIterator;->setResult(Lcom/ibm/icu/util/RangeValueIterator$Element;III)V
iget v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
iput v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_currentCodepoint_:I
goto/16 :goto_33
:cond_e8
iget v4, p0, Lcom/ibm/icu/impl/TrieIterator;->m_currentCodepoint_:I
const/high16 v5, 0x11
invoke-direct {p0, p1, v4, v5, v1}, Lcom/ibm/icu/impl/TrieIterator;->setResult(Lcom/ibm/icu/util/RangeValueIterator$Element;III)V
goto/16 :goto_33
.end method
.method private final checkBlock(II)Z
.registers 6
const/4 v2, 0x0
iget-object v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_trie_:Lcom/ibm/icu/impl/Trie;
iget-object v0, v0, Lcom/ibm/icu/impl/Trie;->m_index_:[C
iget v1, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextIndex_:I
aget-char v0, v0, v1
shl-int/lit8 v0, v0, 0x2
iput v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextBlock_:I
iget v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextBlock_:I
if-ne v0, p1, :cond_22
iget v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
iget v1, p0, Lcom/ibm/icu/impl/TrieIterator;->m_currentCodepoint_:I
sub-int/2addr v0, v1
const/16 v1, 0x20
if-lt v0, v1, :cond_22
iget v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
add-int/lit8 v0, v0, 0x20
iput v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
:goto_20
:cond_20
const/4 v0, 0x1
:goto_21
return v0
:cond_22
iget v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextBlock_:I
if-nez v0, :cond_39
iget v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_initialValue_:I
if-eq p2, v0, :cond_32
iget v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_initialValue_:I
iput v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextValue_:I
iput v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextBlockIndex_:I
move v0, v2
goto :goto_21
:cond_32
iget v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
add-int/lit8 v0, v0, 0x20
iput v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
goto :goto_20
:cond_39
invoke-direct {p0, p2}, Lcom/ibm/icu/impl/TrieIterator;->checkBlockDetail(I)Z
move-result v0
if-nez v0, :cond_20
move v0, v2
goto :goto_21
.end method
.method private final checkBlockDetail(I)Z
.registers 5
:goto_0
iget v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextBlockIndex_:I
const/16 v1, 0x20
if-ge v0, v1, :cond_2a
iget-object v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_trie_:Lcom/ibm/icu/impl/Trie;
iget v1, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextBlock_:I
iget v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextBlockIndex_:I
add-int/2addr v1, v2
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/Trie;->getValue(I)I
move-result v0
invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/TrieIterator;->extract(I)I
move-result v0
iput v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextValue_:I
iget v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextValue_:I
if-eq v0, p1, :cond_1d
const/4 v0, 0x0
:goto_1c
return v0
:cond_1d
iget v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextBlockIndex_:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextBlockIndex_:I
iget v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
goto :goto_0
:cond_2a
const/4 v0, 0x1
goto :goto_1c
.end method
.method private final checkNullNextTrailIndex()Z
.registers 7
const/4 v5, 0x1
iget v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextIndex_:I
if-gtz v2, :cond_47
iget v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
add-int/lit16 v2, v2, 0x3ff
iput v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
iget v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C
move-result v1
iget-object v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_trie_:Lcom/ibm/icu/impl/Trie;
iget-object v2, v2, Lcom/ibm/icu/impl/Trie;->m_index_:[C
shr-int/lit8 v3, v1, 0x5
aget-char v2, v2, v3
shl-int/lit8 v0, v2, 0x2
iget-object v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_trie_:Lcom/ibm/icu/impl/Trie;
iget-object v2, v2, Lcom/ibm/icu/impl/Trie;->m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;
if-nez v2, :cond_29
new-instance v2, Ljava/lang/NullPointerException;
const-string v3, "The field DataManipulate in this Trie is null"
invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v2
:cond_29
iget-object v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_trie_:Lcom/ibm/icu/impl/Trie;
iget-object v2, v2, Lcom/ibm/icu/impl/Trie;->m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;
iget-object v3, p0, Lcom/ibm/icu/impl/TrieIterator;->m_trie_:Lcom/ibm/icu/impl/Trie;
and-int/lit8 v4, v1, 0x1f
add-int/2addr v4, v0
invoke-virtual {v3, v4}, Lcom/ibm/icu/impl/Trie;->getValue(I)I
move-result v3
invoke-interface {v2, v3}, Lcom/ibm/icu/impl/Trie$DataManipulate;->getFoldingOffset(I)I
move-result v2
iput v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextIndex_:I
iget v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextIndex_:I
sub-int/2addr v2, v5
iput v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextIndex_:I
const/16 v2, 0x20
iput v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextBlockIndex_:I
move v2, v5
:goto_46
return v2
:cond_47
const/4 v2, 0x0
goto :goto_46
.end method
.method private final checkTrailBlock(II)Z
.registers 6
const/4 v2, 0x0
:goto_1
iget v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I
const/16 v1, 0x20
if-ge v0, v1, :cond_1e
iput v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextBlockIndex_:I
invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/TrieIterator;->checkBlock(II)Z
move-result v0
if-nez v0, :cond_11
move v0, v2
:goto_10
return v0
:cond_11
iget v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I
iget v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextIndex_:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextIndex_:I
goto :goto_1
:cond_1e
const/4 v0, 0x1
goto :goto_10
.end method
.method private final setResult(Lcom/ibm/icu/util/RangeValueIterator$Element;III)V
.registers 5
iput p2, p1, Lcom/ibm/icu/util/RangeValueIterator$Element;->start:I
iput p3, p1, Lcom/ibm/icu/util/RangeValueIterator$Element;->limit:I
iput p4, p1, Lcom/ibm/icu/util/RangeValueIterator$Element;->value:I
return-void
.end method
.method protected extract(I)I
.registers 2
return p1
.end method
.method public final next(Lcom/ibm/icu/util/RangeValueIterator$Element;)Z
.registers 5
const/4 v2, 0x1
iget v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
const v1, 0x10ffff
if-le v0, v1, :cond_a
const/4 v0, 0x0
:goto_9
return v0
:cond_a
iget v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
const/high16 v1, 0x1
if-ge v0, v1, :cond_18
invoke-direct {p0, p1}, Lcom/ibm/icu/impl/TrieIterator;->calculateNextBMPElement(Lcom/ibm/icu/util/RangeValueIterator$Element;)Z
move-result v0
if-eqz v0, :cond_18
move v0, v2
goto :goto_9
:cond_18
invoke-direct {p0, p1}, Lcom/ibm/icu/impl/TrieIterator;->calculateNextSupplementaryElement(Lcom/ibm/icu/util/RangeValueIterator$Element;)V
move v0, v2
goto :goto_9
.end method
.method public final reset()V
.registers 4
const/4 v2, 0x0
iput v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_currentCodepoint_:I
iput v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextCodepoint_:I
iput v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextIndex_:I
iget-object v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_trie_:Lcom/ibm/icu/impl/Trie;
iget-object v0, v0, Lcom/ibm/icu/impl/Trie;->m_index_:[C
aget-char v0, v0, v2
shl-int/lit8 v0, v0, 0x2
iput v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextBlock_:I
iget v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextBlock_:I
if-nez v0, :cond_20
iget v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_initialValue_:I
iput v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextValue_:I
:goto_19
iput v2, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextBlockIndex_:I
const/16 v0, 0x20
iput v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I
return-void
:cond_20
iget-object v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_trie_:Lcom/ibm/icu/impl/Trie;
iget v1, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextBlock_:I
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/Trie;->getValue(I)I
move-result v0
invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/TrieIterator;->extract(I)I
move-result v0
iput v0, p0, Lcom/ibm/icu/impl/TrieIterator;->m_nextValue_:I
goto :goto_19
.end method