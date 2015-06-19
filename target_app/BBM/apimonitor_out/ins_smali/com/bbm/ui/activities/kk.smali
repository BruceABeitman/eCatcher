.class final Lcom/bbm/ui/activities/kk;
.super Ljava/lang/Object;
.source "GlympseViewerActivity.java"
.implements Lcom/bbm/ui/co;
.field final synthetic a:Lcom/bbm/ui/activities/GlympseViewerActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GlympseViewerActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/kk;->a:Lcom/bbm/ui/activities/GlympseViewerActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/kk;->a:Lcom/bbm/ui/activities/GlympseViewerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GlympseViewerActivity;->a(Lcom/bbm/ui/activities/GlympseViewerActivity;)Lcom/glympse/map/lib/Map;
move-result-object v0
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/glympse/map/lib/Map;->setFollowMode(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/kk;->a:Lcom/bbm/ui/activities/GlympseViewerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GlympseViewerActivity;->a(Lcom/bbm/ui/activities/GlympseViewerActivity;)Lcom/glympse/map/lib/Map;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/glympse/map/lib/Map;->center(Z)V
return-void
.end method
.method public final a(Lcom/glympse/android/api/GUser;)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/activities/kk;->a:Lcom/bbm/ui/activities/GlympseViewerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GlympseViewerActivity;->a(Lcom/bbm/ui/activities/GlympseViewerActivity;)Lcom/glympse/map/lib/Map;
move-result-object v0
if-eqz v0, :cond_29
iget-object v0, p0, Lcom/bbm/ui/activities/kk;->a:Lcom/bbm/ui/activities/GlympseViewerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GlympseViewerActivity;->a(Lcom/bbm/ui/activities/GlympseViewerActivity;)Lcom/glympse/map/lib/Map;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, p1, v1}, Lcom/glympse/map/lib/Map;->centerOnUser(Lcom/glympse/android/api/GUser;Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/kk;->a:Lcom/bbm/ui/activities/GlympseViewerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GlympseViewerActivity;->a(Lcom/bbm/ui/activities/GlympseViewerActivity;)Lcom/glympse/map/lib/Map;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/glympse/map/lib/Map;->setFollowMode(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/kk;->a:Lcom/bbm/ui/activities/GlympseViewerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GlympseViewerActivity;->a(Lcom/bbm/ui/activities/GlympseViewerActivity;)Lcom/glympse/map/lib/Map;
move-result-object v0
invoke-interface {p1}, Lcom/glympse/android/api/GUser;->getActive()Lcom/glympse/android/api/GTicket;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/glympse/map/lib/Map;->trackTicket(Lcom/glympse/android/api/GTicket;)V
:cond_29
return-void
.end method