.class final Lcom/bbm/ui/activities/zy;
.super Ljava/lang/Object;
.source "OpenInBbmActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/bbm/ui/activities/OpenInBbmActivity;
.method constructor <init>(Lcom/bbm/ui/activities/OpenInBbmActivity;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/zy;->b:Lcom/bbm/ui/activities/OpenInBbmActivity;
iput-object p2, p0, Lcom/bbm/ui/activities/zy;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/zy;->b:Lcom/bbm/ui/activities/OpenInBbmActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->isFinishing()Z
move-result v0
if-nez v0, :cond_2d
iget-object v0, p0, Lcom/bbm/ui/activities/zy;->b:Lcom/bbm/ui/activities/OpenInBbmActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->a(Lcom/bbm/ui/activities/OpenInBbmActivity;)Lcom/bbm/f/ac;
move-result-object v0
if-eqz v0, :cond_2d
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;
iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;
iget-object v1, p0, Lcom/bbm/ui/activities/zy;->b:Lcom/bbm/ui/activities/OpenInBbmActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/OpenInBbmActivity;->a(Lcom/bbm/ui/activities/OpenInBbmActivity;)Lcom/bbm/f/ac;
move-result-object v1
invoke-interface {v0, v1}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V
iget-object v0, p0, Lcom/bbm/ui/activities/zy;->b:Lcom/bbm/ui/activities/OpenInBbmActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->b(Lcom/bbm/ui/activities/OpenInBbmActivity;)Lcom/bbm/f/ac;
iget-object v0, p0, Lcom/bbm/ui/activities/zy;->b:Lcom/bbm/ui/activities/OpenInBbmActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/zy;->a:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/bbm/ui/activities/OpenInBbmActivity;->a(Lcom/bbm/ui/activities/OpenInBbmActivity;Ljava/lang/String;)V
:cond_2d
return-void
.end method