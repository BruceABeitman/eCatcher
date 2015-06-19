.class final Lcom/instagram/android/feed/a/o;
.super Lcom/instagram/android/j/c;
.source "UserDetailFeedAdapter.java"
.field final synthetic a:Lcom/instagram/android/feed/a/n;
.method constructor <init>(Lcom/instagram/android/feed/a/n;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/feed/a/o;->a:Lcom/instagram/android/feed/a/n;
invoke-direct {p0}, Lcom/instagram/android/j/c;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/a/o;->a:Lcom/instagram/android/feed/a/n;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/instagram/android/feed/a/n;->a(Lcom/instagram/android/feed/a/n;Z)Z
iget-object v0, p0, Lcom/instagram/android/feed/a/o;->a:Lcom/instagram/android/feed/a/n;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/n;->notifyDataSetChanged()V
return-void
.end method
.method public final a(Lcom/instagram/user/c/a;)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/feed/a/o;->a:Lcom/instagram/android/feed/a/n;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/instagram/android/feed/a/n;->a(Lcom/instagram/android/feed/a/n;Z)Z
iget-object v0, p0, Lcom/instagram/android/feed/a/o;->a:Lcom/instagram/android/feed/a/n;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/n;->notifyDataSetChanged()V
return-void
.end method