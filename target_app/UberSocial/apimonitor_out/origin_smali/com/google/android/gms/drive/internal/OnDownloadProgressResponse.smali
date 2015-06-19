.class public Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field final b:J

.field final c:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/drive/internal/b;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->a:I

    iput-wide p2, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->b:J

    iput-wide p4, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->c:J

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->b:J

    return-wide v0
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->c:J

    return-wide v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/b;->a(Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;Landroid/os/Parcel;I)V

    return-void
.end method
