.class public final Lcom/google/android/gms/wallet/Wallet$WalletOptions;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;
.field public final environment:I
.field public final theme:I
.method private constructor <init>()V
.registers 2
new-instance v0, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;
invoke-direct {v0}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;-><init>()V
invoke-direct {p0, v0}, Lcom/google/android/gms/wallet/Wallet$WalletOptions;-><init>(Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;)V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/wallet/Wallet$1;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/wallet/Wallet$WalletOptions;-><init>()V
return-void
.end method
.method private constructor <init>(Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->a(Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->environment:I
invoke-static {p1}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->b(Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions;->theme:I
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;Lcom/google/android/gms/wallet/Wallet$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/Wallet$WalletOptions;-><init>(Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;)V
return-void
.end method