.class public final Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;
.super Ljava/lang/Object;
.field final synthetic akA:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
.method private constructor <init>(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;->akA:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;-><init>(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;)V
return-void
.end method
.method public build()Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;->akA:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
return-object v0
.end method
.method public setEnvironment(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;->akA:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
invoke-static {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->a(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;I)I
return-object p0
.end method
.method public setFragmentStyle(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;->akA:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
new-instance v1, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
invoke-direct {v1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;-><init>()V
invoke-virtual {v1, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->setStyleResourceId(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
move-result-object v1
invoke-static {v0, v1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->a(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
return-object p0
.end method
.method public setFragmentStyle(Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;->akA:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
invoke-static {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->a(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
return-object p0
.end method
.method public setMode(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;->akA:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
invoke-static {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->c(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;I)I
return-object p0
.end method
.method public setTheme(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;->akA:Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
invoke-static {v0, p1}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->b(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;I)I
return-object p0
.end method