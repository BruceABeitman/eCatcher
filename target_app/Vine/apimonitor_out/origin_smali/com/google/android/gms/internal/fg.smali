.class public final Lcom/google/android/gms/internal/fg;
.super Ljava/lang/Object;


# static fields
.field public static final xF:Lcom/google/android/gms/common/api/Api$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$c",
            "<",
            "Lcom/google/android/gms/internal/fy;",
            ">;"
        }
    .end annotation
.end field

.field private static final xG:Lcom/google/android/gms/common/api/Api$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$b",
            "<",
            "Lcom/google/android/gms/internal/fy;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final xH:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final xI:Lcom/google/android/gms/internal/fu;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$c;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$c;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fg;->xF:Lcom/google/android/gms/common/api/Api$c;

    new-instance v0, Lcom/google/android/gms/internal/fg$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fg$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fg;->xG:Lcom/google/android/gms/common/api/Api$b;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/internal/fg;->xG:Lcom/google/android/gms/common/api/Api$b;

    sget-object v2, Lcom/google/android/gms/internal/fg;->xF:Lcom/google/android/gms/common/api/Api$c;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/common/api/Api$c;[Lcom/google/android/gms/common/api/Scope;)V

    sput-object v0, Lcom/google/android/gms/internal/fg;->xH:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/fz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fg;->xI:Lcom/google/android/gms/internal/fu;

    return-void
.end method
