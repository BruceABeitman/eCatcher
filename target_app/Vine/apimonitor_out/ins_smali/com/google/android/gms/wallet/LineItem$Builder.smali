.class public final Lcom/google/android/gms/wallet/LineItem$Builder;
.super Ljava/lang/Object;
.field final synthetic aje:Lcom/google/android/gms/wallet/LineItem;
.method private constructor <init>(Lcom/google/android/gms/wallet/LineItem;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->aje:Lcom/google/android/gms/wallet/LineItem;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/wallet/LineItem;Lcom/google/android/gms/wallet/LineItem$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/LineItem$Builder;-><init>(Lcom/google/android/gms/wallet/LineItem;)V
return-void
.end method
.method public build()Lcom/google/android/gms/wallet/LineItem;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->aje:Lcom/google/android/gms/wallet/LineItem;
return-object v0
.end method
.method public setCurrencyCode(Ljava/lang/String;)Lcom/google/android/gms/wallet/LineItem$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->aje:Lcom/google/android/gms/wallet/LineItem;
iput-object p1, v0, Lcom/google/android/gms/wallet/LineItem;->aiI:Ljava/lang/String;
return-object p0
.end method
.method public setDescription(Ljava/lang/String;)Lcom/google/android/gms/wallet/LineItem$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->aje:Lcom/google/android/gms/wallet/LineItem;
iput-object p1, v0, Lcom/google/android/gms/wallet/LineItem;->description:Ljava/lang/String;
return-object p0
.end method
.method public setQuantity(Ljava/lang/String;)Lcom/google/android/gms/wallet/LineItem$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->aje:Lcom/google/android/gms/wallet/LineItem;
iput-object p1, v0, Lcom/google/android/gms/wallet/LineItem;->ajb:Ljava/lang/String;
return-object p0
.end method
.method public setRole(I)Lcom/google/android/gms/wallet/LineItem$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->aje:Lcom/google/android/gms/wallet/LineItem;
iput p1, v0, Lcom/google/android/gms/wallet/LineItem;->ajd:I
return-object p0
.end method
.method public setTotalPrice(Ljava/lang/String;)Lcom/google/android/gms/wallet/LineItem$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->aje:Lcom/google/android/gms/wallet/LineItem;
iput-object p1, v0, Lcom/google/android/gms/wallet/LineItem;->aiH:Ljava/lang/String;
return-object p0
.end method
.method public setUnitPrice(Ljava/lang/String;)Lcom/google/android/gms/wallet/LineItem$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->aje:Lcom/google/android/gms/wallet/LineItem;
iput-object p1, v0, Lcom/google/android/gms/wallet/LineItem;->ajc:Ljava/lang/String;
return-object p0
.end method