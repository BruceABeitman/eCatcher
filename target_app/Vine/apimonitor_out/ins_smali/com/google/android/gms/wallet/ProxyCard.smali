.class public final Lcom/google/android/gms/wallet/ProxyCard;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  ajS:Ljava/lang/String;
.field  ajT:Ljava/lang/String;
.field  ajU:I
.field  ajV:I
.field private final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/wallet/o;
invoke-direct {v0}, Lcom/google/android/gms/wallet/o;-><init>()V
sput-object v0, Lcom/google/android/gms/wallet/ProxyCard;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/wallet/ProxyCard;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/wallet/ProxyCard;->ajS:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/wallet/ProxyCard;->ajT:Ljava/lang/String;
iput p4, p0, Lcom/google/android/gms/wallet/ProxyCard;->ajU:I
iput p5, p0, Lcom/google/android/gms/wallet/ProxyCard;->ajV:I
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getCvn()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/ProxyCard;->ajT:Ljava/lang/String;
return-object v0
.end method
.method public getExpirationMonth()I
.registers 2
iget v0, p0, Lcom/google/android/gms/wallet/ProxyCard;->ajU:I
return v0
.end method
.method public getExpirationYear()I
.registers 2
iget v0, p0, Lcom/google/android/gms/wallet/ProxyCard;->ajV:I
return v0
.end method
.method public getPan()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/ProxyCard;->ajS:Ljava/lang/String;
return-object v0
.end method
.method public getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/wallet/ProxyCard;->xJ:I
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/o;->a(Lcom/google/android/gms/wallet/ProxyCard;Landroid/os/Parcel;I)V
return-void
.end method