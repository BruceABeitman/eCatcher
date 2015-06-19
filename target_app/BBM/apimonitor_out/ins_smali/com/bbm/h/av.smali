.class final Lcom/bbm/h/av;
.super Lcom/bbm/j/u;
.source "InviteUtil.java"
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Landroid/app/Activity;
.field final synthetic c:Lcom/bbm/h/az;
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;Lcom/bbm/h/az;)V
.registers 4
iput-object p1, p0, Lcom/bbm/h/av;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/bbm/h/av;->b:Landroid/app/Activity;
iput-object p3, p0, Lcom/bbm/h/av;->c:Lcom/bbm/h/az;
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
return-void
.end method
.method protected final b()Z
.registers 9
const/4 v3, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/bbm/h/av;->a:Ljava/lang/String;
invoke-static {}, Lcom/bbm/h/aq;->b()Lcom/bbm/d;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v1}, Lcom/bbm/d/a;->i()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2d
iget-object v0, p0, Lcom/bbm/h/av;->b:Landroid/app/Activity;
new-instance v1, Landroid/content/Intent;
iget-object v2, p0, Lcom/bbm/h/av;->b:Landroid/app/Activity;
const-class v4, Lcom/bbm/ui/activities/OwnProfileActivity;
invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
:goto_22
:cond_22
iget-object v0, p0, Lcom/bbm/h/av;->c:Lcom/bbm/h/az;
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/bbm/h/av;->c:Lcom/bbm/h/az;
invoke-interface {v0}, Lcom/bbm/h/az;->a()V
:cond_2b
move v2, v3
:pswitch_2c
:cond_2c
return v2
:cond_2d
invoke-static {}, Lcom/bbm/h/aq;->b()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iget-object v1, p0, Lcom/bbm/h/av;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->h(Ljava/lang/String;)Lcom/bbm/d/fv;
move-result-object v4
sget-object v0, Lcom/bbm/h/ay;->a:[I
iget-object v1, v4, Lcom/bbm/d/fv;->c:Lcom/bbm/util/bh;
invoke-virtual {v1}, Lcom/bbm/util/bh;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_c8
goto :goto_22
:pswitch_47
iget-object v0, p0, Lcom/bbm/h/av;->b:Landroid/app/Activity;
iget-object v1, p0, Lcom/bbm/h/av;->a:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/bbm/h/aq;->a(Landroid/app/Activity;Ljava/lang/String;)V
goto :goto_22
:pswitch_4f
invoke-static {}, Lcom/bbm/h/aq;->b()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iget-object v1, v4, Lcom/bbm/d/fv;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->L(Ljava/lang/String;)Lcom/bbm/util/bh;
move-result-object v0
sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v0, v1, :cond_67
iget-object v0, p0, Lcom/bbm/h/av;->b:Landroid/app/Activity;
iget-object v1, v4, Lcom/bbm/d/fv;->b:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/bbm/ui/activities/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)V
goto :goto_22
:cond_67
invoke-static {}, Lcom/bbm/h/aq;->b()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v0}, Lcom/bbm/d/a;->I()Lcom/bbm/j/w;
move-result-object v5
invoke-interface {v5}, Lcom/bbm/j/w;->b()Z
move-result v0
if-nez v0, :cond_2c
move v1, v2
:goto_78
invoke-interface {v5}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ge v1, v0, :cond_b6
invoke-interface {v5}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/fn;
iget-object v6, v0, Lcom/bbm/d/fn;->j:Ljava/lang/String;
iget-object v7, v4, Lcom/bbm/d/fv;->b:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_c4
new-instance v2, Landroid/content/Intent;
iget-object v4, p0, Lcom/bbm/h/av;->b:Landroid/app/Activity;
iget-boolean v1, v0, Lcom/bbm/d/fn;->d:Z
if-eqz v1, :cond_c1
const-class v1, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;
:goto_a4
invoke-direct {v2, v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-boolean v1, v0, Lcom/bbm/d/fn;->d:Z
const-string v1, "pending_contact_id"
iget-object v0, v0, Lcom/bbm/d/fn;->c:Ljava/lang/String;
invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v0, p0, Lcom/bbm/h/av;->b:Landroid/app/Activity;
invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
move v2, v3
:cond_b6
if-nez v2, :cond_22
iget-object v0, p0, Lcom/bbm/h/av;->b:Landroid/app/Activity;
iget-object v1, p0, Lcom/bbm/h/av;->a:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/bbm/h/aq;->a(Landroid/app/Activity;Ljava/lang/String;)V
goto/16 :goto_22
:cond_c1
const-class v1, Lcom/bbm/ui/activities/SentPendingInviteActivity;
goto :goto_a4
:cond_c4
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_78
:pswitch_data_c8
.packed-switch 0x1
:pswitch_2c
:pswitch_47
:pswitch_4f
.end packed-switch
.end method