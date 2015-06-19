.class  Lcom/twidroid/activity/UberSocialBaseActivity$19;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Z
.field final synthetic b:[Ljava/lang/String;
.field final synthetic c:Landroid/widget/Spinner;
.field final synthetic d:Ljava/lang/String;
.field final synthetic e:Landroid/widget/CheckBox;
.field final synthetic f:Lcom/twidroid/activity/aa;
.field final synthetic g:Ljava/lang/String;
.field final synthetic h:Lcom/twidroid/activity/UberSocialBaseActivity;
.method constructor <init>(Lcom/twidroid/activity/UberSocialBaseActivity;Z[Ljava/lang/String;Landroid/widget/Spinner;Ljava/lang/String;Landroid/widget/CheckBox;Lcom/twidroid/activity/aa;Ljava/lang/String;)V
.registers 9
iput-object p1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19;->h:Lcom/twidroid/activity/UberSocialBaseActivity;
iput-boolean p2, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19;->a:Z
iput-object p3, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19;->b:[Ljava/lang/String;
iput-object p4, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19;->c:Landroid/widget/Spinner;
iput-object p5, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19;->d:Ljava/lang/String;
iput-object p6, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19;->e:Landroid/widget/CheckBox;
iput-object p7, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19;->f:Lcom/twidroid/activity/aa;
iput-object p8, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19;->g:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 13
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/UberSocialBaseActivity$19; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
const/4 v1, 0x1
iget-boolean v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19;->a:Z
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19;->h:Lcom/twidroid/activity/UberSocialBaseActivity;
iput-boolean v1, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->ae:Z
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19;->h:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->ad:Landroid/view/MenuItem;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19;->h:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->ad:Landroid/view/MenuItem;
const v3, 0x7f0c01e6
invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;
:cond_1a
new-instance v3, Lcom/twidroid/activity/ac;
invoke-direct {v3}, Lcom/twidroid/activity/ac;-><init>()V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
const-wide/16 v6, 0x3e8
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19;->b:[Ljava/lang/String;
iget-object v8, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19;->c:Landroid/widget/Spinner;
invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I
move-result v8
aget-object v0, v0, v8
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v8
mul-long/2addr v6, v8
add-long/2addr v4, v6
iput-wide v4, v3, Lcom/twidroid/activity/ac;->c:J
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19;->c:Landroid/widget/Spinner;
invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I
move-result v0
iget-object v4, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19;->b:[Ljava/lang/String;
array-length v4, v4
add-int/lit8 v4, v4, -0x1
if-ne v0, v4, :cond_f3
move v0, v1
:goto_45
iput-boolean v0, v3, Lcom/twidroid/activity/ac;->f:Z
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19;->d:Ljava/lang/String;
iput-object v0, v3, Lcom/twidroid/activity/ac;->b:Ljava/lang/String;
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19;->h:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v0
iput v0, v3, Lcom/twidroid/activity/ac;->a:I
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19;->e:Landroid/widget/CheckBox;
invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z
move-result v0
iput-boolean v0, v3, Lcom/twidroid/activity/ac;->d:Z
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19;->f:Lcom/twidroid/activity/aa;
iput-object v0, v3, Lcom/twidroid/activity/ac;->e:Lcom/twidroid/activity/aa;
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19;->h:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ne v0, v1, :cond_f9
new-instance v0, Lcom/twidroid/activity/ab;
iget-object v4, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19;->h:Lcom/twidroid/activity/UberSocialBaseActivity;
invoke-direct {v0, v4}, Lcom/twidroid/activity/ab;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity;)V
new-array v4, v1, [Lcom/twidroid/activity/ac;
aput-object v3, v4, v2
invoke-virtual {v0, v4}, Lcom/twidroid/activity/ab;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19;->h:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/twidroid/b/a/b;->a(Z)I
move-result v4
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19;->h:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->a(Z)I
move-result v5
const-string v6, "Mute"
const/16 v0, 0xa
new-array v7, v0, [Ljava/lang/Object;
const-string v0, "source"
aput-object v0, v7, v2
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19;->g:Ljava/lang/String;
aput-object v0, v7, v1
const/4 v0, 0x2
const-string v1, "type"
aput-object v1, v7, v0
const/4 v1, 0x3
iget-object v0, v3, Lcom/twidroid/activity/ac;->b:Ljava/lang/String;
const-string v2, "@"
invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_f6
const-string v0, "user"
:goto_c1
aput-object v0, v7, v1
const/4 v0, 0x4
const-string v1, "total mutes"
aput-object v1, v7, v0
const/4 v0, 0x5
add-int v1, v5, v4
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v7, v0
const/4 v0, 0x6
const-string v1, "total hashtags"
aput-object v1, v7, v0
const/4 v0, 0x7
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v7, v0
const/16 v0, 0x8
const-string v1, "total users"
aput-object v1, v7, v0
const/16 v0, 0x9
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v7, v0
invoke-static {v7}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
invoke-static {v6, v0}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V
:goto_f2
const-string v1, " - Lcom/twidroid/activity/UberSocialBaseActivity$19; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_f3
move v0, v2
goto/16 :goto_45
:cond_f6
const-string v0, "hashtag"
goto :goto_c1
:cond_f9
new-instance v0, Lcom/twidroid/activity/UberSocialBaseActivity$19$1;
iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$19;->h:Lcom/twidroid/activity/UberSocialBaseActivity;
invoke-direct {v0, p0, v1, v3}, Lcom/twidroid/activity/UberSocialBaseActivity$19$1;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity$19;Landroid/app/Activity;Lcom/twidroid/activity/ac;)V
invoke-virtual {v0}, Lcom/twidroid/activity/UberSocialBaseActivity$19$1;->show()V
goto :goto_f2
.end method