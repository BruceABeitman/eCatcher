.class  Lcom/ibm/icu/util/CurrencyServiceShim$CFService$1CurrencyFactory;
.super Lcom/ibm/icu/impl/ICULocaleService$ICUResourceBundleFactory;
.source "CurrencyServiceShim.java"
.field final synthetic this$0:Lcom/ibm/icu/util/CurrencyServiceShim$CFService;
.method constructor <init>(Lcom/ibm/icu/util/CurrencyServiceShim$CFService;)V
.registers 2
iput-object p1, p0, Lcom/ibm/icu/util/CurrencyServiceShim$CFService$1CurrencyFactory;->this$0:Lcom/ibm/icu/util/CurrencyServiceShim$CFService;
invoke-direct {p0}, Lcom/ibm/icu/impl/ICULocaleService$ICUResourceBundleFactory;-><init>()V
return-void
.end method
.method protected handleCreate(Lcom/ibm/icu/util/ULocale;ILcom/ibm/icu/impl/ICUService;)Ljava/lang/Object;
.registers 5
invoke-static {p1}, Lcom/ibm/icu/util/Currency;->createCurrency(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;
move-result-object v0
return-object v0
.end method