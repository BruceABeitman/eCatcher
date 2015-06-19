.class public final Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field b:Ljava/lang/String;

.field c:I

.field d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/wallet/aa;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/aa;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->a:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->a:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->c:I

    iput-object p4, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/google/android/gms/wallet/g;
    .registers 3

    new-instance v0, Lcom/google/android/gms/wallet/g;

    new-instance v1, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/g;-><init>(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest$1;)V

    return-object v0
.end method


# virtual methods
.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->a:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->c:I

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/aa;->a(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;Landroid/os/Parcel;I)V

    return-void
.end method
