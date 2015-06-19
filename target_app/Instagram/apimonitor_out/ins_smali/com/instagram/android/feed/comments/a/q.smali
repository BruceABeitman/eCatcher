.class final Lcom/instagram/android/feed/comments/a/q;
.super Ljava/lang/Object;
.source "CommentThreadFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/feed/comments/a/a;
.method constructor <init>(Lcom/instagram/android/feed/comments/a/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/feed/comments/a/q;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/feed/comments/a/q; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/feed/comments/a/q;->a:Lcom/instagram/android/feed/comments/a/a;
iget-object v1, p0, Lcom/instagram/android/feed/comments/a/q;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-static {v1}, Lcom/instagram/android/feed/comments/a/a;->e(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/android/feed/comments/ui/CommentAutoCompleteTextView;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/android/feed/comments/a/a;->a(Lcom/instagram/android/feed/comments/a/a;Landroid/widget/TextView;)V
const-string v1, " - Lcom/instagram/android/feed/comments/a/q; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method