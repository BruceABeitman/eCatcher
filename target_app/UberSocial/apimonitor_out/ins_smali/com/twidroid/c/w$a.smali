.class  Lcom/twidroid/c/w$a;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twidroid/net/c/u;
.field final synthetic a:Lcom/twidroid/c/w;
.method constructor <init>(Lcom/twidroid/c/w;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/c/w$a;->a:Lcom/twidroid/c/w;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()V
.registers 2
:try_start_0
iget-object v0, p0, Lcom/twidroid/c/w$a;->a:Lcom/twidroid/c/w;
invoke-static {v0}, Lcom/twidroid/c/w;->b(Lcom/twidroid/c/w;)Lcom/twidroid/ui/a/am;
move-result-object v0
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/twidroid/c/w$a;->a:Lcom/twidroid/c/w;
invoke-virtual {v0}, Lcom/twidroid/c/w;->dismiss()V
:try_end_d
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e
:goto_d
:cond_d
return-void
:catch_e
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_d
.end method
.method public onClick(Landroid/view/View;)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/c/w$a; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/c/w$a;->a:Lcom/twidroid/c/w;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/twidroid/c/w;->setCancelable(Z)V
const v0, 0x7f0900a2
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v1
if-ne v0, v1, :cond_32
iget-object v0, p0, Lcom/twidroid/c/w$a;->a:Lcom/twidroid/c/w;
invoke-static {v0}, Lcom/twidroid/c/w;->a(Lcom/twidroid/c/w;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/c/w$a;->a:Lcom/twidroid/c/w;
iget-object v1, v1, Lcom/twidroid/c/w;->f:Landroid/app/Activity;
iget-object v2, p0, Lcom/twidroid/c/w$a;->a:Lcom/twidroid/c/w;
iget-object v2, v2, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;
iget-object v3, p0, Lcom/twidroid/c/w$a;->a:Lcom/twidroid/c/w;
iget-object v3, v3, Lcom/twidroid/c/w;->j:Lcom/twidroid/net/c/a/f;
const/4 v4, 0x0
move-object v5, p0
invoke-static/range {v0 .. v5}, Lcom/twidroid/net/c/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;Lcom/twidroid/net/c/u;)V
iget-object v0, p0, Lcom/twidroid/c/w$a;->a:Lcom/twidroid/c/w;
const/16 v1, 0x3001
iput v1, v0, Lcom/twidroid/c/w;->e:I
:cond_2c
:goto_2c
iget-object v0, p0, Lcom/twidroid/c/w$a;->a:Lcom/twidroid/c/w;
invoke-virtual {v0}, Lcom/twidroid/c/w;->dismiss()V
const-string v1, " - Lcom/twidroid/c/w$a; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_32
const v0, 0x7f0900a3
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v1
if-ne v0, v1, :cond_2c
iget-object v0, p0, Lcom/twidroid/c/w$a;->a:Lcom/twidroid/c/w;
invoke-static {v0}, Lcom/twidroid/c/w;->a(Lcom/twidroid/c/w;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/c/w$a;->a:Lcom/twidroid/c/w;
iget-object v1, v1, Lcom/twidroid/c/w;->f:Landroid/app/Activity;
iget-object v2, p0, Lcom/twidroid/c/w$a;->a:Lcom/twidroid/c/w;
iget-object v2, v2, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;
iget-object v3, p0, Lcom/twidroid/c/w$a;->a:Lcom/twidroid/c/w;
iget-object v3, v3, Lcom/twidroid/c/w;->j:Lcom/twidroid/net/c/a/f;
iget-object v4, p0, Lcom/twidroid/c/w$a;->a:Lcom/twidroid/c/w;
invoke-static {v4}, Lcom/twidroid/c/w;->b(Lcom/twidroid/c/w;)Lcom/twidroid/ui/a/am;
move-result-object v4
move-object v5, p0
invoke-static/range {v0 .. v5}, Lcom/twidroid/net/c/t;->b(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/a/am;Lcom/twidroid/net/c/u;)V
iget-object v0, p0, Lcom/twidroid/c/w$a;->a:Lcom/twidroid/c/w;
const/16 v1, 0x3002
iput v1, v0, Lcom/twidroid/c/w;->e:I
goto :goto_2c
.end method