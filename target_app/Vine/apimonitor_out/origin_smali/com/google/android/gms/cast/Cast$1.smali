.class final Lcom/google/android/gms/cast/Cast$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/Cast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/Api$b",
        "<",
        "Lcom/google/android/gms/internal/gi;",
        "Lcom/google/android/gms/cast/Cast$CastOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gz;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;
    .registers 14

    move-object v4, p4

    check-cast v4, Lcom/google/android/gms/cast/Cast$CastOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/cast/Cast$1;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gz;Lcom/google/android/gms/cast/Cast$CastOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/gi;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gz;Lcom/google/android/gms/cast/Cast$CastOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/gi;
    .registers 16

    const-string v0, "Setting the API options is required."

    invoke-static {p4, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/gi;

    iget-object v3, p4, Lcom/google/android/gms/cast/Cast$CastOptions;->zX:Lcom/google/android/gms/cast/CastDevice;

    invoke-static {p4}, Lcom/google/android/gms/cast/Cast$CastOptions;->a(Lcom/google/android/gms/cast/Cast$CastOptions;)I

    move-result v1

    int-to-long v4, v1

    iget-object v6, p4, Lcom/google/android/gms/cast/Cast$CastOptions;->zY:Lcom/google/android/gms/cast/Cast$Listener;

    move-object v1, p1

    move-object v2, p2

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/gi;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/cast/CastDevice;JLcom/google/android/gms/cast/Cast$Listener;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-object v0
.end method

.method public getPriority()I
    .registers 2

    const v0, 0x7fffffff

    return v0
.end method
