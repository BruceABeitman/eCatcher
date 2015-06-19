.class final Lcom/instagram/android/fragment/eu;
.super Ljava/lang/Object;
.source "ShortUrlFeedFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/android/feed/b/a/c;
.field final synthetic b:Lcom/instagram/android/fragment/et;
.method constructor <init>(Lcom/instagram/android/fragment/et;Lcom/instagram/android/feed/b/a/c;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/fragment/eu;->b:Lcom/instagram/android/fragment/et;
iput-object p2, p0, Lcom/instagram/android/fragment/eu;->a:Lcom/instagram/android/feed/b/a/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 5
iget-object v0, p0, Lcom/instagram/android/fragment/eu;->b:Lcom/instagram/android/fragment/et;
iget-object v0, v0, Lcom/instagram/android/fragment/et;->a:Lcom/instagram/android/fragment/es;
invoke-virtual {v0}, Lcom/instagram/android/fragment/es;->l()Landroid/support/v4/app/k;
move-result-object v0
check-cast v0, Lcom/instagram/base/activity/a;
invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/fragment/eu;->b:Lcom/instagram/android/fragment/et;
iget-object v2, v2, Lcom/instagram/android/fragment/et;->a:Lcom/instagram/android/fragment/es;
invoke-virtual {v2}, Lcom/instagram/android/fragment/es;->p()Landroid/support/v4/app/s;
move-result-object v2
iget-object v3, p0, Lcom/instagram/android/fragment/eu;->a:Lcom/instagram/android/feed/b/a/c;
invoke-virtual {v3}, Lcom/instagram/android/feed/b/a/c;->b()Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v2, v3}, Lcom/instagram/n/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/base/a/a/a;->b()Lcom/instagram/base/a/a/a;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/base/a/a/a;->a()V
invoke-virtual {v0}, Lcom/instagram/base/activity/a;->k()V
return-void
.end method