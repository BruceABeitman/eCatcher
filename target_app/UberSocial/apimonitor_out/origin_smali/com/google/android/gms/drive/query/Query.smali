.class public Lcom/google/android/gms/drive/query/Query;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

.field b:Ljava/lang/String;

.field final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/drive/query/e;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/Query;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/query/internal/LogicalFilter;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/query/Query;->c:I

    iput-object p2, p0, Lcom/google/android/gms/drive/query/Query;->a:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    iput-object p3, p0, Lcom/google/android/gms/drive/query/Query;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/drive/query/internal/LogicalFilter;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/drive/query/Query;-><init>(ILcom/google/android/gms/drive/query/internal/LogicalFilter;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/drive/query/a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/drive/query/Query;->a:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/drive/query/Query;->b:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/e;->a(Lcom/google/android/gms/drive/query/Query;Landroid/os/Parcel;I)V

    return-void
.end method
