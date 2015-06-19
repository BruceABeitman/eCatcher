.class public final Lcom/google/android/gms/internal/jr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/jr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ZL:J

.field ZM:J

.field private final wj:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/js;

    invoke-direct {v0}, Lcom/google/android/gms/internal/js;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/jr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/jr;->wj:I

    return-void
.end method

.method constructor <init>(IJJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/jr;->wj:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/jr;->ZL:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/jr;->ZM:J

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/jr;->wj:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/js;->a(Lcom/google/android/gms/internal/jr;Landroid/os/Parcel;I)V

    return-void
.end method
