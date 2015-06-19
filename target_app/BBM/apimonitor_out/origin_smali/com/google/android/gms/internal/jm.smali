.class public final Lcom/google/android/gms/internal/jm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/jm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ZE:I

.field ZF:Ljava/lang/String;

.field ZG:D

.field ZH:Ljava/lang/String;

.field ZI:J

.field ZJ:I

.field private final wj:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/jn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/jm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/jm;->wj:I

    iput v1, p0, Lcom/google/android/gms/internal/jm;->ZJ:I

    iput v1, p0, Lcom/google/android/gms/internal/jm;->ZE:I

    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/android/gms/internal/jm;->ZG:D

    return-void
.end method

.method constructor <init>(IILjava/lang/String;DLjava/lang/String;JI)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/jm;->wj:I

    iput p2, p0, Lcom/google/android/gms/internal/jm;->ZE:I

    iput-object p3, p0, Lcom/google/android/gms/internal/jm;->ZF:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/jm;->ZG:D

    iput-object p6, p0, Lcom/google/android/gms/internal/jm;->ZH:Ljava/lang/String;

    iput-wide p7, p0, Lcom/google/android/gms/internal/jm;->ZI:J

    iput p9, p0, Lcom/google/android/gms/internal/jm;->ZJ:I

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

    iget v0, p0, Lcom/google/android/gms/internal/jm;->wj:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/jn;->a(Lcom/google/android/gms/internal/jm;Landroid/os/Parcel;I)V

    return-void
.end method
