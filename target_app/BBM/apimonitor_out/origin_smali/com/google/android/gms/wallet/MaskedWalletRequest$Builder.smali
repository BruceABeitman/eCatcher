.class public final Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
.super Ljava/lang/Object;


# instance fields
.field final synthetic Zj:Lcom/google/android/gms/wallet/MaskedWalletRequest;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/MaskedWalletRequest;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->Zj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/MaskedWalletRequest;Lcom/google/android/gms/wallet/MaskedWalletRequest$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;-><init>(Lcom/google/android/gms/wallet/MaskedWalletRequest;)V

    return-void
.end method


# virtual methods
.method public final addAllowedCountrySpecificationForShipping(Lcom/google/android/gms/identity/intents/model/CountrySpecification;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->Zj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Zi:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->Zj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Zi:Ljava/util/ArrayList;

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->Zj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Zi:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addAllowedCountrySpecificationsForShipping(Ljava/util/Collection;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;)",
            "Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->Zj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Zi:Ljava/util/ArrayList;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->Zj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Zi:Ljava/util/ArrayList;

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->Zj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Zi:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_18
    return-object p0
.end method

.method public final build()Lcom/google/android/gms/wallet/MaskedWalletRequest;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->Zj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    return-object v0
.end method

.method public final setAllowDebitCard(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->Zj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Zh:Z

    return-object p0
.end method

.method public final setAllowPrepaidCard(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->Zj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Zg:Z

    return-object p0
.end method

.method public final setCart(Lcom/google/android/gms/wallet/Cart;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->Zj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Yu:Lcom/google/android/gms/wallet/Cart;

    return-object p0
.end method

.method public final setCurrencyCode(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->Zj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Yg:Ljava/lang/String;

    return-object p0
.end method

.method public final setEstimatedTotalPrice(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->Zj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Zb:Ljava/lang/String;

    return-object p0
.end method

.method public final setIsBillingAgreement(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->Zj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Ze:Z

    return-object p0
.end method

.method public final setMerchantName(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->Zj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Zc:Ljava/lang/String;

    return-object p0
.end method

.method public final setMerchantTransactionId(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->Zj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Yl:Ljava/lang/String;

    return-object p0
.end method

.method public final setPhoneNumberRequired(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->Zj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->YY:Z

    return-object p0
.end method

.method public final setShippingAddressRequired(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->Zj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->YZ:Z

    return-object p0
.end method

.method public final setShouldRetrieveWalletObjects(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->Zj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Zd:Z

    return-object p0
.end method

.method public final setUseMinimalBillingAddress(Z)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->Zj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Za:Z

    return-object p0
.end method
