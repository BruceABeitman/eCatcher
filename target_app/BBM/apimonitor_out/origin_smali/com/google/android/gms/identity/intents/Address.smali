.class public final Lcom/google/android/gms/identity/intents/Address;
.super Ljava/lang/Object;


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;

.field static final va:Lcom/google/android/gms/common/api/Api$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$b",
            "<",
            "Lcom/google/android/gms/internal/hc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/identity/intents/Address$1;

    invoke-direct {v0}, Lcom/google/android/gms/identity/intents/Address$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/identity/intents/Address;->va:Lcom/google/android/gms/common/api/Api$b;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/identity/intents/Address;->va:Lcom/google/android/gms/common/api/Api$b;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;[Lcom/google/android/gms/common/api/Scope;)V

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

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    return-void
.end method
