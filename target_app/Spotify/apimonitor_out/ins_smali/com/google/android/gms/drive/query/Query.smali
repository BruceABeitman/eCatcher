.class public Lcom/google/android/gms/drive/query/Query;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final a:Lcom/google/android/gms/drive/query/internal/LogicalFilter;
.field final b:Ljava/lang/String;
.field final c:Lcom/google/android/gms/drive/query/SortOrder;
.field final d:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/query/b;
invoke-direct {v0}, Lcom/google/android/gms/drive/query/b;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/query/Query;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILcom/google/android/gms/drive/query/internal/LogicalFilter;Ljava/lang/String;Lcom/google/android/gms/drive/query/SortOrder;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/query/Query;->d:I
iput-object p2, p0, Lcom/google/android/gms/drive/query/Query;->a:Lcom/google/android/gms/drive/query/internal/LogicalFilter;
iput-object p3, p0, Lcom/google/android/gms/drive/query/Query;->b:Ljava/lang/String;
iput-object p4, p0, Lcom/google/android/gms/drive/query/Query;->c:Lcom/google/android/gms/drive/query/SortOrder;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/b;->a(Lcom/google/android/gms/drive/query/Query;Landroid/os/Parcel;I)V
return-void
.end method