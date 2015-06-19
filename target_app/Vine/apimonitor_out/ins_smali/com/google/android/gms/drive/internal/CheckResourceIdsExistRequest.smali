.class public Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private final Iq:Ljava/util/List;
.field private final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/internal/d;
invoke-direct {v0}, Lcom/google/android/gms/drive/internal/d;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILjava/util/List;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;->Iq:Ljava/util/List;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;->xJ:I
return v0
.end method
.method public gj()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;->Iq:Ljava/util/List;
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/d;->a(Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;Landroid/os/Parcel;I)V
return-void
.end method