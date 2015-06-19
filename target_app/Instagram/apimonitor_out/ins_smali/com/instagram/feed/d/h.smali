.class final Lcom/instagram/feed/d/h;
.super Lcom/instagram/feed/d/k;
.source "CommentRenderer.java"
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/instagram/feed/d/b;
.method constructor <init>(ZLjava/lang/String;Lcom/instagram/feed/d/b;)V
.registers 4
iput-object p2, p0, Lcom/instagram/feed/d/h;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/instagram/feed/d/h;->b:Lcom/instagram/feed/d/b;
invoke-direct {p0, p1}, Lcom/instagram/feed/d/k;-><init>(Z)V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/feed/d/h; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
const-string v1, "Media.COMMENT_MENTION_CLICKED"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "Media.EXTRA_USERNAME"
iget-object v2, p0, Lcom/instagram/feed/d/h;->a:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v2
const-string v3, "@"
const-string v4, ""
invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "Media.EXTRA_MEDIA_ID"
iget-object v2, p0, Lcom/instagram/feed/d/h;->b:Lcom/instagram/feed/d/b;
invoke-virtual {v2}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/Intent;)Z
const-string v1, " - Lcom/instagram/feed/d/h; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method