.class public abstract Lcom/ibm/icu/text/UnicodeSet$XSymbolTable;
.super Ljava/lang/Object;
.source "UnicodeSet.java"

# interfaces
.implements Lcom/ibm/icu/text/SymbolTable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "XSymbolTable"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/UnicodeSet;)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public lookup(Ljava/lang/String;)[C
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public lookupMatcher(I)Lcom/ibm/icu/text/UnicodeMatcher;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public parseReference(Ljava/lang/String;Ljava/text/ParsePosition;I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method