.class public Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/drive/query/a;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field final b:I

.field private final c:Lcom/google/android/gms/drive/metadata/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/drive/query/internal/b;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;->b:I

    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;->a:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    invoke-static {p2}, Lcom/google/android/gms/drive/query/internal/d;->a(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)Lcom/google/android/gms/drive/metadata/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;->c:Lcom/google/android/gms/drive/metadata/b;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/metadata/b;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->a(Lcom/google/android/gms/drive/metadata/b;Ljava/lang/Object;)Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;-><init>(ILcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/b;->a(Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;Landroid/os/Parcel;I)V

    return-void
.end method
