.class public Lcom/google/android/gms/drive/query/SortOrder;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final a:Ljava/util/List;
.field final b:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/query/c;
invoke-direct {v0}, Lcom/google/android/gms/drive/query/c;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/query/SortOrder;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILjava/util/List;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/query/SortOrder;->b:I
iput-object p2, p0, Lcom/google/android/gms/drive/query/SortOrder;->a:Ljava/util/List;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/drive/query/c;->a(Lcom/google/android/gms/drive/query/SortOrder;Landroid/os/Parcel;)V
return-void
.end method