.class final Lcom/instagram/feed/comments/a/b;
.super Ljava/lang/Object;
.source "CommentRowViewBinder.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/feed/d/b;
.field final synthetic b:Lcom/instagram/feed/comments/a/a;
.method constructor <init>(Lcom/instagram/feed/comments/a/a;Lcom/instagram/feed/d/b;)V
.registers 3
iput-object p1, p0, Lcom/instagram/feed/comments/a/b;->b:Lcom/instagram/feed/comments/a/a;
iput-object p2, p0, Lcom/instagram/feed/comments/a/b;->a:Lcom/instagram/feed/d/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/feed/comments/a/b; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/feed/comments/a/b;->b:Lcom/instagram/feed/comments/a/a;
invoke-static {v0}, Lcom/instagram/feed/comments/a/a;->a(Lcom/instagram/feed/comments/a/a;)Lcom/instagram/feed/comments/a/g;
move-result-object v0
iget-object v1, p0, Lcom/instagram/feed/comments/a/b;->a:Lcom/instagram/feed/d/b;
invoke-virtual {v1}, Lcom/instagram/feed/d/b;->g()Lcom/instagram/user/c/a;
move-result-object v1
const-string v2, "comment_owner"
invoke-interface {v0, v1, v2}, Lcom/instagram/feed/comments/a/g;->a(Lcom/instagram/user/c/a;Ljava/lang/String;)V
const-string v1, " - Lcom/instagram/feed/comments/a/b; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method