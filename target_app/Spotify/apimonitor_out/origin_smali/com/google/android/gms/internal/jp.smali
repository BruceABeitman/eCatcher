.class public final Lcom/google/android/gms/internal/jp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/jp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:D

.field d:Ljava/lang/String;

.field e:J

.field f:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/kq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/jp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/jp;->g:I

    iput v1, p0, Lcom/google/android/gms/internal/jp;->f:I

    iput v1, p0, Lcom/google/android/gms/internal/jp;->a:I

    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/android/gms/internal/jp;->c:D

    return-void
.end method

.method constructor <init>(IILjava/lang/String;DLjava/lang/String;JI)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/jp;->g:I

    iput p2, p0, Lcom/google/android/gms/internal/jp;->a:I

    iput-object p3, p0, Lcom/google/android/gms/internal/jp;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/jp;->c:D

    iput-object p6, p0, Lcom/google/android/gms/internal/jp;->d:Ljava/lang/String;

    iput-wide p7, p0, Lcom/google/android/gms/internal/jp;->e:J

    iput p9, p0, Lcom/google/android/gms/internal/jp;->f:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/jp;->g:I

    return v0
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/kq;->a(Lcom/google/android/gms/internal/jp;Landroid/os/Parcel;)V

    return-void
.end method
