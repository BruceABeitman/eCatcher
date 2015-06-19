.class final Lcom/instagram/android/feed/comments/b/b;
.super Lcom/instagram/api/j/a;
.source "CommentPoster.java"
.field final synthetic a:Lcom/instagram/android/feed/comments/a/a;
.field final synthetic b:Lcom/instagram/feed/d/b;
.method constructor <init>(Lcom/instagram/android/feed/comments/a/a;Lcom/instagram/feed/d/b;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/feed/comments/b/b;->a:Lcom/instagram/android/feed/comments/a/a;
iput-object p2, p0, Lcom/instagram/android/feed/comments/b/b;->b:Lcom/instagram/feed/d/b;
invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V
return-void
.end method
.method protected final a(Lcom/instagram/api/j/j;)V
.registers 4
if-eqz p1, :cond_f
invoke-static {p1}, Lcom/instagram/g/c;->b(Lcom/instagram/api/j/j;)Z
move-result v0
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/instagram/android/feed/comments/b/b;->a:Lcom/instagram/android/feed/comments/a/a;
iget-object v1, p0, Lcom/instagram/android/feed/comments/b/b;->b:Lcom/instagram/feed/d/b;
invoke-virtual {v0, v1, p1}, Lcom/instagram/android/feed/comments/a/a;->a(Lcom/instagram/feed/d/b;Lcom/instagram/api/j/j;)V
:goto_f
:cond_f
return-void
:cond_10
iget-object v0, p0, Lcom/instagram/android/feed/comments/b/b;->a:Lcom/instagram/android/feed/comments/a/a;
iget-object v1, p0, Lcom/instagram/android/feed/comments/b/b;->b:Lcom/instagram/feed/d/b;
invoke-virtual {v0, v1}, Lcom/instagram/android/feed/comments/a/a;->c(Lcom/instagram/feed/d/b;)V
goto :goto_f
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
return-void
.end method