.class final Lcom/instagram/android/feed/comments/a/o;
.super Ljava/lang/Object;
.source "CommentThreadFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/android/feed/comments/a/a;
.method constructor <init>(Lcom/instagram/android/feed/comments/a/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/feed/comments/a/o;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/comments/a/o;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-virtual {v0}, Lcom/instagram/android/feed/comments/a/a;->D()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/instagram/android/feed/comments/a/o;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-virtual {v0}, Lcom/instagram/android/feed/comments/a/a;->q_()Landroid/widget/ListView;
move-result-object v0
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/instagram/android/feed/comments/a/o;->a:Lcom/instagram/android/feed/comments/a/a;
iget-object v1, p0, Lcom/instagram/android/feed/comments/a/o;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-static {v1}, Lcom/instagram/android/feed/comments/a/a;->b(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/comments/a/i;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/feed/comments/a/i;->getCount()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v1}, Lcom/instagram/android/feed/comments/a/a;->a_(I)V
:cond_21
return-void
.end method