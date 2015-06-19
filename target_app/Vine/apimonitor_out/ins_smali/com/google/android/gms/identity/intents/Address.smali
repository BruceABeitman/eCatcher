.class public final Lcom/google/android/gms/identity/intents/Address;
.super Ljava/lang/Object;
.field public static final API:Lcom/google/android/gms/common/api/Api;
.field static final yE:Lcom/google/android/gms/common/api/Api$c;
.field private static final yF:Lcom/google/android/gms/common/api/Api$b;
.method static constructor <clinit>()V
.registers 4
new-instance v0, Lcom/google/android/gms/common/api/Api$c;
invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$c;-><init>()V
sput-object v0, Lcom/google/android/gms/identity/intents/Address;->yE:Lcom/google/android/gms/common/api/Api$c;
new-instance v0, Lcom/google/android/gms/identity/intents/Address$1;
invoke-direct {v0}, Lcom/google/android/gms/identity/intents/Address$1;-><init>()V
sput-object v0, Lcom/google/android/gms/identity/intents/Address;->yF:Lcom/google/android/gms/common/api/Api$b;
new-instance v0, Lcom/google/android/gms/common/api/Api;
sget-object v1, Lcom/google/android/gms/identity/intents/Address;->yF:Lcom/google/android/gms/common/api/Api$b;
sget-object v2, Lcom/google/android/gms/identity/intents/Address;->yE:Lcom/google/android/gms/common/api/Api$c;
const/4 v3, 0x0
new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;
invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/common/api/Api$c;[Lcom/google/android/gms/common/api/Scope;)V
sput-object v0, Lcom/google/android/gms/identity/intents/Address;->API:Lcom/google/android/gms/common/api/Api;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static requestUserAddress(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/identity/intents/UserAddressRequest;I)V
.registers 4
new-instance v0, Lcom/google/android/gms/identity/intents/Address$2;
invoke-direct {v0, p1, p2}, Lcom/google/android/gms/identity/intents/Address$2;-><init>(Lcom/google/android/gms/identity/intents/UserAddressRequest;I)V
invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
return-void
.end method