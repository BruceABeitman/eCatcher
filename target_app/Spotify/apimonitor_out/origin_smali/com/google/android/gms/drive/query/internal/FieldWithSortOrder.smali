.class public Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/drive/query/internal/c;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Z

.field final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/drive/query/internal/c;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;->CREATOR:Lcom/google/android/gms/drive/query/internal/c;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;->c:I

    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;->b:Z

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

    invoke-static {p0, p1}, Lcom/google/android/gms/drive/query/internal/c;->a(Lcom/google/android/gms/drive/query/internal/FieldWithSortOrder;Landroid/os/Parcel;)V

    return-void
.end method
