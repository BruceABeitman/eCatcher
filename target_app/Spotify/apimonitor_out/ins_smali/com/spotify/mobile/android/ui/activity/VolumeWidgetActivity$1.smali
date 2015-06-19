.class final Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->finish()V
return-void
.end method