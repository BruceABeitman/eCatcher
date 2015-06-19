.class public final Lcom/google/android/gms/ads/AdActivity;
.super Landroid/app/Activity;


# static fields
.field public static final CLASS_NAME:Ljava/lang/String; = "com.google.android.gms.ads.AdActivity"

.field public static final SIMPLE_CLASS_NAME:Ljava/lang/String; = "AdActivity"


# instance fields
.field private kp:Lcom/google/android/gms/internal/co;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private N()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kp:Lcom/google/android/gms/internal/co;

    if-eqz v0, :cond_9

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kp:Lcom/google/android/gms/internal/co;

    invoke-interface {v0}, Lcom/google/android/gms/internal/co;->N()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "Could not forward setContentViewSet to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/cn;->a(Landroid/app/Activity;)Lcom/google/android/gms/internal/co;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kp:Lcom/google/android/gms/internal/co;

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kp:Lcom/google/android/gms/internal/co;

    if-nez v0, :cond_16

    const-string v0, "Could not create ad overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    :goto_15
    return-void

    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kp:Lcom/google/android/gms/internal/co;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/co;->onCreate(Landroid/os/Bundle;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1c

    goto :goto_15

    :catch_1c
    move-exception v0

    const-string v1, "Could not forward onCreate to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    goto :goto_15
.end method

.method protected onDestroy()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kp:Lcom/google/android/gms/internal/co;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kp:Lcom/google/android/gms/internal/co;

    invoke-interface {v0}, Lcom/google/android/gms/internal/co;->onDestroy()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_d

    :cond_9
    :goto_9
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :catch_d
    move-exception v0

    const-string v1, "Could not forward onDestroy to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method protected onPause()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kp:Lcom/google/android/gms/internal/co;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kp:Lcom/google/android/gms/internal/co;

    invoke-interface {v0}, Lcom/google/android/gms/internal/co;->onPause()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_d

    :cond_9
    :goto_9
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void

    :catch_d
    move-exception v0

    const-string v1, "Could not forward onPause to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    goto :goto_9
.end method

.method protected onRestart()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kp:Lcom/google/android/gms/internal/co;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kp:Lcom/google/android/gms/internal/co;

    invoke-interface {v0}, Lcom/google/android/gms/internal/co;->onRestart()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    const-string v1, "Could not forward onRestart to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    goto :goto_c
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kp:Lcom/google/android/gms/internal/co;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kp:Lcom/google/android/gms/internal/co;

    invoke-interface {v0}, Lcom/google/android/gms/internal/co;->onResume()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    const-string v1, "Could not forward onResume to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    goto :goto_c
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kp:Lcom/google/android/gms/internal/co;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kp:Lcom/google/android/gms/internal/co;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/co;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_d

    :cond_9
    :goto_9
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    :catch_d
    move-exception v0

    const-string v1, "Could not forward onSaveInstanceState to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    goto :goto_9
.end method

.method protected onStart()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kp:Lcom/google/android/gms/internal/co;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kp:Lcom/google/android/gms/internal/co;

    invoke-interface {v0}, Lcom/google/android/gms/internal/co;->onStart()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    const-string v1, "Could not forward onStart to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    goto :goto_c
.end method

.method protected onStop()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kp:Lcom/google/android/gms/internal/co;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kp:Lcom/google/android/gms/internal/co;

    invoke-interface {v0}, Lcom/google/android/gms/internal/co;->onStop()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_d

    :cond_9
    :goto_9
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void

    :catch_d
    move-exception v0

    const-string v1, "Could not forward onStop to ad overlay:"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    goto :goto_9
.end method

.method public setContentView(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdActivity;->N()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdActivity;->N()V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdActivity;->N()V

    return-void
.end method
