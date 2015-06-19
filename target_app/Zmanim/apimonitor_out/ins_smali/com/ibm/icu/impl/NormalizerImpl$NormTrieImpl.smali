.class final Lcom/ibm/icu/impl/NormalizerImpl$NormTrieImpl;
.super Ljava/lang/Object;
.source "NormalizerImpl.java"
.implements Lcom/ibm/icu/impl/Trie$DataManipulate;
.field static normTrie:Lcom/ibm/icu/impl/IntTrie;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/ibm/icu/impl/NormalizerImpl$NormTrieImpl;->normTrie:Lcom/ibm/icu/impl/IntTrie;
return-void
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getFoldingOffset(I)I
.registers 3
shr-int/lit8 v0, p1, 0xb
and-int/lit16 v0, v0, 0x7fe0
add-int/lit16 v0, v0, 0x800
return v0
.end method