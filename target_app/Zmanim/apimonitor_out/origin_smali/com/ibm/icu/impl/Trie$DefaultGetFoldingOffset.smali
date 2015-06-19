.class Lcom/ibm/icu/impl/Trie$DefaultGetFoldingOffset;
.super Ljava/lang/Object;
.source "Trie.java"

# interfaces
.implements Lcom/ibm/icu/impl/Trie$DataManipulate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/Trie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultGetFoldingOffset"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/Trie$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/ibm/icu/impl/Trie$DefaultGetFoldingOffset;-><init>()V

    return-void
.end method


# virtual methods
.method public getFoldingOffset(I)I
    .registers 2

    return p1
.end method
