.class public final Lcom/google/android/gms/identity/intents/UserAddressRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/identity/intents/UserAddressRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/identity/intents/a;

    invoke-direct {v0}, Lcom/google/android/gms/identity/intents/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->b:I

    return-void
.end method

.method constructor <init>(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->b:I

    iput-object p2, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->b:I

    return v0
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/identity/intents/a;->a(Lcom/google/android/gms/identity/intents/UserAddressRequest;Landroid/os/Parcel;)V

    return-void
.end method
