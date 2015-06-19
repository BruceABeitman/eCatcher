.class final Lcom/instagram/i/c/d;
.super Lcom/instagram/api/k/a/h;
.source "NewsfeedFollowRequestsFragment.java"
.field final synthetic a:Lcom/instagram/i/c/a;
.method private constructor <init>(Lcom/instagram/i/c/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/i/c/d;->a:Lcom/instagram/i/c/a;
invoke-direct {p0}, Lcom/instagram/api/k/a/h;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/i/c/a;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/i/c/d;-><init>(Lcom/instagram/i/c/a;)V
return-void
.end method
.method private a(Lcom/instagram/user/e/b;)V
.registers 4
iget-object v0, p0, Lcom/instagram/i/c/d;->a:Lcom/instagram/i/c/a;
invoke-static {v0}, Lcom/instagram/i/c/a;->a(Lcom/instagram/i/c/a;)Lcom/instagram/i/a/c;
move-result-object v0
invoke-virtual {p1}, Lcom/instagram/user/e/b;->a()Ljava/util/List;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/i/a/c;->a(Ljava/util/List;)V
iget-object v0, p0, Lcom/instagram/i/c/d;->a:Lcom/instagram/i/c/a;
invoke-virtual {p1}, Lcom/instagram/user/e/b;->a()Ljava/util/List;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/i/c/a;->a(Lcom/instagram/i/c/a;Ljava/util/List;)V
return-void
.end method
.method private b(Lcom/instagram/api/k/a/i;)V
.registers 4
invoke-super {p0, p1}, Lcom/instagram/api/k/a/h;->b(Ljava/lang/Object;)V
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V
return-void
.end method
.method public final a()V
.registers 3
invoke-super {p0}, Lcom/instagram/api/k/a/h;->a()V
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V
return-void
.end method
.method public final a(Lcom/instagram/api/k/a/i;)V
.registers 5
invoke-super {p0, p1}, Lcom/instagram/api/k/a/h;->a(Lcom/instagram/api/k/a/i;)V
iget-object v0, p0, Lcom/instagram/i/c/d;->a:Lcom/instagram/i/c/a;
invoke-virtual {v0}, Lcom/instagram/i/c/a;->l()Landroid/support/v4/app/k;
move-result-object v0
sget v1, Lcom/facebook/az;->request_error:I
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
return-void
.end method
.method public final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/user/e/b;
invoke-direct {p0, p1}, Lcom/instagram/i/c/d;->a(Lcom/instagram/user/e/b;)V
return-void
.end method
.method public final bridge synthetic b(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/api/k/a/i;
invoke-direct {p0, p1}, Lcom/instagram/i/c/d;->b(Lcom/instagram/api/k/a/i;)V
return-void
.end method