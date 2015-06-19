.class final Lcom/instagram/android/people/b/f;
.super Lcom/instagram/api/j/a;
.source "PeopleTagFragment.java"
.field final synthetic a:Lcom/instagram/android/people/b/a;
.method private constructor <init>(Lcom/instagram/android/people/b/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/people/b/f;->a:Lcom/instagram/android/people/b/a;
invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/people/b/a;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/people/b/f;-><init>(Lcom/instagram/android/people/b/a;)V
return-void
.end method
.method private c()V
.registers 3
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
new-instance v1, Lcom/instagram/android/people/b/g;
invoke-direct {v1, p0}, Lcom/instagram/android/people/b/g;-><init>(Lcom/instagram/android/people/b/f;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public final a()V
.registers 3
invoke-super {p0}, Lcom/instagram/api/j/a;->a()V
iget-object v0, p0, Lcom/instagram/android/people/b/f;->a:Lcom/instagram/android/people/b/a;
invoke-static {v0}, Lcom/instagram/android/people/b/a;->d(Lcom/instagram/android/people/b/a;)Lcom/instagram/ui/widget/refresh/RefreshButton;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setDisplayedChild(I)V
return-void
.end method
.method protected final a(Lcom/instagram/api/j/j;)V
.registers 5
invoke-super {p0, p1}, Lcom/instagram/api/j/a;->a(Lcom/instagram/api/j/j;)V
iget-object v0, p0, Lcom/instagram/android/people/b/f;->a:Lcom/instagram/android/people/b/a;
invoke-virtual {v0}, Lcom/instagram/android/people/b/a;->n()Landroid/content/Context;
move-result-object v0
sget v1, Lcom/facebook/az;->request_error:I
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
return-void
.end method
.method protected final synthetic a(Ljava/lang/Object;)V
.registers 2
invoke-direct {p0}, Lcom/instagram/android/people/b/f;->c()V
return-void
.end method
.method public final b()V
.registers 3
invoke-super {p0}, Lcom/instagram/api/j/a;->b()V
iget-object v0, p0, Lcom/instagram/android/people/b/f;->a:Lcom/instagram/android/people/b/a;
invoke-static {v0}, Lcom/instagram/android/people/b/a;->d(Lcom/instagram/android/people/b/a;)Lcom/instagram/ui/widget/refresh/RefreshButton;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setDisplayedChild(I)V
return-void
.end method