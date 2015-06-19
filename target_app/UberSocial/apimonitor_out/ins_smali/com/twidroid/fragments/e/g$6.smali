.class  Lcom/twidroid/fragments/e/g$6;
.super Lcom/twidroid/net/a/c/a/b;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/fragments/e/g;
.method constructor <init>(Lcom/twidroid/fragments/e/g;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/e/g$6;->a:Lcom/twidroid/fragments/e/g;
invoke-direct {p0}, Lcom/twidroid/net/a/c/a/b;-><init>()V
return-void
.end method
.method public a(Lcom/twidroid/model/twitter/c;)V
.registers 5
invoke-super {p0, p1}, Lcom/twidroid/net/a/c/a/b;->a(Lcom/twidroid/model/twitter/c;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/g$6;->a:Lcom/twidroid/fragments/e/g;
const/4 v1, 0x1
invoke-static {v0, v1, p1}, Lcom/twidroid/fragments/e/g;->a(Lcom/twidroid/fragments/e/g;ZLcom/twidroid/model/twitter/c;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/g$6;->a:Lcom/twidroid/fragments/e/g;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/g;->H()Z
move-result v0
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/twidroid/fragments/e/g$6;->a:Lcom/twidroid/fragments/e/g;
invoke-static {v0}, Lcom/twidroid/fragments/e/g;->ac(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/twidroid/model/twitter/c;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/twidroid/fragments/e/g$6;->a:Lcom/twidroid/fragments/e/g;
invoke-static {v0}, Lcom/twidroid/fragments/e/g;->ad(Lcom/twidroid/fragments/e/g;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/twidroid/fragments/e/g$6$2;
invoke-direct {v1, p0}, Lcom/twidroid/fragments/e/g$6$2;-><init>(Lcom/twidroid/fragments/e/g$6;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_2b
iget-object v0, p0, Lcom/twidroid/fragments/e/g$6;->a:Lcom/twidroid/fragments/e/g;
const-wide/16 v1, -0x1
invoke-static {v0, v1, v2}, Lcom/twidroid/fragments/e/g;->a(Lcom/twidroid/fragments/e/g;J)J
return-void
.end method
.method public a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/twitter/DirectMessage;)V
.registers 8
invoke-super {p0, p1, p2}, Lcom/twidroid/net/a/c/a/b;->a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/twitter/DirectMessage;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/g$6;->a:Lcom/twidroid/fragments/e/g;
invoke-static {v0}, Lcom/twidroid/fragments/e/g;->ae(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/d/v;->cb()Z
move-result v0
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/twidroid/fragments/e/g$6;->a:Lcom/twidroid/fragments/e/g;
invoke-static {v0}, Lcom/twidroid/fragments/e/g;->af(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->o()J
move-result-wide v0
const-wide/16 v2, -0x1
cmp-long v0, v0, v2
if-nez v0, :cond_27
const-string v0, "HomeTimeline"
const-string v1, "Not notifying anyone because all accounts was selected"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_26
:cond_26
return-void
:cond_27
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v1, p0, Lcom/twidroid/fragments/e/g$6;->a:Lcom/twidroid/fragments/e/g;
invoke-static {v1}, Lcom/twidroid/fragments/e/g;->ag(Lcom/twidroid/fragments/e/g;)V
iget-wide v1, p2, Lcom/twidroid/model/twitter/DirectMessage;->D:J
iget-object v3, p0, Lcom/twidroid/fragments/e/g$6;->a:Lcom/twidroid/fragments/e/g;
invoke-static {v3}, Lcom/twidroid/fragments/e/g;->ah(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
move-result-object v3
invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->o()J
move-result-wide v3
cmp-long v1, v1, v3
if-eqz v1, :cond_4c
const-string v0, "HomeTimeline"
const-string v1, "wrong acount, doing nothing(TODO: should write to db and skip UI)"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_26
:cond_4c
iget-object v1, p0, Lcom/twidroid/fragments/e/g$6;->a:Lcom/twidroid/fragments/e/g;
invoke-static {v1}, Lcom/twidroid/fragments/e/g;->ai(Lcom/twidroid/fragments/e/g;)Landroid/os/Handler;
move-result-object v1
new-instance v2, Lcom/twidroid/fragments/e/g$6$3;
invoke-direct {v2, p0, v0}, Lcom/twidroid/fragments/e/g$6$3;-><init>(Lcom/twidroid/fragments/e/g$6;Ljava/util/ArrayList;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_26
.end method
.method public a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/twitter/Tweet;)V
.registers 8
invoke-super {p0, p1, p2}, Lcom/twidroid/net/a/c/a/b;->a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/twitter/Tweet;)V
const-string v0, "HomeTimeline"
const-string v1, "New tweet!!!!"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/g$6;->a:Lcom/twidroid/fragments/e/g;
invoke-static {v0}, Lcom/twidroid/fragments/e/g;->U(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/b/a/b;
move-result-object v0
iget v1, p2, Lcom/twidroid/model/twitter/Tweet;->aB:I
invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->i(I)Lcom/twidroid/model/twitter/c;
move-result-object v0
if-eqz v0, :cond_3e
iget-object v1, p2, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_30
iget-object v1, p2, Lcom/twidroid/model/twitter/Tweet;->aq:Ljava/lang/String;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_45
:cond_30
invoke-virtual {p2}, Lcom/twidroid/model/twitter/Tweet;->v()Z
move-result v1
if-eqz v1, :cond_45
const-string v0, "HomeTimeline"
const-string v1, "Ignoring tweet since this is retweet of MY tweet!!!"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
:goto_3d
return-void
:cond_3e
const-string v1, "HomeTimeline"
const-string v2, "Cant find account that owns a tweet!!!!"
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
:cond_45
iget-object v1, p0, Lcom/twidroid/fragments/e/g$6;->a:Lcom/twidroid/fragments/e/g;
invoke-static {v1}, Lcom/twidroid/fragments/e/g;->V(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->o()J
move-result-wide v1
const-wide/16 v3, -0x1
cmp-long v1, v1, v3
if-nez v1, :cond_5d
const-string v0, "HomeTimeline"
const-string v1, "Not notifying anyone because all accounts was selected"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_3d
:cond_5d
iget-object v1, p0, Lcom/twidroid/fragments/e/g$6;->a:Lcom/twidroid/fragments/e/g;
invoke-static {v1}, Lcom/twidroid/fragments/e/g;->W(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v2
invoke-virtual {v1, v2}, Lcom/twidroid/b/a/b;->k(I)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/e/g$6;->a:Lcom/twidroid/fragments/e/g;
invoke-static {v2}, Lcom/twidroid/fragments/e/g;->X(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/b/a/b;
move-result-object v2
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v0
invoke-virtual {v2, v0}, Lcom/twidroid/b/a/b;->l(I)Ljava/util/ArrayList;
move-result-object v0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p2, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ","
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_d6
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p2, Lcom/twidroid/model/twitter/Tweet;->ap:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ","
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_d6
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p2, Lcom/twidroid/model/twitter/Tweet;->aq:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ","
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_d6
iget-object v1, p0, Lcom/twidroid/fragments/e/g$6;->a:Lcom/twidroid/fragments/e/g;
invoke-static {v1}, Lcom/twidroid/fragments/e/g;->Y(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1, p2, v0}, Lcom/twidroid/b/a/b;->a(Lcom/twidroid/model/twitter/Tweet;Ljava/util/ArrayList;)Z
move-result v0
if-eqz v0, :cond_df
:cond_d6
const-string v0, "HomeTimeline"
const-string v1, "This tweet is muted, doing nothing;"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_3d
:cond_df
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v1, p0, Lcom/twidroid/fragments/e/g$6;->a:Lcom/twidroid/fragments/e/g;
invoke-static {v1}, Lcom/twidroid/fragments/e/g;->Z(Lcom/twidroid/fragments/e/g;)V
iget v1, p2, Lcom/twidroid/model/twitter/Tweet;->aB:I
iget-object v2, p0, Lcom/twidroid/fragments/e/g$6;->a:Lcom/twidroid/fragments/e/g;
invoke-static {v2}, Lcom/twidroid/fragments/e/g;->aa(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->p()I
move-result v2
if-eq v1, v2, :cond_103
const-string v0, "HomeTimeline"
const-string v1, "wrong acount, doing nothing(TODO: should write to db and skip UI)"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_3d
:cond_103
iget-object v1, p0, Lcom/twidroid/fragments/e/g$6;->a:Lcom/twidroid/fragments/e/g;
new-instance v2, Lcom/twidroid/fragments/e/g$6$1;
invoke-direct {v2, p0, v0}, Lcom/twidroid/fragments/e/g$6$1;-><init>(Lcom/twidroid/fragments/e/g$6;Ljava/util/ArrayList;)V
invoke-static {v1, v2}, Lcom/twidroid/fragments/e/g;->a(Lcom/twidroid/fragments/e/g;Ljava/lang/Runnable;)V
goto/16 :goto_3d
.end method
.method public b(Lcom/twidroid/model/twitter/c;)V
.registers 5
invoke-super {p0, p1}, Lcom/twidroid/net/a/c/a/b;->b(Lcom/twidroid/model/twitter/c;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/g$6;->a:Lcom/twidroid/fragments/e/g;
const/4 v1, 0x0
invoke-static {v0, v1, p1}, Lcom/twidroid/fragments/e/g;->b(Lcom/twidroid/fragments/e/g;ZLcom/twidroid/model/twitter/c;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/g$6;->a:Lcom/twidroid/fragments/e/g;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-static {v0, v1, v2}, Lcom/twidroid/fragments/e/g;->b(Lcom/twidroid/fragments/e/g;J)J
return-void
.end method