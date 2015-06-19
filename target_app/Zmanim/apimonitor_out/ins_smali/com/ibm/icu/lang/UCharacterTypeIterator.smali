.class  Lcom/ibm/icu/lang/UCharacterTypeIterator;
.super Lcom/ibm/icu/impl/TrieIterator;
.source "UCharacterTypeIterator.java"
.method protected constructor <init>(Lcom/ibm/icu/impl/UCharacterProperty;)V
.registers 3
iget-object v0, p1, Lcom/ibm/icu/impl/UCharacterProperty;->m_trie_:Lcom/ibm/icu/impl/CharTrie;
invoke-direct {p0, v0}, Lcom/ibm/icu/impl/TrieIterator;-><init>(Lcom/ibm/icu/impl/Trie;)V
return-void
.end method
.method protected extract(I)I
.registers 3
and-int/lit8 v0, p1, 0x1f
return v0
.end method