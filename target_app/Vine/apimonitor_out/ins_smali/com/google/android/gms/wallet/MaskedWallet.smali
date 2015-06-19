.class public final Lcom/google/android/gms/wallet/MaskedWallet;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  aiN:Ljava/lang/String;
.field  aiO:Ljava/lang/String;
.field  aiQ:Ljava/lang/String;
.field  aiR:Lcom/google/android/gms/wallet/Address;
.field  aiS:Lcom/google/android/gms/wallet/Address;
.field  aiT:[Ljava/lang/String;
.field  aiU:Lcom/google/android/gms/identity/intents/model/UserAddress;
.field  aiV:Lcom/google/android/gms/identity/intents/model/UserAddress;
.field  aiW:[Lcom/google/android/gms/wallet/InstrumentInfo;
.field  ajA:[Lcom/google/android/gms/wallet/OfferWalletObject;
.field  ajz:[Lcom/google/android/gms/wallet/LoyaltyWalletObject;
.field private final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/wallet/k;
invoke-direct {v0}, Lcom/google/android/gms/wallet/k;-><init>()V
sput-object v0, Lcom/google/android/gms/wallet/MaskedWallet;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x2
iput v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->xJ:I
return-void
.end method
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/Address;Lcom/google/android/gms/wallet/Address;[Lcom/google/android/gms/wallet/LoyaltyWalletObject;[Lcom/google/android/gms/wallet/OfferWalletObject;Lcom/google/android/gms/identity/intents/model/UserAddress;Lcom/google/android/gms/identity/intents/model/UserAddress;[Lcom/google/android/gms/wallet/InstrumentInfo;)V
.registers 13
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/wallet/MaskedWallet;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiN:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiO:Ljava/lang/String;
iput-object p4, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiT:[Ljava/lang/String;
iput-object p5, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiQ:Ljava/lang/String;
iput-object p6, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiR:Lcom/google/android/gms/wallet/Address;
iput-object p7, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiS:Lcom/google/android/gms/wallet/Address;
iput-object p8, p0, Lcom/google/android/gms/wallet/MaskedWallet;->ajz:[Lcom/google/android/gms/wallet/LoyaltyWalletObject;
iput-object p9, p0, Lcom/google/android/gms/wallet/MaskedWallet;->ajA:[Lcom/google/android/gms/wallet/OfferWalletObject;
iput-object p10, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiU:Lcom/google/android/gms/identity/intents/model/UserAddress;
iput-object p11, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiV:Lcom/google/android/gms/identity/intents/model/UserAddress;
iput-object p12, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiW:[Lcom/google/android/gms/wallet/InstrumentInfo;
return-void
.end method
.method public static nb()Lcom/google/android/gms/wallet/MaskedWallet$Builder;
.registers 3
new-instance v0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;
new-instance v1, Lcom/google/android/gms/wallet/MaskedWallet;
invoke-direct {v1}, Lcom/google/android/gms/wallet/MaskedWallet;-><init>()V
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;-><init>(Lcom/google/android/gms/wallet/MaskedWallet;Lcom/google/android/gms/wallet/MaskedWallet$1;)V
return-object v0
.end method
.method public static newBuilderFrom(Lcom/google/android/gms/wallet/MaskedWallet;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
.registers 3
invoke-static {p0}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {}, Lcom/google/android/gms/wallet/MaskedWallet;->nb()Lcom/google/android/gms/wallet/MaskedWallet$Builder;
move-result-object v0
invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->getGoogleTransactionId()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->setGoogleTransactionId(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
move-result-object v0
invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->getMerchantTransactionId()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->setMerchantTransactionId(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
move-result-object v0
invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->getPaymentDescriptions()[Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->setPaymentDescriptions([Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
move-result-object v0
invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->getInstrumentInfos()[Lcom/google/android/gms/wallet/InstrumentInfo;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->setInstrumentInfos([Lcom/google/android/gms/wallet/InstrumentInfo;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
move-result-object v0
invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->getEmail()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->setEmail(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
move-result-object v0
invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->getLoyaltyWalletObjects()[Lcom/google/android/gms/wallet/LoyaltyWalletObject;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->setLoyaltyWalletObjects([Lcom/google/android/gms/wallet/LoyaltyWalletObject;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
move-result-object v0
invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->getOfferWalletObjects()[Lcom/google/android/gms/wallet/OfferWalletObject;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->setOfferWalletObjects([Lcom/google/android/gms/wallet/OfferWalletObject;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
move-result-object v0
invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->getBuyerBillingAddress()Lcom/google/android/gms/identity/intents/model/UserAddress;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->setBuyerBillingAddress(Lcom/google/android/gms/identity/intents/model/UserAddress;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
move-result-object v0
invoke-virtual {p0}, Lcom/google/android/gms/wallet/MaskedWallet;->getBuyerShippingAddress()Lcom/google/android/gms/identity/intents/model/UserAddress;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->setBuyerShippingAddress(Lcom/google/android/gms/identity/intents/model/UserAddress;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
move-result-object v0
return-object v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getBillingAddress()Lcom/google/android/gms/wallet/Address;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiR:Lcom/google/android/gms/wallet/Address;
return-object v0
.end method
.method public getBuyerBillingAddress()Lcom/google/android/gms/identity/intents/model/UserAddress;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiU:Lcom/google/android/gms/identity/intents/model/UserAddress;
return-object v0
.end method
.method public getBuyerShippingAddress()Lcom/google/android/gms/identity/intents/model/UserAddress;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiV:Lcom/google/android/gms/identity/intents/model/UserAddress;
return-object v0
.end method
.method public getEmail()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiQ:Ljava/lang/String;
return-object v0
.end method
.method public getGoogleTransactionId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiN:Ljava/lang/String;
return-object v0
.end method
.method public getInstrumentInfos()[Lcom/google/android/gms/wallet/InstrumentInfo;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiW:[Lcom/google/android/gms/wallet/InstrumentInfo;
return-object v0
.end method
.method public getLoyaltyWalletObjects()[Lcom/google/android/gms/wallet/LoyaltyWalletObject;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->ajz:[Lcom/google/android/gms/wallet/LoyaltyWalletObject;
return-object v0
.end method
.method public getMerchantTransactionId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiO:Ljava/lang/String;
return-object v0
.end method
.method public getOfferWalletObjects()[Lcom/google/android/gms/wallet/OfferWalletObject;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->ajA:[Lcom/google/android/gms/wallet/OfferWalletObject;
return-object v0
.end method
.method public getPaymentDescriptions()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiT:[Ljava/lang/String;
return-object v0
.end method
.method public getShippingAddress()Lcom/google/android/gms/wallet/Address;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->aiS:Lcom/google/android/gms/wallet/Address;
return-object v0
.end method
.method public getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/wallet/MaskedWallet;->xJ:I
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/k;->a(Lcom/google/android/gms/wallet/MaskedWallet;Landroid/os/Parcel;I)V
return-void
.end method