.class final Lcom/bbm/util/at;
.super Ljava/lang/Object;
.source "ChannelUtil.java"
.implements Lcom/bbm/j/s;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Landroid/app/Activity;
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
.registers 3
iput-object p1, p0, Lcom/bbm/util/at;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/bbm/util/at;->b:Landroid/app/Activity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Z
.registers 8
const/4 v2, 0x1
const/4 v1, 0x0
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iget-object v3, p0, Lcom/bbm/util/at;->a:Ljava/lang/String;
invoke-virtual {v0, v3}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;
move-result-object v3
iget-object v0, v3, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;
sget-object v4, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v0, v4, :cond_14
move v0, v1
:goto_13
return v0
:cond_14
iget-object v0, v3, Lcom/bbm/d/ec;->i:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_3d
iget-boolean v0, v3, Lcom/bbm/d/ec;->t:Z
if-eqz v0, :cond_4a
iget-object v0, p0, Lcom/bbm/util/at;->b:Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v4
iget-boolean v0, v3, Lcom/bbm/d/ec;->u:Z
if-eqz v0, :cond_46
const v0, 0x7f0e055e
:goto_2d
new-array v5, v2, [Ljava/lang/Object;
iget-object v6, v3, Lcom/bbm/d/ec;->k:Ljava/lang/String;
aput-object v6, v5, v1
invoke-virtual {v4, v0, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:goto_3d
:cond_3d
iget-object v1, p0, Lcom/bbm/util/at;->b:Landroid/app/Activity;
iget-object v3, v3, Lcom/bbm/d/ec;->O:Ljava/lang/String;
invoke-static {v1, v3, v0}, Lcom/bbm/h/aq;->c(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
move v0, v2
goto :goto_13
:cond_46
const v0, 0x7f0e055f
goto :goto_2d
:cond_4a
iget-object v0, p0, Lcom/bbm/util/at;->b:Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v4, 0x7f0e06e8
new-array v5, v2, [Ljava/lang/Object;
iget-object v6, v3, Lcom/bbm/d/ec;->k:Ljava/lang/String;
aput-object v6, v5, v1
invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_3d
.end method