.class public final Lcom/instagram/feed/comments/util/ReportCommentUtil;
.super Ljava/lang/Object;
.source "ReportCommentUtil.java"
.method public static a(Landroid/content/Context;Lcom/instagram/feed/d/b;Z)V
.registers 9
const/4 v4, 0x1
const/4 v5, 0x0
const-string v0, "/media/%s/comment/%s/flag"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
invoke-virtual {p1}, Lcom/instagram/feed/d/b;->d()Ljava/lang/String;
move-result-object v2
aput-object v2, v1, v5
invoke-virtual {p1}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;
move-result-object v2
aput-object v2, v1, v4
invoke-static {v0, v1}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
sget v1, Lcom/facebook/az;->flag_report_abuse:I
invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
new-instance v2, Landroid/content/Intent;
const-class v3, Lcom/instagram/simplewebview/SimpleWebViewActivity;
invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v3, "SimpleWebViewFragment.ARGUMENT_URL"
invoke-static {v0}, Lcom/instagram/api/h/d;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v0, "SimpleWebViewFragment.ARGUMENT_LOAD_SAME_HOST"
invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v0, "SimpleWebViewFragment.ARGUMENT_TITLE"
invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v0, "SimpleWebViewFragment.ARGUMENT_DELEGATE"
new-instance v1, Lcom/instagram/feed/comments/util/ReportCommentUtil$ReportCommentDelegate;
invoke-virtual {p1}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;
move-result-object v3
invoke-virtual {p1}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;
move-result-object v4
invoke-virtual {v4}, Lcom/instagram/feed/d/l;->f()Ljava/lang/String;
move-result-object v4
invoke-direct {v1, v3, v4, p2, v5}, Lcom/instagram/feed/comments/util/ReportCommentUtil$ReportCommentDelegate;-><init>(Ljava/lang/String;Ljava/lang/String;ZB)V
invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method