.class final Lcom/instagram/android/feed/comments/a/e;
.super Ljava/lang/Object;
.source "CommentThreadFragment.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/instagram/android/feed/comments/a/a;
.method constructor <init>(Lcom/instagram/android/feed/comments/a/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/feed/comments/a/e;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/feed/comments/a/e; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "http://help.instagram.com/customer/portal/articles/245800-reducing-comment-spam"
iget-object v1, p0, Lcom/instagram/android/feed/comments/a/e;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-virtual {v1}, Lcom/instagram/android/feed/comments/a/a;->n()Landroid/content/Context;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/api/h/d;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
new-instance v1, Landroid/content/Intent;
const-string v2, "android.intent.action.VIEW"
invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
iget-object v0, p0, Lcom/instagram/android/feed/comments/a/e;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-virtual {v0, v1}, Lcom/instagram/android/feed/comments/a/a;->a(Landroid/content/Intent;)V
const-string v1, " - Lcom/instagram/android/feed/comments/a/e; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method