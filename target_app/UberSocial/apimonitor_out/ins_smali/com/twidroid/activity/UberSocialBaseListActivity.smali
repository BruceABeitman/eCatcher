.class public abstract Lcom/twidroid/activity/UberSocialBaseListActivity;
.super Lcom/twidroid/activity/UberSocialBaseActivity;
.source "SourceFile"
.field static final i:Ljava/lang/String; = "UberSocialBaseListActivity"
.field private b:Landroid/widget/ListView;
.field  j:Landroid/widget/ListAdapter;
.field protected k:Lcom/twidroid/ui/a/am;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/twidroid/activity/UberSocialBaseActivity;-><init>()V
return-void
.end method
.method protected a(Landroid/widget/ListAdapter;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/activity/UberSocialBaseListActivity;->j:Landroid/widget/ListAdapter;
invoke-virtual {p0}, Lcom/twidroid/activity/UberSocialBaseListActivity;->i()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
return-void
.end method
.method public a(J)Z
.registers 9
const/4 v1, 0x1
const/4 v2, 0x0
:try_start_2
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseListActivity;->k:Lcom/twidroid/ui/a/am;
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->c()Ljava/util/List;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_e
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_24
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/Tweet;
iget-wide v4, v0, Lcom/twidroid/model/twitter/Tweet;->x:J
cmp-long v4, v4, p1
if-nez v4, :cond_e
sput-object v0, Lcom/twidroid/activity/UberSocialBaseListActivity;->Y:Lcom/twidroid/model/twitter/Tweet;
:try_end_22
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_3b
move v0, v1
:goto_23
return v0
:cond_24
:try_start_24
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseListActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0, p1, p2}, Lcom/twidroid/b/a/b;->m(J)Lcom/twidroid/model/twitter/Tweet;
move-result-object v0
sput-object v0, Lcom/twidroid/activity/UberSocialBaseListActivity;->Y:Lcom/twidroid/model/twitter/Tweet;
sget-object v0, Lcom/twidroid/activity/UberSocialBaseListActivity;->Y:Lcom/twidroid/model/twitter/Tweet;
:try_end_32
.catch Ljava/lang/Exception; {:try_start_24 .. :try_end_32} :catch_36
if-eqz v0, :cond_39
move v0, v1
goto :goto_23
:catch_36
move-exception v0
move v0, v2
goto :goto_23
:cond_39
move v0, v2
goto :goto_23
:catch_3b
move-exception v0
:try_start_3c
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseListActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0, p1, p2}, Lcom/twidroid/b/a/b;->m(J)Lcom/twidroid/model/twitter/Tweet;
move-result-object v0
sput-object v0, Lcom/twidroid/activity/UberSocialBaseListActivity;->Y:Lcom/twidroid/model/twitter/Tweet;
const-string v3, "UberSocialBaseListActivity"
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Current Status:  "
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v4, " msg: "
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
sget-object v0, Lcom/twidroid/activity/UberSocialBaseListActivity;->Y:Lcom/twidroid/model/twitter/Tweet;
if-nez v0, :cond_72
const-string v0, "null"
:goto_65
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v3, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
move v0, v1
goto :goto_23
:cond_72
sget-object v0, Lcom/twidroid/activity/UberSocialBaseListActivity;->Y:Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;
:try_end_77
.catch Ljava/lang/Exception; {:try_start_3c .. :try_end_77} :catch_79
move-result-object v0
goto :goto_65
:catch_79
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
move v0, v2
goto :goto_23
.end method
.method public f(Z)V
.registers 2
return-void
.end method
.method public i()Landroid/widget/ListView;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseListActivity;->b:Landroid/widget/ListView;
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseListActivity;->b:Landroid/widget/ListView;
:goto_6
return-object v0
:cond_7
const v0, 0x102000a
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialBaseListActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/twidroid/activity/UberSocialBaseListActivity;->b:Landroid/widget/ListView;
goto :goto_6
.end method
.method public j()Landroid/widget/ListAdapter;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseListActivity;->j:Landroid/widget/ListAdapter;
return-object v0
.end method