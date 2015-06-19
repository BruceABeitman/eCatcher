.class public final Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final a:I
.field  b:Ljava/lang/String;
.field  c:I
.field  d:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/wallet/m;
invoke-direct {v0}, Lcom/google/android/gms/wallet/m;-><init>()V
sput-object v0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->a:I
return-void
.end method
.method constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->a:I
iput-object p2, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->b:Ljava/lang/String;
iput p3, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->c:I
iput-object p4, p0, Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;->d:Ljava/lang/String;
return-void
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/wallet/m;->a(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;Landroid/os/Parcel;)V
return-void
.end method