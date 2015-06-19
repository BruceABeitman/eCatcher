.class public final Lcom/google/android/gms/wallet/d;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  aiL:Lcom/google/android/gms/wallet/LoyaltyWalletObject;
.field  aiM:Lcom/google/android/gms/wallet/OfferWalletObject;
.field private final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/wallet/e;
invoke-direct {v0}, Lcom/google/android/gms/wallet/e;-><init>()V
sput-object v0, Lcom/google/android/gms/wallet/d;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x2
iput v0, p0, Lcom/google/android/gms/wallet/d;->xJ:I
return-void
.end method
.method constructor <init>(ILcom/google/android/gms/wallet/LoyaltyWalletObject;Lcom/google/android/gms/wallet/OfferWalletObject;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/wallet/d;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/wallet/d;->aiL:Lcom/google/android/gms/wallet/LoyaltyWalletObject;
iput-object p3, p0, Lcom/google/android/gms/wallet/d;->aiM:Lcom/google/android/gms/wallet/OfferWalletObject;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/wallet/d;->xJ:I
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/e;->a(Lcom/google/android/gms/wallet/d;Landroid/os/Parcel;I)V
return-void
.end method