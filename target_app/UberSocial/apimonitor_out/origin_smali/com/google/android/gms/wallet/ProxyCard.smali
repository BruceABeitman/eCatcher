.class public final Lcom/google/android/gms/wallet/ProxyCard;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/wallet/ac;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/ac;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/ProxyCard;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/ProxyCard;->e:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/ProxyCard;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/ProxyCard;->b:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/wallet/ProxyCard;->c:I

    iput p5, p0, Lcom/google/android/gms/wallet/ProxyCard;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/ProxyCard;->e:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/ProxyCard;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/ProxyCard;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/ProxyCard;->c:I

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/ProxyCard;->d:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/ac;->a(Lcom/google/android/gms/wallet/ProxyCard;Landroid/os/Parcel;I)V

    return-void
.end method
