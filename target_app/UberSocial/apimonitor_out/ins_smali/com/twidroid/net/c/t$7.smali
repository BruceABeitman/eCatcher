.class final Lcom/twidroid/net/c/t$7;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/model/twitter/Tweet;
.field final synthetic b:Lcom/twidroid/UberSocialApplication;
.field final synthetic c:Landroid/app/Activity;
.field final synthetic d:Lcom/twidroid/net/c/a/f;
.field final synthetic e:Lcom/twidroid/ui/a/am;
.method constructor <init>(Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;)V
.registers 6
iput-object p1, p0, Lcom/twidroid/net/c/t$7;->a:Lcom/twidroid/model/twitter/Tweet;
iput-object p2, p0, Lcom/twidroid/net/c/t$7;->b:Lcom/twidroid/UberSocialApplication;
iput-object p3, p0, Lcom/twidroid/net/c/t$7;->c:Landroid/app/Activity;
iput-object p4, p0, Lcom/twidroid/net/c/t$7;->d:Lcom/twidroid/net/c/a/f;
iput-object p5, p0, Lcom/twidroid/net/c/t$7;->e:Lcom/twidroid/ui/a/am;
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
return-void
.end method
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Exception;
.registers 5
invoke-static {}, Lcom/twidroid/net/c/t;->b()Lcom/twidroid/b/a/b;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/net/c/t$7;->a:Lcom/twidroid/model/twitter/Tweet;
iget-wide v1, v1, Lcom/twidroid/model/twitter/Tweet;->C:J
long-to-int v1, v1
int-to-long v1, v1
invoke-virtual {v0, v1, v2}, Lcom/twidroid/b/a/b;->c(J)Z
move-result v0
if-nez v0, :cond_23
invoke-static {}, Lcom/twidroid/net/c/t;->b()Lcom/twidroid/b/a/b;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/net/c/t$7;->a:Lcom/twidroid/model/twitter/Tweet;
iget v1, v1, Lcom/twidroid/model/twitter/Tweet;->aB:I
invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->b(I)I
move-result v0
invoke-static {}, Lcom/twidroid/net/c/t;->b()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/twidroid/b/a/b;->c(I)Z
:cond_23
:try_start_23
invoke-static {}, Lcom/twidroid/net/c/t;->a()Lcom/twidroid/net/a/c/c;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/net/c/t$7;->a:Lcom/twidroid/model/twitter/Tweet;
iget-wide v1, v1, Lcom/twidroid/model/twitter/Tweet;->x:J
invoke-virtual {v0, v1, v2}, Lcom/twidroid/net/a/c/c;->f(J)Z
const-string v0, "tweet"
const-string v1, "delete"
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_end_35
.catch Lcom/ubermedia/net/a/a/a; {:try_start_23 .. :try_end_35} :catch_37
.catch Ljava/lang/Exception; {:try_start_23 .. :try_end_35} :catch_41
const/4 v0, 0x0
:goto_36
return-object v0
:catch_37
move-exception v0
:try_start_38
invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->printStackTrace()V
:try_end_3b
.catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3c
goto :goto_36
:catch_3c
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_36
:catch_41
move-exception v0
:try_start_42
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:try_end_45
.catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_3c
goto :goto_36
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/twidroid/net/c/t$7;->a([Ljava/lang/Void;)Ljava/lang/Exception;
move-result-object v0
return-object v0
.end method
.method protected a(Ljava/lang/Exception;)V
.registers 9
const v2, 0x7f0c010f
const/4 v4, 0x0
const/4 v6, 0x0
if-nez p1, :cond_2a
iget-object v0, p0, Lcom/twidroid/net/c/t$7;->b:Lcom/twidroid/UberSocialApplication;
iget-object v1, p0, Lcom/twidroid/net/c/t$7;->c:Landroid/app/Activity;
iget-object v2, p0, Lcom/twidroid/net/c/t$7;->a:Lcom/twidroid/model/twitter/Tweet;
iget-object v3, p0, Lcom/twidroid/net/c/t$7;->d:Lcom/twidroid/net/c/a/f;
iget-object v5, p0, Lcom/twidroid/net/c/t$7;->e:Lcom/twidroid/ui/a/am;
invoke-static {v0, v1, v2, v3, v5}, Lcom/twidroid/net/c/t;->b(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;)V
iget-object v0, p0, Lcom/twidroid/net/c/t$7;->d:Lcom/twidroid/net/c/a/f;
if-eqz v0, :cond_29
iget-object v0, p0, Lcom/twidroid/net/c/t$7;->d:Lcom/twidroid/net/c/a/f;
const v1, 0x7f0c0174
invoke-interface {v0, v1, v4}, Lcom/twidroid/net/c/a/f;->c(ILjava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/net/c/t$7;->c:Landroid/app/Activity;
iget-object v1, p0, Lcom/twidroid/net/c/t$7;->d:Lcom/twidroid/net/c/a/f;
new-array v2, v6, [Ljava/lang/Runnable;
invoke-static {v0, v1, v2}, Lcom/twidroid/net/c/t;->a(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;[Ljava/lang/Runnable;)V
:goto_29
:cond_29
return-void
:cond_2a
iget-object v0, p0, Lcom/twidroid/net/c/t$7;->d:Lcom/twidroid/net/c/a/f;
if-eqz v0, :cond_29
invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "You may not delete another user\'s status."
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_47
iget-object v0, p0, Lcom/twidroid/net/c/t$7;->c:Landroid/app/Activity;
iget-object v1, p0, Lcom/twidroid/net/c/t$7;->d:Lcom/twidroid/net/c/a/f;
const v3, 0x7f0c0024
new-array v5, v6, [Ljava/lang/Runnable;
invoke-static/range {v0 .. v5}, Lcom/twidroid/net/c/t;->a(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;IILjava/lang/String;[Ljava/lang/Runnable;)V
goto :goto_29
:cond_47
iget-object v0, p0, Lcom/twidroid/net/c/t$7;->c:Landroid/app/Activity;
iget-object v1, p0, Lcom/twidroid/net/c/t$7;->d:Lcom/twidroid/net/c/a/f;
const v3, 0x7f0c0027
new-array v5, v6, [Ljava/lang/Runnable;
invoke-static/range {v0 .. v5}, Lcom/twidroid/net/c/t;->a(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;IILjava/lang/String;[Ljava/lang/Runnable;)V
goto :goto_29
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Exception;
invoke-virtual {p0, p1}, Lcom/twidroid/net/c/t$7;->a(Ljava/lang/Exception;)V
return-void
.end method