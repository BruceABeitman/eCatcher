.class final Lcom/bbm/ui/activities/ajg;
.super Ljava/lang/Object;
.source "ViewChannelPostActivity.java"
.implements Lcom/bbm/j/s;
.field final synthetic a:Lcom/bbm/ui/c/fm;
.field final synthetic b:Lcom/bbm/ui/activities/ViewChannelPostActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;Lcom/bbm/ui/c/fm;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/ajg;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;
iput-object p2, p0, Lcom/bbm/ui/activities/ajg;->a:Lcom/bbm/ui/c/fm;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Z
.registers 6
const/4 v2, 0x1
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/ajg;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->k(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/ek;
move-result-object v0
if-nez v0, :cond_39
iget-object v3, p0, Lcom/bbm/ui/activities/ajg;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;
iget-object v0, p0, Lcom/bbm/ui/activities/ajg;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->l(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/a;
move-result-object v0
iget-object v4, p0, Lcom/bbm/ui/activities/ajg;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-virtual {v4}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->b()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v4, v2}, Lcom/bbm/d/a;->d(Ljava/lang/String;Z)Lcom/bbm/j/x;
move-result-object v0
iget-object v4, p0, Lcom/bbm/ui/activities/ajg;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v4}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->w(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Ljava/lang/String;
move-result-object v4
invoke-interface {v0, v4}, Lcom/bbm/j/x;->b(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ek;
invoke-static {v3, v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(Lcom/bbm/ui/activities/ViewChannelPostActivity;Lcom/bbm/d/ek;)Lcom/bbm/d/ek;
iget-object v0, p0, Lcom/bbm/ui/activities/ajg;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->k(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/ek;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/ek;->t:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v0, v3, :cond_39
move v0, v1
:goto_38
return v0
:cond_39
iget-object v0, p0, Lcom/bbm/ui/activities/ajg;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->i(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/ec;
move-result-object v0
if-nez v0, :cond_64
iget-object v0, p0, Lcom/bbm/ui/activities/ajg;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;
iget-object v3, p0, Lcom/bbm/ui/activities/ajg;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->l(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/a;
move-result-object v3
iget-object v4, p0, Lcom/bbm/ui/activities/ajg;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-virtual {v4}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->b()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;
move-result-object v3
invoke-static {v0, v3}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(Lcom/bbm/ui/activities/ViewChannelPostActivity;Lcom/bbm/d/ec;)Lcom/bbm/d/ec;
iget-object v0, p0, Lcom/bbm/ui/activities/ajg;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->i(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/ec;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v0, v3, :cond_64
move v0, v1
goto :goto_38
:cond_64
iget-object v0, p0, Lcom/bbm/ui/activities/ajg;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/ajg;->a:Lcom/bbm/ui/c/fm;
invoke-static {v0, v1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(Lcom/bbm/ui/activities/ViewChannelPostActivity;Lcom/bbm/ui/c/fm;)V
move v0, v2
goto :goto_38
.end method