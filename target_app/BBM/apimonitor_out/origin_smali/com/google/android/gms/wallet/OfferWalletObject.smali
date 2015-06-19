.class public final Lcom/google/android/gms/wallet/OfferWalletObject;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/OfferWalletObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field Zm:Ljava/lang/String;

.field eN:Ljava/lang/String;

.field private final wj:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/wallet/n;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/n;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/OfferWalletObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->wj:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->wj:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->eN:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->Zm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->eN:Ljava/lang/String;

    return-object v0
.end method

.method public final getRedemptionCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->Zm:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->wj:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/n;->a(Lcom/google/android/gms/wallet/OfferWalletObject;Landroid/os/Parcel;I)V

    return-void
.end method
