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
.field a:Ljava/lang/String;

.field b:Z

.field c:Z

.field d:Z

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Lcom/google/android/gms/wallet/Cart;

.field i:Z

.field j:Z

.field k:[Lcom/google/android/gms/wallet/CountrySpecification;

.field l:Z

.field m:Z

.field n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;"
        }
    .end annotation
.end field

.field private final o:I


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

    iput v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->o:I

    iput-boolean v1, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->l:Z

    iput-boolean v1, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->m:Z

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

    iput p1, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->o:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->b:Z

    iput-boolean p4, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->c:Z

    iput-boolean p5, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->d:Z

    iput-object p6, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->h:Lcom/google/android/gms/wallet/Cart;

    iput-boolean p10, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->i:Z

    iput-boolean p11, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->j:Z

    iput-object p12, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->k:[Lcom/google/android/gms/wallet/CountrySpecification;

    iput-boolean p13, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->l:Z

    iput-boolean p14, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->m:Z

    iput-object p15, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->n:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/MaskedWalletRequest;->o:I

    return v0
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/l;->a(Lcom/google/android/gms/wallet/MaskedWalletRequest;Landroid/os/Parcel;I)V

    return-void
.end method
