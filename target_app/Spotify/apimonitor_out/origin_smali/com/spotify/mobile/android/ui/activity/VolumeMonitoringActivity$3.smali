.class final Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$3;
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

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;

    iget-object v0, v0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->o:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->l()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;

    iget-object v1, v1, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->o:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/service/connections/b;->e()F

    move-result v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->a(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;F)F

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->c(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->b(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;F)V

    :cond_22
    return-void
.end method
