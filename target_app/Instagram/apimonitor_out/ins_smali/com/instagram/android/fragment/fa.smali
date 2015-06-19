.class final Lcom/instagram/android/fragment/fa;
.super Lcom/instagram/android/fragment/j;
.source "SingleMediaFeedFragment.java"
.field final synthetic b:Lcom/instagram/android/fragment/ex;
.method private constructor <init>(Lcom/instagram/android/fragment/ex;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/fa;->b:Lcom/instagram/android/fragment/ex;
invoke-direct {p0, p1}, Lcom/instagram/android/fragment/j;-><init>(Lcom/instagram/android/fragment/a;)V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/fragment/ex;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/fragment/fa;-><init>(Lcom/instagram/android/fragment/ex;)V
return-void
.end method
.method protected final a(Lcom/instagram/feed/a/b;)V
.registers 4
invoke-super {p0, p1}, Lcom/instagram/android/fragment/j;->a(Lcom/instagram/feed/a/b;)V
invoke-virtual {p1}, Lcom/instagram/feed/a/b;->a()Ljava/util/List;
move-result-object v0
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/l;
iget-object v1, p0, Lcom/instagram/android/fragment/fa;->b:Lcom/instagram/android/fragment/ex;
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->v()Lcom/instagram/model/a/a;
move-result-object v0
invoke-static {v1, v0}, Lcom/instagram/android/fragment/ex;->a(Lcom/instagram/android/fragment/ex;Lcom/instagram/model/a/a;)Lcom/instagram/model/a/a;
iget-object v0, p0, Lcom/instagram/android/fragment/fa;->b:Lcom/instagram/android/fragment/ex;
invoke-virtual {v0}, Lcom/instagram/android/fragment/ex;->l()Landroid/support/v4/app/k;
move-result-object v0
if-eqz v0, :cond_2e
iget-object v0, p0, Lcom/instagram/android/fragment/fa;->b:Lcom/instagram/android/fragment/ex;
invoke-virtual {v0}, Lcom/instagram/android/fragment/ex;->u()Z
move-result v0
if-eqz v0, :cond_2e
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/a/e;->c()V
:cond_2e
return-void
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/feed/a/b;
invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/fa;->a(Lcom/instagram/feed/a/b;)V
return-void
.end method