.class final Lcom/instagram/android/feed/comments/a/p;
.super Ljava/lang/Object;
.source "CommentThreadFragment.java"
.implements Landroid/widget/TextView$OnEditorActionListener;
.field final synthetic a:Lcom/instagram/android/feed/comments/a/a;
.method constructor <init>(Lcom/instagram/android/feed/comments/a/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/feed/comments/a/p;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.registers 6
const/4 v0, 0x4
if-ne p2, v0, :cond_10
iget-object v0, p0, Lcom/instagram/android/feed/comments/a/p;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-static {v0}, Lcom/instagram/android/feed/comments/a/a;->c(Lcom/instagram/android/feed/comments/a/a;)Z
move-result v0
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/instagram/android/feed/comments/a/p;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-static {v0, p1}, Lcom/instagram/android/feed/comments/a/a;->a(Lcom/instagram/android/feed/comments/a/a;Landroid/widget/TextView;)V
:cond_10
iget-object v0, p0, Lcom/instagram/android/feed/comments/a/p;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-virtual {v0}, Lcom/instagram/android/feed/comments/a/a;->o()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
iget v0, v0, Landroid/content/res/Configuration;->orientation:I
const/4 v1, 0x2
if-eq v0, v1, :cond_21
const/4 v0, 0x1
:goto_20
return v0
:cond_21
const/4 v0, 0x0
goto :goto_20
.end method