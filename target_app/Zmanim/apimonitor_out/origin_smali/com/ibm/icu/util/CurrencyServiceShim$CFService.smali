.class Lcom/ibm/icu/util/CurrencyServiceShim$CFService;
.super Lcom/ibm/icu/impl/ICULocaleService;
.source "CurrencyServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/CurrencyServiceShim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CFService"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const-string v0, "Currency"

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/ICULocaleService;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/ibm/icu/util/CurrencyServiceShim$CFService$1CurrencyFactory;

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/CurrencyServiceShim$CFService$1CurrencyFactory;-><init>(Lcom/ibm/icu/util/CurrencyServiceShim$CFService;)V

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/CurrencyServiceShim$CFService;->registerFactory(Lcom/ibm/icu/impl/ICUService$Factory;)Lcom/ibm/icu/impl/ICUService$Factory;

    invoke-virtual {p0}, Lcom/ibm/icu/util/CurrencyServiceShim$CFService;->markDefault()V

    return-void
.end method
