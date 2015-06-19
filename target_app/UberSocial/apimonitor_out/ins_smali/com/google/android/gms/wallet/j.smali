.class public final Lcom/google/android/gms/wallet/j;
.super Ljava/lang/Object;
.field static final a:Lcom/google/android/gms/common/api/c;
.field public static final b:Lcom/google/android/gms/common/api/a;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Lcom/google/android/gms/wallet/j$1;
invoke-direct {v0}, Lcom/google/android/gms/wallet/j$1;-><init>()V
sput-object v0, Lcom/google/android/gms/wallet/j;->a:Lcom/google/android/gms/common/api/c;
new-instance v0, Lcom/google/android/gms/common/api/a;
sget-object v1, Lcom/google/android/gms/wallet/j;->a:Lcom/google/android/gms/common/api/c;
const/4 v2, 0x0
new-array v2, v2, [Lcom/google/android/gms/common/api/o;
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/a;-><init>(Lcom/google/android/gms/common/api/c;[Lcom/google/android/gms/common/api/o;)V
sput-object v0, Lcom/google/android/gms/wallet/j;->b:Lcom/google/android/gms/common/api/a;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Lcom/google/android/gms/common/api/e;I)V
.registers 3
new-instance v0, Lcom/google/android/gms/wallet/j$2;
invoke-direct {v0, p1}, Lcom/google/android/gms/wallet/j$2;-><init>(I)V
invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
return-void
.end method
.method public static a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/wallet/FullWalletRequest;I)V
.registers 4
new-instance v0, Lcom/google/android/gms/wallet/j$4;
invoke-direct {v0, p1, p2}, Lcom/google/android/gms/wallet/j$4;-><init>(Lcom/google/android/gms/wallet/FullWalletRequest;I)V
invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
return-void
.end method
.method public static a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V
.registers 4
new-instance v0, Lcom/google/android/gms/wallet/j$3;
invoke-direct {v0, p1, p2}, Lcom/google/android/gms/wallet/j$3;-><init>(Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V
invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
return-void
.end method
.method public static a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
.registers 3
new-instance v0, Lcom/google/android/gms/wallet/j$6;
invoke-direct {v0, p1}, Lcom/google/android/gms/wallet/j$6;-><init>(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
return-void
.end method
.method public static a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;Ljava/lang/String;I)V
.registers 5
new-instance v0, Lcom/google/android/gms/wallet/j$5;
invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/wallet/j$5;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
return-void
.end method