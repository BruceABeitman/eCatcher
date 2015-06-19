.class public final Lcom/google/android/gms/wallet/MaskedWallet$Builder;
.super Ljava/lang/Object;
.field final synthetic ajB:Lcom/google/android/gms/wallet/MaskedWallet;
.method private constructor <init>(Lcom/google/android/gms/wallet/MaskedWallet;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajB:Lcom/google/android/gms/wallet/MaskedWallet;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/wallet/MaskedWallet;Lcom/google/android/gms/wallet/MaskedWallet$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/MaskedWallet$Builder;-><init>(Lcom/google/android/gms/wallet/MaskedWallet;)V
return-void
.end method
.method public build()Lcom/google/android/gms/wallet/MaskedWallet;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajB:Lcom/google/android/gms/wallet/MaskedWallet;
return-object v0
.end method
.method public setBillingAddress(Lcom/google/android/gms/wallet/Address;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajB:Lcom/google/android/gms/wallet/MaskedWallet;
iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->aiR:Lcom/google/android/gms/wallet/Address;
return-object p0
.end method
.method public setBuyerBillingAddress(Lcom/google/android/gms/identity/intents/model/UserAddress;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajB:Lcom/google/android/gms/wallet/MaskedWallet;
iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->aiU:Lcom/google/android/gms/identity/intents/model/UserAddress;
return-object p0
.end method
.method public setBuyerShippingAddress(Lcom/google/android/gms/identity/intents/model/UserAddress;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajB:Lcom/google/android/gms/wallet/MaskedWallet;
iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->aiV:Lcom/google/android/gms/identity/intents/model/UserAddress;
return-object p0
.end method
.method public setEmail(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajB:Lcom/google/android/gms/wallet/MaskedWallet;
iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->aiQ:Ljava/lang/String;
return-object p0
.end method
.method public setGoogleTransactionId(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajB:Lcom/google/android/gms/wallet/MaskedWallet;
iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->aiN:Ljava/lang/String;
return-object p0
.end method
.method public setInstrumentInfos([Lcom/google/android/gms/wallet/InstrumentInfo;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajB:Lcom/google/android/gms/wallet/MaskedWallet;
iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->aiW:[Lcom/google/android/gms/wallet/InstrumentInfo;
return-object p0
.end method
.method public setLoyaltyWalletObjects([Lcom/google/android/gms/wallet/LoyaltyWalletObject;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajB:Lcom/google/android/gms/wallet/MaskedWallet;
iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->ajz:[Lcom/google/android/gms/wallet/LoyaltyWalletObject;
return-object p0
.end method
.method public setMerchantTransactionId(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajB:Lcom/google/android/gms/wallet/MaskedWallet;
iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->aiO:Ljava/lang/String;
return-object p0
.end method
.method public setOfferWalletObjects([Lcom/google/android/gms/wallet/OfferWalletObject;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajB:Lcom/google/android/gms/wallet/MaskedWallet;
iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->ajA:[Lcom/google/android/gms/wallet/OfferWalletObject;
return-object p0
.end method
.method public setPaymentDescriptions([Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajB:Lcom/google/android/gms/wallet/MaskedWallet;
iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->aiT:[Ljava/lang/String;
return-object p0
.end method
.method public setShippingAddress(Lcom/google/android/gms/wallet/Address;)Lcom/google/android/gms/wallet/MaskedWallet$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wallet/MaskedWallet$Builder;->ajB:Lcom/google/android/gms/wallet/MaskedWallet;
iput-object p1, v0, Lcom/google/android/gms/wallet/MaskedWallet;->aiS:Lcom/google/android/gms/wallet/Address;
return-object p0
.end method