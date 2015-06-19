.class abstract Lcom/ibm/icu/text/Collator$ServiceShim;
.super Ljava/lang/Object;
.source "Collator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/Collator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ServiceShim"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getAvailableLocales()[Ljava/util/Locale;
.end method

.method abstract getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
.end method

.method abstract getDisplayName(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
.end method

.method abstract getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;
.end method

.method abstract registerFactory(Lcom/ibm/icu/text/Collator$CollatorFactory;)Ljava/lang/Object;
.end method

.method abstract registerInstance(Lcom/ibm/icu/text/Collator;Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;
.end method

.method abstract unregister(Ljava/lang/Object;)Z
.end method
