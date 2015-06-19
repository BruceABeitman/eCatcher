.class public Lcom/ibm/icu/util/CurrencyAmount;
.super Lcom/ibm/icu/util/Measure;
.source "CurrencyAmount.java"


# direct methods
.method public constructor <init>(DLcom/ibm/icu/util/Currency;)V
    .registers 5

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {p0, v0, p3}, Lcom/ibm/icu/util/Measure;-><init>(Ljava/lang/Number;Lcom/ibm/icu/util/MeasureUnit;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Lcom/ibm/icu/util/Currency;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/Measure;-><init>(Ljava/lang/Number;Lcom/ibm/icu/util/MeasureUnit;)V

    return-void
.end method


# virtual methods
.method public getCurrency()Lcom/ibm/icu/util/Currency;
    .registers 1

    invoke-virtual {p0}, Lcom/ibm/icu/util/CurrencyAmount;->getUnit()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/Currency;

    return-object p0
.end method
