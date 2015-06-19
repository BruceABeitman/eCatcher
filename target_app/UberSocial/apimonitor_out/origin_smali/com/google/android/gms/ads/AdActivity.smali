.class public final Lcom/google/android/gms/ads/AdActivity;
.super Landroid/app/Activity;


# static fields
.field public static final a:Ljava/lang/String; = "com.google.android.gms.ads.AdActivity"

.field public static final b:Ljava/lang/String; = "AdActivity"


# instance fields
.field private c:Lcom/google/android/gms/internal/bt;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/br;->a(Landroid/app/Activity;)Lcom/google/android/gms/internal/bt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->c:Lcom/google/android/gms/internal/bt;

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->c:Lcom/google/android/gms/internal/bt;

    if-nez v0, :cond_16

    const-string v0, "Could not create ad overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    :goto_15
    return-void

    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->c:Lcom/google/android/gms/internal/bt;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/bt;->a(Landroid/os/Bundle;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1c

    goto :goto_15

    :catch_1c
    move-exception v0

    const-string v1, "Could not forward onCreate to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    goto :goto_15
.end method

.method protected onDestroy()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->c:Lcom/google/android/gms/internal/bt;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->c:Lcom/google/android/gms/internal/bt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bt;->i()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_d

    :cond_9
    :goto_9
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :catch_d
    move-exception v0

    const-string v1, "Could not forward onDestroy to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method protected onPause()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->c:Lcom/google/android/gms/internal/bt;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->c:Lcom/google/android/gms/internal/bt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bt;->g()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_d

    :cond_9
    :goto_9
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void

    :catch_d
    move-exception v0

    const-string v1, "Could not forward onPause to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    goto :goto_9
.end method

.method protected onRestart()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->c:Lcom/google/android/gms/internal/bt;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->c:Lcom/google/android/gms/internal/bt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bt;->d()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    const-string v1, "Could not forward onRestart to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    goto :goto_c
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->c:Lcom/google/android/gms/internal/bt;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->c:Lcom/google/android/gms/internal/bt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bt;->f()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    const-string v1, "Could not forward onResume to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    goto :goto_c
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->c:Lcom/google/android/gms/internal/bt;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->c:Lcom/google/android/gms/internal/bt;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/bt;->b(Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_d

    :cond_9
    :goto_9
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    :catch_d
    move-exception v0

    const-string v1, "Could not forward onSaveInstanceState to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    goto :goto_9
.end method

.method protected onStart()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->c:Lcom/google/android/gms/internal/bt;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->c:Lcom/google/android/gms/internal/bt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bt;->e()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    const-string v1, "Could not forward onStart to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    goto :goto_c
.end method

.method protected onStop()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->c:Lcom/google/android/gms/internal/bt;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->c:Lcom/google/android/gms/internal/bt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bt;->h()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_d

    :cond_9
    :goto_9
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void

    :catch_d
    move-exception v0

    const-string v1, "Could not forward onStop to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    goto :goto_9
.end method
