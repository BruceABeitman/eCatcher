.class final Lcom/instagram/android/feed/comments/a/s;
.super Lcom/instagram/api/j/a;
.source "CommentThreadFragment.java"
.field final synthetic a:Lcom/instagram/android/feed/comments/a/a;
.method private constructor <init>(Lcom/instagram/android/feed/comments/a/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/feed/comments/a/s;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/feed/comments/a/a;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/feed/comments/a/s;-><init>(Lcom/instagram/android/feed/comments/a/a;)V
return-void
.end method
.method protected final a(Lcom/instagram/api/j/j;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/comments/a/s;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-virtual {v0}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/android/feed/comments/a/s;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-virtual {v0}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/instagram/ui/dialog/a;->a(Landroid/content/Context;)V
:cond_11
return-void
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
return-void
.end method