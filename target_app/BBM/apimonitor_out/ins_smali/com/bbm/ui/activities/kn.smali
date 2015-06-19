.class final Lcom/bbm/ui/activities/kn;
.super Lcom/bbm/j/k;
.source "GlympseViewerActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/GlympseViewerActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GlympseViewerActivity;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/kn;->a:Lcom/bbm/ui/activities/GlympseViewerActivity;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/activities/kn;->a:Lcom/bbm/ui/activities/GlympseViewerActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/kn;->a:Lcom/bbm/ui/activities/GlympseViewerActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GlympseViewerActivity;->b(Lcom/bbm/ui/activities/GlympseViewerActivity;)Lcom/bbm/d/a;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/kn;->a:Lcom/bbm/ui/activities/GlympseViewerActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/GlympseViewerActivity;->c(Lcom/bbm/ui/activities/GlympseViewerActivity;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/bbm/d/a;->K(Ljava/lang/String;)Lcom/bbm/d/es;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/ui/activities/GlympseViewerActivity;->a(Lcom/bbm/ui/activities/GlympseViewerActivity;Lcom/bbm/d/es;)Lcom/bbm/d/es;
iget-object v0, p0, Lcom/bbm/ui/activities/kn;->a:Lcom/bbm/ui/activities/GlympseViewerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GlympseViewerActivity;->d(Lcom/bbm/ui/activities/GlympseViewerActivity;)Lcom/bbm/d/es;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/es;->u:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v0, v1, :cond_6d
iget-object v0, p0, Lcom/bbm/ui/activities/kn;->a:Lcom/bbm/ui/activities/GlympseViewerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GlympseViewerActivity;->b(Lcom/bbm/ui/activities/GlympseViewerActivity;)Lcom/bbm/d/a;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;
iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;
iget-object v1, p0, Lcom/bbm/ui/activities/kn;->a:Lcom/bbm/ui/activities/GlympseViewerActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GlympseViewerActivity;->e(Lcom/bbm/ui/activities/GlympseViewerActivity;)Lcom/bbm/f/ac;
move-result-object v1
invoke-interface {v0, v1}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V
iget-object v0, p0, Lcom/bbm/ui/activities/kn;->a:Lcom/bbm/ui/activities/GlympseViewerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GlympseViewerActivity;->b(Lcom/bbm/ui/activities/GlympseViewerActivity;)Lcom/bbm/d/a;
move-result-object v0
sget-object v1, Lcom/bbm/d/gn;->e:Lcom/bbm/d/gn;
invoke-virtual {v1}, Lcom/bbm/d/gn;->toString()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/kn;->a:Lcom/bbm/ui/activities/GlympseViewerActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/GlympseViewerActivity;->c(Lcom/bbm/ui/activities/GlympseViewerActivity;)Ljava/lang/String;
move-result-object v2
const-string v3, ""
invoke-static {v1, v2, v3}, Lcom/bbm/d/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/dd;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
iget-object v0, p0, Lcom/bbm/ui/activities/kn;->a:Lcom/bbm/ui/activities/GlympseViewerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GlympseViewerActivity;->a(Lcom/bbm/ui/activities/GlympseViewerActivity;)Lcom/glympse/map/lib/Map;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/kn;->a:Lcom/bbm/ui/activities/GlympseViewerActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GlympseViewerActivity;->d(Lcom/bbm/ui/activities/GlympseViewerActivity;)Lcom/bbm/d/es;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/glympse/map/lib/Map;->attachConversation(Lcom/bbm/d/es;)V
iget-object v0, p0, Lcom/bbm/ui/activities/kn;->a:Lcom/bbm/ui/activities/GlympseViewerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GlympseViewerActivity;->f(Lcom/bbm/ui/activities/GlympseViewerActivity;)Lcom/bbm/ui/GlympseUserSelector;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/kn;->a:Lcom/bbm/ui/activities/GlympseViewerActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GlympseViewerActivity;->d(Lcom/bbm/ui/activities/GlympseViewerActivity;)Lcom/bbm/d/es;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/GlympseUserSelector;->a(Lcom/bbm/d/es;)V
:cond_6d
return-void
.end method