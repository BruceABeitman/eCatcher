.class public Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final Jt:J
.field final Ju:J
.field final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/internal/ah;
invoke-direct {v0}, Lcom/google/android/gms/drive/internal/ah;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(IJJ)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->xJ:I
iput-wide p2, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->Jt:J
iput-wide p4, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->Ju:J
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public gp()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->Jt:J
return-wide v0
.end method
.method public gq()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->Ju:J
return-wide v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/ah;->a(Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;Landroid/os/Parcel;I)V
return-void
.end method