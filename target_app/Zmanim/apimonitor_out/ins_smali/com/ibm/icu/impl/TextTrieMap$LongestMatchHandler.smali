.class  Lcom/ibm/icu/impl/TextTrieMap$LongestMatchHandler;
.super Ljava/lang/Object;
.source "TextTrieMap.java"
.implements Lcom/ibm/icu/impl/TextTrieMap$ResultHandler;
.field private length:I
.field private matches:Ljava/util/Iterator;
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$LongestMatchHandler;->matches:Ljava/util/Iterator;
const/4 v0, 0x0
iput v0, p0, Lcom/ibm/icu/impl/TextTrieMap$LongestMatchHandler;->length:I
return-void
.end method
.method synthetic constructor <init>(Lcom/ibm/icu/impl/TextTrieMap$1;)V
.registers 2
invoke-direct {p0}, Lcom/ibm/icu/impl/TextTrieMap$LongestMatchHandler;-><init>()V
return-void
.end method
.method public getMatches()Ljava/util/Iterator;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$LongestMatchHandler;->matches:Ljava/util/Iterator;
return-object v0
.end method
.method public handlePrefixMatch(ILjava/util/Iterator;)Z
.registers 4
iget v0, p0, Lcom/ibm/icu/impl/TextTrieMap$LongestMatchHandler;->length:I
if-le p1, v0, :cond_8
iput p1, p0, Lcom/ibm/icu/impl/TextTrieMap$LongestMatchHandler;->length:I
iput-object p2, p0, Lcom/ibm/icu/impl/TextTrieMap$LongestMatchHandler;->matches:Ljava/util/Iterator;
:cond_8
const/4 v0, 0x1
return v0
.end method