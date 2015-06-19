.class final Lcom/instagram/android/feed/comments/a/l;
.super Landroid/database/DataSetObserver;
.source "CommentThreadFragment.java"
.field final synthetic a:Lcom/instagram/android/feed/comments/a/a;
.method constructor <init>(Lcom/instagram/android/feed/comments/a/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/feed/comments/a/l;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
return-void
.end method
.method public final onChanged()V
.registers 2
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/a/e;->c()V
return-void
.end method