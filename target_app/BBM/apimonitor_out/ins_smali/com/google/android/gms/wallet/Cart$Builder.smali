.class public final Lcom/google/android/gms/wallet/Cart$Builder;
.super Ljava/lang/Object;
.field final synthetic Yi:Lcom/google/android/gms/wallet/Cart;
.method private constructor <init>(Lcom/google/android/gms/wallet/Cart;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/wallet/Cart$Builder;->Yi:Lcom/google/android/gms/wallet/Cart;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/wallet/Cart;Lcom/google/android/gms/wallet/Cart$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/Cart$Builder;-><init>(Lcom/google/android/gms/wallet/Cart;)V
return-void
.end method
.method public final addLineItem(Lcom/google/android/gms/wallet/LineItem;)Lcom/google/android/gms/wallet/Cart$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wallet/Cart$Builder;->Yi:Lcom/google/android/gms/wallet/Cart;
iget-object v0, v0, Lcom/google/android/gms/wallet/Cart;->Yh:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public final build()Lcom/google/android/gms/wallet/Cart;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/Cart$Builder;->Yi:Lcom/google/android/gms/wallet/Cart;
return-object v0
.end method
.method public final setCurrencyCode(Ljava/lang/String;)Lcom/google/android/gms/wallet/Cart$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wallet/Cart$Builder;->Yi:Lcom/google/android/gms/wallet/Cart;
iput-object p1, v0, Lcom/google/android/gms/wallet/Cart;->Yg:Ljava/lang/String;
return-object p0
.end method
.method public final setLineItems(Ljava/util/List;)Lcom/google/android/gms/wallet/Cart$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wallet/Cart$Builder;->Yi:Lcom/google/android/gms/wallet/Cart;
iget-object v0, v0, Lcom/google/android/gms/wallet/Cart;->Yh:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
iget-object v0, p0, Lcom/google/android/gms/wallet/Cart$Builder;->Yi:Lcom/google/android/gms/wallet/Cart;
iget-object v0, v0, Lcom/google/android/gms/wallet/Cart;->Yh:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
return-object p0
.end method
.method public final setTotalPrice(Ljava/lang/String;)Lcom/google/android/gms/wallet/Cart$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wallet/Cart$Builder;->Yi:Lcom/google/android/gms/wallet/Cart;
iput-object p1, v0, Lcom/google/android/gms/wallet/Cart;->Yf:Ljava/lang/String;
return-object p0
.end method