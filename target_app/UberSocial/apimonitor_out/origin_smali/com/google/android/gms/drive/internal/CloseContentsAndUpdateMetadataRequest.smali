.class public Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field final b:Lcom/google/android/gms/drive/DriveId;

.field final c:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field final d:Lcom/google/android/gms/drive/Contents;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/drive/internal/q;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/q;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/Contents;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->a:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->b:Lcom/google/android/gms/drive/DriveId;

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->c:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    iput-object p4, p0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->d:Lcom/google/android/gms/drive/Contents;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/Contents;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;-><init>(ILcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/Contents;)V

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/q;->a(Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;Landroid/os/Parcel;I)V

    return-void
.end method
