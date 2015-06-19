.class  Lcom/twidroid/activity/y;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/activity/UberSocialAccounts;
.field private b:Landroid/content/Context;
.method public constructor <init>(Lcom/twidroid/activity/UberSocialAccounts;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/activity/y;->a:Lcom/twidroid/activity/UberSocialAccounts;
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
iput-object p2, p0, Lcom/twidroid/activity/y;->b:Landroid/content/Context;
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/y;->a:Lcom/twidroid/activity/UberSocialAccounts;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccounts;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 12
iget-object v0, p0, Lcom/twidroid/activity/y;->a:Lcom/twidroid/activity/UberSocialAccounts;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccounts;->c:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
move-object v7, v0
check-cast v7, Lcom/twidroid/model/twitter/c;
if-nez p2, :cond_26
new-instance v0, Lcom/twidroid/activity/z;
iget-object v1, p0, Lcom/twidroid/activity/y;->a:Lcom/twidroid/activity/UberSocialAccounts;
iget-object v2, p0, Lcom/twidroid/activity/y;->b:Landroid/content/Context;
invoke-virtual {v7}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v3
const-string v4, ""
invoke-virtual {v7}, Lcom/twidroid/model/twitter/c;->p()I
move-result v5
int-to-long v5, v5
invoke-virtual {v7}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v7
invoke-direct/range {v0 .. v7}, Lcom/twidroid/activity/z;-><init>(Lcom/twidroid/activity/UberSocialAccounts;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
:goto_25
return-object v0
:cond_26
move-object v0, p2
check-cast v0, Lcom/twidroid/activity/z;
invoke-virtual {v7}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v1
const-string v2, ""
invoke-virtual {v7}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v3
invoke-virtual {v7}, Lcom/twidroid/model/twitter/c;->p()I
move-result v4
int-to-long v4, v4
invoke-virtual/range {v0 .. v5}, Lcom/twidroid/activity/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
invoke-virtual {v7}, Lcom/twidroid/model/twitter/c;->p()I
move-result v1
int-to-long v1, v1
invoke-virtual {v0, v1, v2}, Lcom/twidroid/activity/z;->a(J)V
goto :goto_25
.end method