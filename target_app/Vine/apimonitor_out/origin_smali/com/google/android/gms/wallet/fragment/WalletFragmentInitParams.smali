.class public final Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$1;,
        Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private akj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

.field private akk:Lcom/google/android/gms/wallet/MaskedWallet;

.field private akx:I

.field final xJ:I

.field private yN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/wallet/fragment/a;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/fragment/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->xJ:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->akx:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/wallet/MaskedWalletRequest;ILcom/google/android/gms/wallet/MaskedWallet;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->xJ:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->yN:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->akj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    iput p4, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->akx:I

    iput-object p5, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->akk:Lcom/google/android/gms/wallet/MaskedWallet;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->akx:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)Lcom/google/android/gms/wallet/MaskedWallet;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->akk:Lcom/google/android/gms/wallet/MaskedWallet;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;Lcom/google/android/gms/wallet/MaskedWallet;)Lcom/google/android/gms/wallet/MaskedWallet;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->akk:Lcom/google/android/gms/wallet/MaskedWallet;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;Lcom/google/android/gms/wallet/MaskedWalletRequest;)Lcom/google/android/gms/wallet/MaskedWalletRequest;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->akj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->yN:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)Lcom/google/android/gms/wallet/MaskedWalletRequest;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->akj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->akx:I

    return v0
.end method

.method public static newBuilder()Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;
    .registers 3

    new-instance v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;

    new-instance v1, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;-><init>(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$1;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->yN:Ljava/lang/String;

    return-object v0
.end method

.method public getMaskedWallet()Lcom/google/android/gms/wallet/MaskedWallet;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->akk:Lcom/google/android/gms/wallet/MaskedWallet;

    return-object v0
.end method

.method public getMaskedWalletRequest()Lcom/google/android/gms/wallet/MaskedWalletRequest;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->akj:Lcom/google/android/gms/wallet/MaskedWalletRequest;

    return-object v0
.end method

.method public getMaskedWalletRequestCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->akx:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/fragment/a;->a(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;Landroid/os/Parcel;I)V

    return-void
.end method
