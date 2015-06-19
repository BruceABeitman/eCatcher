.class  Lcom/twidroid/activity/i;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field private a:Z
.field private b:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Lcom/twidroid/activity/InnerCircleManagementActivity;)V
.registers 3
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/activity/i;->a:Z
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/twidroid/activity/i;->b:Ljava/lang/ref/WeakReference;
return-void
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Boolean;
invoke-virtual {p0, p1}, Lcom/twidroid/activity/i;->a([Ljava/lang/Boolean;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method protected varargs a([Ljava/lang/Boolean;)Ljava/util/List;
.registers 4
const/4 v0, 0x0
aget-object v0, p1, v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
iput-boolean v0, p0, Lcom/twidroid/activity/i;->a:Z
invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
iget-boolean v1, p0, Lcom/twidroid/activity/i;->a:Z
if-eqz v1, :cond_1a
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->t()Ljava/util/List;
move-result-object v0
:goto_19
return-object v0
:cond_1a
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->s()Ljava/util/List;
move-result-object v0
goto :goto_19
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/util/List;
invoke-virtual {p0, p1}, Lcom/twidroid/activity/i;->a(Ljava/util/List;)V
return-void
.end method
.method protected a(Ljava/util/List;)V
.registers 3
invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/twidroid/activity/i;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_c
:goto_b
return-void
:cond_c
iget-boolean v0, p0, Lcom/twidroid/activity/i;->a:Z
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/twidroid/activity/i;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/activity/InnerCircleManagementActivity;
invoke-static {v0, p1}, Lcom/twidroid/activity/InnerCircleManagementActivity;->a(Lcom/twidroid/activity/InnerCircleManagementActivity;Ljava/util/List;)V
goto :goto_b
:cond_1c
iget-object v0, p0, Lcom/twidroid/activity/i;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/activity/InnerCircleManagementActivity;
invoke-static {v0, p1}, Lcom/twidroid/activity/InnerCircleManagementActivity;->b(Lcom/twidroid/activity/InnerCircleManagementActivity;Ljava/util/List;)V
goto :goto_b
.end method