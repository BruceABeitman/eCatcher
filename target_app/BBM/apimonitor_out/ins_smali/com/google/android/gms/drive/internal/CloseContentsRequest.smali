.class public Lcom/google/android/gms/drive/internal/CloseContentsRequest;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final Dq:Lcom/google/android/gms/drive/Contents;
.field final Dr:Ljava/lang/Boolean;
.field final wj:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/internal/e;
invoke-direct {v0}, Lcom/google/android/gms/drive/internal/e;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/internal/CloseContentsRequest;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILcom/google/android/gms/drive/Contents;Ljava/lang/Boolean;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/internal/CloseContentsRequest;->wj:I
iput-object p2, p0, Lcom/google/android/gms/drive/internal/CloseContentsRequest;->Dq:Lcom/google/android/gms/drive/Contents;
iput-object p3, p0, Lcom/google/android/gms/drive/internal/CloseContentsRequest;->Dr:Ljava/lang/Boolean;
return-void
.end method
.method public constructor <init>(Lcom/google/android/gms/drive/Contents;Z)V
.registers 5
const/4 v0, 0x1
invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/drive/internal/CloseContentsRequest;-><init>(ILcom/google/android/gms/drive/Contents;Ljava/lang/Boolean;)V
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/e;->a(Lcom/google/android/gms/drive/internal/CloseContentsRequest;Landroid/os/Parcel;I)V
return-void
.end method