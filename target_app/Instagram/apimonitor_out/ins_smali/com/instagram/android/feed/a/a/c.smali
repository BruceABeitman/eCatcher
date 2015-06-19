.class final Lcom/instagram/android/feed/a/a/c;
.super Ljava/lang/Object;
.source "FeedItemViewableHelper.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/android/feed/a/a/b;
.method constructor <init>(Lcom/instagram/android/feed/a/a/b;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/feed/a/a/c;->a:Lcom/instagram/android/feed/a/a/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/a/c;->a:Lcom/instagram/android/feed/a/a/b;
invoke-static {v0}, Lcom/instagram/android/feed/a/a/b;->a(Lcom/instagram/android/feed/a/a/b;)Lcom/instagram/android/feed/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;
move-result-object v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/instagram/android/feed/a/a/c;->a:Lcom/instagram/android/feed/a/a/b;
invoke-static {v0}, Lcom/instagram/android/feed/a/a/b;->b(Lcom/instagram/android/feed/a/a/b;)Lcom/instagram/feed/h/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/feed/h/a;->a()V
:cond_15
return-void
.end method