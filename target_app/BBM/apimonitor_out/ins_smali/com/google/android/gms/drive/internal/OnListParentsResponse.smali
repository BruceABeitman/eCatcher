.class public Lcom/google/android/gms/drive/internal/OnListParentsResponse;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final Ee:Lcom/google/android/gms/common/data/DataHolder;
.field final wj:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/internal/ae;
invoke-direct {v0}, Lcom/google/android/gms/drive/internal/ae;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/internal/OnListParentsResponse;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILcom/google/android/gms/common/data/DataHolder;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/internal/OnListParentsResponse;->wj:I
iput-object p2, p0, Lcom/google/android/gms/drive/internal/OnListParentsResponse;->Ee:Lcom/google/android/gms/common/data/DataHolder;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public fd()Lcom/google/android/gms/common/data/DataHolder;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/internal/OnListParentsResponse;->Ee:Lcom/google/android/gms/common/data/DataHolder;
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/ae;->a(Lcom/google/android/gms/drive/internal/OnListParentsResponse;Landroid/os/Parcel;I)V
return-void
.end method