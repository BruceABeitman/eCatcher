.class abstract Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;
.super Ljava/lang/Object;
.source "BreakIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/BreakIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BreakIteratorServiceShim"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createBreakIterator(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;
.end method

.method public abstract getAvailableLocales()[Ljava/util/Locale;
.end method

.method public abstract getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
.end method

.method public abstract registerInstance(Lcom/ibm/icu/text/BreakIterator;Lcom/ibm/icu/util/ULocale;I)Ljava/lang/Object;
.end method

.method public abstract unregister(Ljava/lang/Object;)Z
.end method
