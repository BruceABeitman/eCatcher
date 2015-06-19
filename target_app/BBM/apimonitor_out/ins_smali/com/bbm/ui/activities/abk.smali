.class final Lcom/bbm/ui/activities/abk;
.super Lcom/bbm/j/k;
.source "PreviewChannelActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/PreviewChannelActivity;
.method constructor <init>(Lcom/bbm/ui/activities/PreviewChannelActivity;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/abk;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/bbm/ui/activities/abk;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/abk;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/PreviewChannelActivity;->d(Lcom/bbm/ui/activities/PreviewChannelActivity;)Lcom/bbm/d;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iget-object v2, p0, Lcom/bbm/ui/activities/abk;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;
invoke-virtual {v2}, Lcom/bbm/ui/activities/PreviewChannelActivity;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/ui/activities/PreviewChannelActivity;->a(Lcom/bbm/ui/activities/PreviewChannelActivity;Lcom/bbm/d/ec;)Lcom/bbm/d/ec;
iget-object v0, p0, Lcom/bbm/ui/activities/abk;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/PreviewChannelActivity;->e(Lcom/bbm/ui/activities/PreviewChannelActivity;)Lcom/bbm/d/ec;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v0, v1, :cond_60
iget-object v0, p0, Lcom/bbm/ui/activities/abk;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/bbm/ui/activities/abk;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/PreviewChannelActivity;->e(Lcom/bbm/ui/activities/PreviewChannelActivity;)Lcom/bbm/d/ec;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d/ec;->I:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v2
invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/ui/activities/PreviewChannelActivity;->a(Lcom/bbm/ui/activities/PreviewChannelActivity;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/activities/abk;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/PreviewChannelActivity;->f(Lcom/bbm/ui/activities/PreviewChannelActivity;)Z
iget-object v0, p0, Lcom/bbm/ui/activities/abk;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/PreviewChannelActivity;->h(Lcom/bbm/ui/activities/PreviewChannelActivity;)Lcom/bbm/ui/FooterActionBar;
move-result-object v0
const v1, 0x7f0a003d
iget-object v2, p0, Lcom/bbm/ui/activities/abk;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/PreviewChannelActivity;->g(Lcom/bbm/ui/activities/PreviewChannelActivity;)Z
move-result v2
invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/FooterActionBar;->setActionEnabled(IZ)V
:try_end_60
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_60} :catch_61
:goto_60
:cond_60
return-void
:catch_61
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_60
.end method