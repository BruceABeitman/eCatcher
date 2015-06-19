.class final Lcom/ibm/icu/util/Currency$CurrencyStringInfo;
.super Ljava/lang/Object;
.source "Currency.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/Currency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CurrencyStringInfo"
.end annotation


# instance fields
.field private currencyString:Ljava/lang/String;

.field private isoCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;->isoCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;->currencyString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/ibm/icu/util/Currency$CurrencyStringInfo;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;->getISOCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/ibm/icu/util/Currency$CurrencyStringInfo;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;->getCurrencyString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCurrencyString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;->currencyString:Ljava/lang/String;

    return-object v0
.end method

.method private getISOCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;->isoCode:Ljava/lang/String;

    return-object v0
.end method
