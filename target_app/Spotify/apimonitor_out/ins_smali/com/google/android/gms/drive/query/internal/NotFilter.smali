.class public Lcom/google/android/gms/drive/query/internal/NotFilter;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/drive/query/a;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final a:Lcom/google/android/gms/drive/query/internal/FilterHolder;
.field final b:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/query/internal/i;
invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/i;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/query/internal/NotFilter;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILcom/google/android/gms/drive/query/internal/FilterHolder;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/query/internal/NotFilter;->b:I
iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/NotFilter;->a:Lcom/google/android/gms/drive/query/internal/FilterHolder;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/i;->a(Lcom/google/android/gms/drive/query/internal/NotFilter;Landroid/os/Parcel;I)V
return-void
.end method