.class final Lcom/google/android/gms/wearable/Wearable$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/Wearable;
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
        "Lcom/google/android/gms/wearable/internal/au;",
        "Lcom/google/android/gms/wearable/Wearable$WearableOptions;",
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

    check-cast v4, Lcom/google/android/gms/wearable/Wearable$WearableOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/wearable/Wearable$1;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gz;Lcom/google/android/gms/wearable/Wearable$WearableOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/wearable/internal/au;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gz;Lcom/google/android/gms/wearable/Wearable$WearableOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/wearable/internal/au;
    .registers 10

    if-eqz p4, :cond_8

    :goto_2
    new-instance v0, Lcom/google/android/gms/wearable/internal/au;

    invoke-direct {v0, p1, p2, p5, p6}, Lcom/google/android/gms/wearable/internal/au;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-object v0

    :cond_8
    new-instance v0, Lcom/google/android/gms/wearable/Wearable$WearableOptions;

    new-instance v1, Lcom/google/android/gms/wearable/Wearable$WearableOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/wearable/Wearable$WearableOptions$Builder;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wearable/Wearable$WearableOptions;-><init>(Lcom/google/android/gms/wearable/Wearable$WearableOptions$Builder;Lcom/google/android/gms/wearable/Wearable$1;)V

    goto :goto_2
.end method

.method public getPriority()I
    .registers 2

    const v0, 0x7fffffff

    return v0
.end method
