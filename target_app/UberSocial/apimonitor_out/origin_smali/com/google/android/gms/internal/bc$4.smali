.class Lcom/google/android/gms/internal/bc$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/bc;->onPresentScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/bc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bc;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/bc$4;->a:Lcom/google/android/gms/internal/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bc$4;->a:Lcom/google/android/gms/internal/bc;

    invoke-static {v0}, Lcom/google/android/gms/internal/bc;->a(Lcom/google/android/gms/internal/bc;)Lcom/google/android/gms/internal/ay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ay;->d()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "Could not call onAdOpened."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method
