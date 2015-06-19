.class public final Lcom/google/android/gms/wallet/Wallet;
.super Ljava/lang/Object;
.field public static final API:Lcom/google/android/gms/common/api/Api;
.field static final va:Lcom/google/android/gms/common/api/Api$b;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Lcom/google/android/gms/wallet/Wallet$1;
invoke-direct {v0}, Lcom/google/android/gms/wallet/Wallet$1;-><init>()V
sput-object v0, Lcom/google/android/gms/wallet/Wallet;->va:Lcom/google/android/gms/common/api/Api$b;
new-instance v0, Lcom/google/android/gms/common/api/Api;
sget-object v1, Lcom/google/android/gms/wallet/Wallet;->va:Lcom/google/android/gms/common/api/Api$b;
const/4 v2, 0x0
new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;[Lcom/google/android/gms/common/api/Scope;)V
sput-object v0, Lcom/google/android/gms/wallet/Wallet;->API:Lcom/google/android/gms/common/api/Api;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static changeMaskedWallet(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;I)V
.registers 5
new-instance v0, Lcom/google/android/gms/wallet/Wallet$5;
invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/wallet/Wallet$5;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
return-void
.end method
.method public static checkForPreAuthorization(Lcom/google/android/gms/common/api/GoogleApiClient;I)V
.registers 3
new-instance v0, Lcom/google/android/gms/wallet/Wallet$2;
invoke-direct {v0, p1}, Lcom/google/android/gms/wallet/Wallet$2;-><init>(I)V
invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
return-void
.end method
.method public static loadFullWallet(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/FullWalletRequest;I)V
.registers 4
new-instance v0, Lcom/google/android/gms/wallet/Wallet$4;
invoke-direct {v0, p1, p2}, Lcom/google/android/gms/wallet/Wallet$4;-><init>(Lcom/google/android/gms/wallet/FullWalletRequest;I)V
invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
return-void
.end method
.method public static loadMaskedWallet(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V
.registers 4
new-instance v0, Lcom/google/android/gms/wallet/Wallet$3;
invoke-direct {v0, p1, p2}, Lcom/google/android/gms/wallet/Wallet$3;-><init>(Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V
invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
return-void
.end method
.method public static notifyTransactionStatus(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
.registers 3
new-instance v0, Lcom/google/android/gms/wallet/Wallet$6;
invoke-direct {v0, p1}, Lcom/google/android/gms/wallet/Wallet$6;-><init>(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
return-void
.end method