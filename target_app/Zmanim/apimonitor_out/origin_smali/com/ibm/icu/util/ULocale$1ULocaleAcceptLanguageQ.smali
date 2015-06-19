.class Lcom/ibm/icu/util/ULocale$1ULocaleAcceptLanguageQ;
.super Ljava/lang/Object;
.source "ULocale.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibm/icu/util/ULocale;->parseAcceptLanguage(Ljava/lang/String;Z)[Lcom/ibm/icu/util/ULocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ULocaleAcceptLanguageQ"
.end annotation


# instance fields
.field private q:D

.field private serial:D


# direct methods
.method public constructor <init>(DI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/ibm/icu/util/ULocale$1ULocaleAcceptLanguageQ;->q:D

    int-to-double v0, p3

    iput-wide v0, p0, Lcom/ibm/icu/util/ULocale$1ULocaleAcceptLanguageQ;->serial:D

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 10

    const/4 v7, 0x1

    const/4 v6, -0x1

    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/util/ULocale$1ULocaleAcceptLanguageQ;

    move-object v1, v0

    iget-wide v2, p0, Lcom/ibm/icu/util/ULocale$1ULocaleAcceptLanguageQ;->q:D

    iget-wide v4, v1, Lcom/ibm/icu/util/ULocale$1ULocaleAcceptLanguageQ;->q:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_10

    move v2, v6

    :goto_f
    return v2

    :cond_10
    iget-wide v2, p0, Lcom/ibm/icu/util/ULocale$1ULocaleAcceptLanguageQ;->q:D

    iget-wide v4, v1, Lcom/ibm/icu/util/ULocale$1ULocaleAcceptLanguageQ;->q:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1a

    move v2, v7

    goto :goto_f

    :cond_1a
    iget-wide v2, p0, Lcom/ibm/icu/util/ULocale$1ULocaleAcceptLanguageQ;->serial:D

    iget-wide v4, v1, Lcom/ibm/icu/util/ULocale$1ULocaleAcceptLanguageQ;->serial:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_24

    move v2, v6

    goto :goto_f

    :cond_24
    iget-wide v2, p0, Lcom/ibm/icu/util/ULocale$1ULocaleAcceptLanguageQ;->serial:D

    iget-wide v4, v1, Lcom/ibm/icu/util/ULocale$1ULocaleAcceptLanguageQ;->serial:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2e

    move v2, v7

    goto :goto_f

    :cond_2e
    const/4 v2, 0x0

    goto :goto_f
.end method
