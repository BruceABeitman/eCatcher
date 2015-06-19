.class public final Lcom/google/android/gms/internal/jr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:J

.field b:J

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/sf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/sf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/jr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/jr;->c:I

    return-void
.end method

.method constructor <init>(IJJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/jr;->c:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/jr;->a:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/jr;->b:J

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/jr;->c:I

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/sf;->a(Lcom/google/android/gms/internal/jr;Landroid/os/Parcel;I)V

    return-void
.end method
