.class public abstract Lcom/google/android/gms/appstate/AppStateManager$a;
.super Lcom/google/android/gms/common/api/a$a;

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/a$a",
        "<TR;",
        "Lcom/google/android/gms/internal/dl;",
        ">;",
        "Lcom/google/android/gms/common/api/PendingResult",
        "<TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/appstate/AppStateManager;->va:Lcom/google/android/gms/common/api/Api$b;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a$a;-><init>(Lcom/google/android/gms/common/api/Api$b;)V

    return-void
.end method
