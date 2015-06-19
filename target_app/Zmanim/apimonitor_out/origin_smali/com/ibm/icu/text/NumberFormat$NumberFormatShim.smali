.class abstract Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;
.super Ljava/lang/Object;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/NumberFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "NumberFormatShim"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract createInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
.end method

.method abstract getAvailableLocales()[Ljava/util/Locale;
.end method

.method abstract getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
.end method

.method abstract registerFactory(Lcom/ibm/icu/text/NumberFormat$NumberFormatFactory;)Ljava/lang/Object;
.end method

.method abstract unregister(Ljava/lang/Object;)Z
.end method
