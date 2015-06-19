.class public final Lcom/google/android/gms/wallet/OfferWalletObject;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  a:Ljava/lang/String;
.field  b:Ljava/lang/String;
.field private final c:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/wallet/ab;
invoke-direct {v0}, Lcom/google/android/gms/wallet/ab;-><init>()V
sput-object v0, Lcom/google/android/gms/wallet/OfferWalletObject;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x2
iput v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->c:I
return-void
.end method
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->c:I
iput-object p2, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->b:Ljava/lang/String;
return-void
.end method
.method public a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->c:I
return v0
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->a:Ljava/lang/String;
return-object v0
.end method
.method public c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->b:Ljava/lang/String;
return-object v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/ab;->a(Lcom/google/android/gms/wallet/OfferWalletObject;Landroid/os/Parcel;I)V
return-void
.end method