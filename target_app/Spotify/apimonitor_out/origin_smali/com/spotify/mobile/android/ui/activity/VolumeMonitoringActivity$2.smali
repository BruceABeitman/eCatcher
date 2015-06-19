.class final Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const/high16 v2, 0x3d00

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;

    iget-object v0, v0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->o:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->l()Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->a(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6a

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->a(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;)I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_59

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->c(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;)F

    move-result v1

    add-float/2addr v1, v2

    invoke-static {v1}, Lcom/spotify/mobile/android/util/y;->a(F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->a(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;F)F

    :goto_2f
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;

    iget-object v0, v0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->o:Lcom/spotify/mobile/android/service/connections/b;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->c(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/connections/b;->a(F)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->c(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->b(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;F)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->e(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->d(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_58
    :goto_58
    return-void

    :cond_59
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->c(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;)F

    move-result v1

    sub-float/2addr v1, v2

    invoke-static {v1}, Lcom/spotify/mobile/android/util/y;->a(F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->a(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;F)F

    goto :goto_2f

    :cond_6a
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->e(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->d(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_58
.end method
