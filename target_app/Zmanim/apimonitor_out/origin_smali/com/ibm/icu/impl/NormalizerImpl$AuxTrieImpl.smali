.class final Lcom/ibm/icu/impl/NormalizerImpl$AuxTrieImpl;
.super Ljava/lang/Object;
.source "NormalizerImpl.java"

# interfaces
.implements Lcom/ibm/icu/impl/Trie$DataManipulate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/NormalizerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AuxTrieImpl"
.end annotation


# static fields
.field static auxTrie:Lcom/ibm/icu/impl/CharTrie;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ibm/icu/impl/NormalizerImpl$AuxTrieImpl;->auxTrie:Lcom/ibm/icu/impl/CharTrie;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFoldingOffset(I)I
    .registers 3

    and-int/lit16 v0, p1, 0x3ff

    shl-int/lit8 v0, v0, 0x5

    return v0
.end method