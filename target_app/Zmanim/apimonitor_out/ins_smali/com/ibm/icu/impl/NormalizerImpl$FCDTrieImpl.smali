.class final Lcom/ibm/icu/impl/NormalizerImpl$FCDTrieImpl;
.super Ljava/lang/Object;
.source "NormalizerImpl.java"
.implements Lcom/ibm/icu/impl/Trie$DataManipulate;
.field static fcdTrie:Lcom/ibm/icu/impl/CharTrie;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/ibm/icu/impl/NormalizerImpl$FCDTrieImpl;->fcdTrie:Lcom/ibm/icu/impl/CharTrie;
return-void
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getFoldingOffset(I)I
.registers 2
return p1
.end method