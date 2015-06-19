.class public final Lcom/google/android/gms/identity/intents/a;
.super Ljava/lang/Object;
.field static final a:Lcom/google/android/gms/common/api/c;
.field public static final b:Lcom/google/android/gms/common/api/a;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Lcom/google/android/gms/identity/intents/a$1;
invoke-direct {v0}, Lcom/google/android/gms/identity/intents/a$1;-><init>()V
sput-object v0, Lcom/google/android/gms/identity/intents/a;->a:Lcom/google/android/gms/common/api/c;
new-instance v0, Lcom/google/android/gms/common/api/a;
sget-object v1, Lcom/google/android/gms/identity/intents/a;->a:Lcom/google/android/gms/common/api/c;
const/4 v2, 0x0
new-array v2, v2, [Lcom/google/android/gms/common/api/o;
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/a;-><init>(Lcom/google/android/gms/common/api/c;[Lcom/google/android/gms/common/api/o;)V
sput-object v0, Lcom/google/android/gms/identity/intents/a;->b:Lcom/google/android/gms/common/api/a;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/identity/intents/UserAddressRequest;I)V
.registers 4
new-instance v0, Lcom/google/android/gms/identity/intents/a$2;
invoke-direct {v0, p1, p2}, Lcom/google/android/gms/identity/intents/a$2;-><init>(Lcom/google/android/gms/identity/intents/UserAddressRequest;I)V
invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
return-void
.end method