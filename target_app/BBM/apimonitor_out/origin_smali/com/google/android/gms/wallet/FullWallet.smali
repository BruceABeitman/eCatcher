.class public final Lcom/google/android/gms/wallet/FullWallet;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/FullWallet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field Yk:Ljava/lang/String;

.field Yl:Ljava/lang/String;

.field Ym:Lcom/google/android/gms/wallet/ProxyCard;

.field Yn:Ljava/lang/String;

.field Yo:Lcom/google/android/gms/wallet/Address;

.field Yp:Lcom/google/android/gms/wallet/Address;

.field Yq:[Ljava/lang/String;

.field Yr:Lcom/google/android/gms/identity/intents/model/UserAddress;

.field Ys:Lcom/google/android/gms/identity/intents/model/UserAddress;

.field Yt:[Lcom/google/android/gms/wallet/InstrumentInfo;

.field private final wj:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/wallet/f;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/FullWallet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/FullWallet;->wj:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/ProxyCard;Ljava/lang/String;Lcom/google/android/gms/wallet/Address;Lcom/google/android/gms/wallet/Address;[Ljava/lang/String;Lcom/google/android/gms/identity/intents/model/UserAddress;Lcom/google/android/gms/identity/intents/model/UserAddress;[Lcom/google/android/gms/wallet/InstrumentInfo;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/FullWallet;->wj:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/FullWallet;->Yk:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/FullWallet;->Yl:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/FullWallet;->Ym:Lcom/google/android/gms/wallet/ProxyCard;

    iput-object p5, p0, Lcom/google/android/gms/wallet/FullWallet;->Yn:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/wallet/FullWallet;->Yo:Lcom/google/android/gms/wallet/Address;

    iput-object p7, p0, Lcom/google/android/gms/wallet/FullWallet;->Yp:Lcom/google/android/gms/wallet/Address;

    iput-object p8, p0, Lcom/google/android/gms/wallet/FullWallet;->Yq:[Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/wallet/FullWallet;->Yr:Lcom/google/android/gms/identity/intents/model/UserAddress;

    iput-object p10, p0, Lcom/google/android/gms/wallet/FullWallet;->Ys:Lcom/google/android/gms/identity/intents/model/UserAddress;

    iput-object p11, p0, Lcom/google/android/gms/wallet/FullWallet;->Yt:[Lcom/google/android/gms/wallet/InstrumentInfo;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getBillingAddress()Lcom/google/android/gms/wallet/Address;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->Yo:Lcom/google/android/gms/wallet/Address;

    return-object v0
.end method

.method public final getBuyerBillingAddress()Lcom/google/android/gms/identity/intents/model/UserAddress;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->Yr:Lcom/google/android/gms/identity/intents/model/UserAddress;

    return-object v0
.end method

.method public final getBuyerShippingAddress()Lcom/google/android/gms/identity/intents/model/UserAddress;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->Ys:Lcom/google/android/gms/identity/intents/model/UserAddress;

    return-object v0
.end method

.method public final getEmail()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->Yn:Ljava/lang/String;

    return-object v0
.end method

.method public final getGoogleTransactionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->Yk:Ljava/lang/String;

    return-object v0
.end method

.method public final getInstrumentInfos()[Lcom/google/android/gms/wallet/InstrumentInfo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->Yt:[Lcom/google/android/gms/wallet/InstrumentInfo;

    return-object v0
.end method

.method public final getMerchantTransactionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->Yl:Ljava/lang/String;

    return-object v0
.end method

.method public final getPaymentDescriptions()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->Yq:[Ljava/lang/String;

    return-object v0
.end method

.method public final getProxyCard()Lcom/google/android/gms/wallet/ProxyCard;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->Ym:Lcom/google/android/gms/wallet/ProxyCard;

    return-object v0
.end method

.method public final getShippingAddress()Lcom/google/android/gms/wallet/Address;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->Yp:Lcom/google/android/gms/wallet/Address;

    return-object v0
.end method

.method public final getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/FullWallet;->wj:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/f;->a(Lcom/google/android/gms/wallet/FullWallet;Landroid/os/Parcel;I)V

    return-void
.end method
