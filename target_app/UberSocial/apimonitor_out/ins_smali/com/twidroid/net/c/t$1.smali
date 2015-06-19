.class final Lcom/twidroid/net/c/t$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/model/twitter/Tweet;
.field final synthetic b:Lcom/twidroid/UberSocialApplication;
.field final synthetic c:Landroid/app/Activity;
.field final synthetic d:Lcom/twidroid/net/c/a/f;
.field final synthetic e:Lcom/twidroid/ui/a/am;
.method constructor <init>(Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;)V
.registers 6
iput-object p1, p0, Lcom/twidroid/net/c/t$1;->a:Lcom/twidroid/model/twitter/Tweet;
iput-object p2, p0, Lcom/twidroid/net/c/t$1;->b:Lcom/twidroid/UberSocialApplication;
iput-object p3, p0, Lcom/twidroid/net/c/t$1;->c:Landroid/app/Activity;
iput-object p4, p0, Lcom/twidroid/net/c/t$1;->d:Lcom/twidroid/net/c/a/f;
iput-object p5, p0, Lcom/twidroid/net/c/t$1;->e:Lcom/twidroid/ui/a/am;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 11
const/4 v9, 0x0
const/4 v8, 0x0
:try_start_2
invoke-static {}, Lcom/twidroid/net/c/t;->a()Lcom/twidroid/net/a/c/c;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/net/c/t$1;->a:Lcom/twidroid/model/twitter/Tweet;
iget-wide v1, v1, Lcom/twidroid/model/twitter/Tweet;->C:J
invoke-virtual {v0, v1, v2}, Lcom/twidroid/net/a/c/c;->e(J)Z
iget-object v0, p0, Lcom/twidroid/net/c/t$1;->b:Lcom/twidroid/UberSocialApplication;
iget-object v1, p0, Lcom/twidroid/net/c/t$1;->c:Landroid/app/Activity;
iget-object v2, p0, Lcom/twidroid/net/c/t$1;->a:Lcom/twidroid/model/twitter/Tweet;
iget-object v3, p0, Lcom/twidroid/net/c/t$1;->d:Lcom/twidroid/net/c/a/f;
iget-object v4, p0, Lcom/twidroid/net/c/t$1;->e:Lcom/twidroid/ui/a/am;
invoke-static {v0, v1, v2, v3, v4}, Lcom/twidroid/net/c/t;->b(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;)V
iget-object v0, p0, Lcom/twidroid/net/c/t$1;->c:Landroid/app/Activity;
const/4 v1, 0x0
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Runnable;
const/4 v3, 0x0
new-instance v4, Lcom/twidroid/net/c/v;
iget-object v5, p0, Lcom/twidroid/net/c/t$1;->b:Lcom/twidroid/UberSocialApplication;
const v6, 0x7f0c0175
const/4 v7, 0x0
invoke-direct {v4, v5, v6, v7}, Lcom/twidroid/net/c/v;-><init>(Lcom/twidroid/UberSocialApplication;IZ)V
aput-object v4, v2, v3
invoke-static {v0, v1, v2}, Lcom/twidroid/net/c/t;->a(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/Runnable;)V
:goto_31
:cond_31
:try_end_31
.catch Lcom/ubermedia/net/a/a/a; {:try_start_2 .. :try_end_31} :catch_32
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_31} :catch_66
return-void
:catch_32
move-exception v0
:try_start_33
invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->printStackTrace()V
invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "Reporting failed."
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_31
iget-object v0, p0, Lcom/twidroid/net/c/t$1;->c:Landroid/app/Activity;
iget-object v1, p0, Lcom/twidroid/net/c/t$1;->d:Lcom/twidroid/net/c/a/f;
const v2, 0x7f0c003a
const v3, 0x7f0c003a
const/4 v4, 0x0
const/4 v5, 0x0
new-array v5, v5, [Ljava/lang/Runnable;
invoke-static/range {v0 .. v5}, Lcom/twidroid/net/c/t;->a(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;IILjava/lang/String;[Ljava/lang/Runnable;)V
:try_end_53
.catch Ljava/lang/Exception; {:try_start_33 .. :try_end_53} :catch_54
goto :goto_31
:catch_54
move-exception v0
iget-object v0, p0, Lcom/twidroid/net/c/t$1;->c:Landroid/app/Activity;
iget-object v1, p0, Lcom/twidroid/net/c/t$1;->d:Lcom/twidroid/net/c/a/f;
const v2, 0x7f0c0027
const v3, 0x7f0c0028
new-array v5, v8, [Ljava/lang/Runnable;
move-object v4, v9
invoke-static/range {v0 .. v5}, Lcom/twidroid/net/c/t;->a(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;IILjava/lang/String;[Ljava/lang/Runnable;)V
goto :goto_31
:catch_66
move-exception v0
:try_start_67
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:try_end_6a
.catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_54
goto :goto_31
.end method