.class public final Lcom/google/android/gms/wallet/MaskedWallet;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:[Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Lcom/google/android/gms/wallet/Address;

.field f:Lcom/google/android/gms/wallet/Address;

.field g:[Lcom/google/android/gms/wallet/LoyaltyWalletObject;

.field h:[Lcom/google/android/gms/wallet/OfferWalletObject;

.field i:Lcom/google/android/gms/identity/intents/model/UserAddress;

.field j:Lcom/google/android/gms/identity/intents/model/UserAddress;

.field k:[Lcom/google/android/gms/wallet/InstrumentInfo;

.field private final l:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/wallet/y;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/y;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/MaskedWallet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->l:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/Address;Lcom/google/android/gms/wallet/Address;[Lcom/google/android/gms/wallet/LoyaltyWalletObject;[Lcom/google/android/gms/wallet/OfferWalletObject;Lcom/google/android/gms/identity/intents/model/UserAddress;Lcom/google/android/gms/identity/intents/model/UserAddress;[Lcom/google/android/gms/wallet/InstrumentInfo;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/MaskedWallet;->l:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/MaskedWallet;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/MaskedWallet;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/MaskedWallet;->c:[Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wallet/MaskedWallet;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/wallet/MaskedWallet;->e:Lcom/google/android/gms/wallet/Address;

    iput-object p7, p0, Lcom/google/android/gms/wallet/MaskedWallet;->f:Lcom/google/android/gms/wallet/Address;

    iput-object p8, p0, Lcom/google/android/gms/wallet/MaskedWallet;->g:[Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iput-object p9, p0, Lcom/google/android/gms/wallet/MaskedWallet;->h:[Lcom/google/android/gms/wallet/OfferWalletObject;

    iput-object p10, p0, Lcom/google/android/gms/wallet/MaskedWallet;->i:Lcom/google/android/gms/identity/intents/model/UserAddress;

    iput-object p11, p0, Lcom/google/android/gms/wallet/MaskedWallet;->j:Lcom/google/android/gms/identity/intents/model/UserAddress;

    iput-object p12, p0, Lcom/google/android/gms/wallet/MaskedWallet;->k:[Lcom/google/android/gms/wallet/InstrumentInfo;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->l:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()[Lcom/google/android/gms/wallet/InstrumentInfo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->k:[Lcom/google/android/gms/wallet/InstrumentInfo;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/google/android/gms/wallet/Address;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->e:Lcom/google/android/gms/wallet/Address;

    return-object v0
.end method

.method public h()Lcom/google/android/gms/wallet/Address;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->f:Lcom/google/android/gms/wallet/Address;

    return-object v0
.end method

.method public i()[Lcom/google/android/gms/wallet/LoyaltyWalletObject;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->g:[Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    return-object v0
.end method

.method public j()[Lcom/google/android/gms/wallet/OfferWalletObject;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->h:[Lcom/google/android/gms/wallet/OfferWalletObject;

    return-object v0
.end method

.method public k()Lcom/google/android/gms/identity/intents/model/UserAddress;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->i:Lcom/google/android/gms/identity/intents/model/UserAddress;

    return-object v0
.end method

.method public l()Lcom/google/android/gms/identity/intents/model/UserAddress;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->j:Lcom/google/android/gms/identity/intents/model/UserAddress;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/y;->a(Lcom/google/android/gms/wallet/MaskedWallet;Landroid/os/Parcel;I)V

    return-void
.end method
