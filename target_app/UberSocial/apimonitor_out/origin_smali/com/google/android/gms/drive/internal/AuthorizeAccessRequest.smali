.class public Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field final b:J

.field final c:Lcom/google/android/gms/drive/DriveId;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/drive/internal/o;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/o;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJLcom/google/android/gms/drive/DriveId;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;->a:I

    iput-wide p2, p0, Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;->b:J

    iput-object p4, p0, Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;->c:Lcom/google/android/gms/drive/DriveId;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/o;->a(Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;Landroid/os/Parcel;I)V

    return-void
.end method
