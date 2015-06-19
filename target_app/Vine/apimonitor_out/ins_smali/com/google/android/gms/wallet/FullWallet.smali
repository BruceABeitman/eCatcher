.class public final Lcom/google/android/gms/wallet/FullWallet;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  aiN:Ljava/lang/String;
.field  aiO:Ljava/lang/String;
.field  aiP:Lcom/google/android/gms/wallet/ProxyCard;
.field  aiQ:Ljava/lang/String;
.field  aiR:Lcom/google/android/gms/wallet/Address;
.field  aiS:Lcom/google/android/gms/wallet/Address;
.field  aiT:[Ljava/lang/String;
.field  aiU:Lcom/google/android/gms/identity/intents/model/UserAddress;
.field  aiV:Lcom/google/android/gms/identity/intents/model/UserAddress;
.field  aiW:[Lcom/google/android/gms/wallet/InstrumentInfo;
.field private final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/wallet/f;
invoke-direct {v0}, Lcom/google/android/gms/wallet/f;-><init>()V
sput-object v0, Lcom/google/android/gms/wallet/FullWallet;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/wallet/FullWallet;->xJ:I
return-void
.end method
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/ProxyCard;Ljava/lang/String;Lcom/google/android/gms/wallet/Address;Lcom/google/android/gms/wallet/Address;[Ljava/lang/String;Lcom/google/android/gms/identity/intents/model/UserAddress;Lcom/google/android/gms/identity/intents/model/UserAddress;[Lcom/google/android/gms/wallet/InstrumentInfo;)V
.registers 12
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/wallet/FullWallet;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/wallet/FullWallet;->aiN:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/wallet/FullWallet;->aiO:Ljava/lang/String;
iput-object p4, p0, Lcom/google/android/gms/wallet/FullWallet;->aiP:Lcom/google/android/gms/wallet/ProxyCard;
iput-object p5, p0, Lcom/google/android/gms/wallet/FullWallet;->aiQ:Ljava/lang/String;
iput-object p6, p0, Lcom/google/android/gms/wallet/FullWallet;->aiR:Lcom/google/android/gms/wallet/Address;
iput-object p7, p0, Lcom/google/android/gms/wallet/FullWallet;->aiS:Lcom/google/android/gms/wallet/Address;
iput-object p8, p0, Lcom/google/android/gms/wallet/FullWallet;->aiT:[Ljava/lang/String;
iput-object p9, p0, Lcom/google/android/gms/wallet/FullWallet;->aiU:Lcom/google/android/gms/identity/intents/model/UserAddress;
iput-object p10, p0, Lcom/google/android/gms/wallet/FullWallet;->aiV:Lcom/google/android/gms/identity/intents/model/UserAddress;
iput-object p11, p0, Lcom/google/android/gms/wallet/FullWallet;->aiW:[Lcom/google/android/gms/wallet/InstrumentInfo;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getBillingAddress()Lcom/google/android/gms/wallet/Address;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->aiR:Lcom/google/android/gms/wallet/Address;
return-object v0
.end method
.method public getBuyerBillingAddress()Lcom/google/android/gms/identity/intents/model/UserAddress;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->aiU:Lcom/google/android/gms/identity/intents/model/UserAddress;
return-object v0
.end method
.method public getBuyerShippingAddress()Lcom/google/android/gms/identity/intents/model/UserAddress;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->aiV:Lcom/google/android/gms/identity/intents/model/UserAddress;
return-object v0
.end method
.method public getEmail()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->aiQ:Ljava/lang/String;
return-object v0
.end method
.method public getGoogleTransactionId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->aiN:Ljava/lang/String;
return-object v0
.end method
.method public getInstrumentInfos()[Lcom/google/android/gms/wallet/InstrumentInfo;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->aiW:[Lcom/google/android/gms/wallet/InstrumentInfo;
return-object v0
.end method
.method public getMerchantTransactionId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->aiO:Ljava/lang/String;
return-object v0
.end method
.method public getPaymentDescriptions()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->aiT:[Ljava/lang/String;
return-object v0
.end method
.method public getProxyCard()Lcom/google/android/gms/wallet/ProxyCard;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->aiP:Lcom/google/android/gms/wallet/ProxyCard;
return-object v0
.end method
.method public getShippingAddress()Lcom/google/android/gms/wallet/Address;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/FullWallet;->aiS:Lcom/google/android/gms/wallet/Address;
return-object v0
.end method
.method public getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/wallet/FullWallet;->xJ:I
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/f;->a(Lcom/google/android/gms/wallet/FullWallet;Landroid/os/Parcel;I)V
return-void
.end method