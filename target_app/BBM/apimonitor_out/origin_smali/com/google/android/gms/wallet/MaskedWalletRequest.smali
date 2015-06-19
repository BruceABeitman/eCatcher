.class public final Lcom/google/android/gms/wallet/MaskedWalletRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/MaskedWalletRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field YY:Z

.field YZ:Z

.field Yg:Ljava/lang/String;

.field Yl:Ljava/lang/String;

.field Yu:Lcom/google/android/gms/wallet/Cart;

.field Za:Z

.field Zb:Ljava/lang/String;

.field Zc:Ljava/lang/String;

.field Zd:Z

.field Ze:Z

.field Zf:[Lcom/google/android/gms/wallet/CountrySpecification;

.field Zg:Z

.field Zh:Z

.field Zi:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;"
        }
    .end annotation
.end field

.field private final wj:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/wallet/l;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->wj:I

    iput-boolean v1, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Zg:Z

    iput-boolean v1, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Zh:Z

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/Cart;ZZ[Lcom/google/android/gms/wallet/CountrySpecification;ZZLjava/util/ArrayList;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/wallet/Cart;",
            "ZZ[",
            "Lcom/google/android/gms/wallet/CountrySpecification;",
            "ZZ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->wj:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Yl:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->YY:Z

    iput-boolean p4, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->YZ:Z

    iput-boolean p5, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Za:Z

    iput-object p6, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Zb:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Yg:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Zc:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Yu:Lcom/google/android/gms/wallet/Cart;

    iput-boolean p10, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Zd:Z

    iput-boolean p11, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Ze:Z

    iput-object p12, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Zf:[Lcom/google/android/gms/wallet/CountrySpecification;

    iput-boolean p13, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Zg:Z

    iput-boolean p14, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Zh:Z

    iput-object p15, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Zi:Ljava/util/ArrayList;

    return-void
.end method

.method public static newBuilder()Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;
    .registers 3

    new-instance v0, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    new-instance v1, Lcom/google/android/gms/wallet/MaskedWalletRequest;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/MaskedWalletRequest;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;-><init>(Lcom/google/android/gms/wallet/MaskedWalletRequest;Lcom/google/android/gms/wallet/MaskedWalletRequest$1;)V

    return-object v0
.end method


# virtual methods
.method public final allowDebitCard()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Zh:Z

    return v0
.end method

.method public final allowPrepaidCard()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Zg:Z

    return v0
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getAllowedCountrySpecificationsForShipping()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Zi:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getAllowedShippingCountrySpecifications()[Lcom/google/android/gms/wallet/CountrySpecification;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Zf:[Lcom/google/android/gms/wallet/CountrySpecification;

    return-object v0
.end method

.method public final getCart()Lcom/google/android/gms/wallet/Cart;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Yu:Lcom/google/android/gms/wallet/Cart;

    return-object v0
.end method

.method public final getCurrencyCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Yg:Ljava/lang/String;

    return-object v0
.end method

.method public final getEstimatedTotalPrice()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Zb:Ljava/lang/String;

    return-object v0
.end method

.method public final getMerchantName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Zc:Ljava/lang/String;

    return-object v0
.end method

.method public final getMerchantTransactionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Yl:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->wj:I

    return v0
.end method

.method public final isBillingAgreement()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Ze:Z

    return v0
.end method

.method public final isPhoneNumberRequired()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->YY:Z

    return v0
.end method

.method public final isShippingAddressRequired()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->YZ:Z

    return v0
.end method

.method public final shouldRetrieveWalletObjects()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Zd:Z

    return v0
.end method

.method public final useMinimalBillingAddress()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->Za:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/l;->a(Lcom/google/android/gms/wallet/MaskedWalletRequest;Landroid/os/Parcel;I)V

    return-void
.end method
