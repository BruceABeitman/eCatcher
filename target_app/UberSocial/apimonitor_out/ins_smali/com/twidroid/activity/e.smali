.class  Lcom/twidroid/activity/e;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/activity/FollowerRequests;
.method private constructor <init>(Lcom/twidroid/activity/FollowerRequests;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/e;->a:Lcom/twidroid/activity/FollowerRequests;
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/twidroid/activity/FollowerRequests;Lcom/twidroid/activity/FollowerRequests$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/activity/e;-><init>(Lcom/twidroid/activity/FollowerRequests;)V
return-void
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/twidroid/activity/e;->a([Ljava/lang/Void;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/twidroid/activity/e;->a:Lcom/twidroid/activity/FollowerRequests;
iget-object v0, v0, Lcom/twidroid/activity/FollowerRequests;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/net/a/c/c;->s()Ljava/util/List;
:try_end_f
.catch Lcom/ubermedia/net/a/a/a; {:try_start_0 .. :try_end_f} :catch_11
move-result-object v0
:goto_10
return-object v0
:catch_11
move-exception v0
invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->printStackTrace()V
const/4 v0, 0x0
goto :goto_10
.end method
.method protected a()V
.registers 4
iget-object v0, p0, Lcom/twidroid/activity/e;->a:Lcom/twidroid/activity/FollowerRequests;
const/4 v1, -0x1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/twidroid/activity/FollowerRequests;->b(ILjava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/e;->a:Lcom/twidroid/activity/FollowerRequests;
invoke-static {v0}, Lcom/twidroid/activity/FollowerRequests;->a(Lcom/twidroid/activity/FollowerRequests;)V
iget-object v0, p0, Lcom/twidroid/activity/e;->a:Lcom/twidroid/activity/FollowerRequests;
invoke-static {v0, p0}, Lcom/twidroid/activity/FollowerRequests;->a(Lcom/twidroid/activity/FollowerRequests;Lcom/ubermedia/a/a;)V
return-void
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/util/List;
invoke-virtual {p0, p1}, Lcom/twidroid/activity/e;->a(Ljava/util/List;)V
return-void
.end method
.method protected a(Ljava/util/List;)V
.registers 5
iget-object v0, p0, Lcom/twidroid/activity/e;->a:Lcom/twidroid/activity/FollowerRequests;
invoke-virtual {v0}, Lcom/twidroid/activity/FollowerRequests;->r()V
iget-object v0, p0, Lcom/twidroid/activity/e;->a:Lcom/twidroid/activity/FollowerRequests;
invoke-static {v0}, Lcom/twidroid/activity/FollowerRequests;->b(Lcom/twidroid/activity/FollowerRequests;)V
if-eqz p1, :cond_1d
iget-object v0, p0, Lcom/twidroid/activity/e;->a:Lcom/twidroid/activity/FollowerRequests;
invoke-virtual {v0}, Lcom/twidroid/activity/FollowerRequests;->i()Landroid/widget/ListView;
move-result-object v0
new-instance v1, Lcom/twidroid/activity/f;
iget-object v2, p0, Lcom/twidroid/activity/e;->a:Lcom/twidroid/activity/FollowerRequests;
invoke-direct {v1, v2, p1}, Lcom/twidroid/activity/f;-><init>(Lcom/twidroid/activity/FollowerRequests;Ljava/util/List;)V
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
:goto_1c
return-void
:cond_1d
iget-object v0, p0, Lcom/twidroid/activity/e;->a:Lcom/twidroid/activity/FollowerRequests;
iget-object v1, p0, Lcom/twidroid/activity/e;->a:Lcom/twidroid/activity/FollowerRequests;
const v2, 0x7f0c0028
invoke-virtual {v1, v2}, Lcom/twidroid/activity/FollowerRequests;->e(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/activity/FollowerRequests;->g(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/e;->a:Lcom/twidroid/activity/FollowerRequests;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
goto :goto_1c
.end method
.method protected b()V
.registers 4
const-string v0, "FollowerRequests"
const-string v1, "::ShowFollowerRequestsTask Cancelled"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/e;->a:Lcom/twidroid/activity/FollowerRequests;
invoke-virtual {v0}, Lcom/twidroid/activity/FollowerRequests;->r()V
iget-object v0, p0, Lcom/twidroid/activity/e;->a:Lcom/twidroid/activity/FollowerRequests;
invoke-static {v0}, Lcom/twidroid/activity/FollowerRequests;->b(Lcom/twidroid/activity/FollowerRequests;)V
iget-object v0, p0, Lcom/twidroid/activity/e;->a:Lcom/twidroid/activity/FollowerRequests;
iget-object v1, p0, Lcom/twidroid/activity/e;->a:Lcom/twidroid/activity/FollowerRequests;
const v2, 0x7f0c0028
invoke-virtual {v1, v2}, Lcom/twidroid/activity/FollowerRequests;->e(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/activity/FollowerRequests;->g(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/e;->a:Lcom/twidroid/activity/FollowerRequests;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
return-void
.end method