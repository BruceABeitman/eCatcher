.class final Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;
.super Ljava/lang/Object;
.source "BreakIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/BreakIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BreakIteratorCache"
.end annotation


# instance fields
.field private iter:Lcom/ibm/icu/text/BreakIterator;

.field private where:Lcom/ibm/icu/util/ULocale;


# direct methods
.method constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/BreakIterator;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;->where:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p2}, Lcom/ibm/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/BreakIterator;

    iput-object v0, p0, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;->iter:Lcom/ibm/icu/text/BreakIterator;

    return-void
.end method


# virtual methods
.method createBreakInstance()Lcom/ibm/icu/text/BreakIterator;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;->iter:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/BreakIterator;

    return-object p0
.end method

.method getLocale()Lcom/ibm/icu/util/ULocale;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;->where:Lcom/ibm/icu/util/ULocale;

    return-object v0
.end method
