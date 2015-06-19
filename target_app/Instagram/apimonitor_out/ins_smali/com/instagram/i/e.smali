.class final Lcom/instagram/i/e;
.super Lcom/instagram/feed/d/k;
.source "NewsfeedStoryUtil.java"
.field final synthetic a:Lcom/instagram/i/a/a/a;
.field final synthetic b:Ljava/lang/String;
.method constructor <init>(Lcom/instagram/i/a/a/a;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/instagram/i/e;->a:Lcom/instagram/i/a/a/a;
iput-object p2, p0, Lcom/instagram/i/e;->b:Ljava/lang/String;
invoke-direct {p0}, Lcom/instagram/feed/d/k;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/i/e; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/i/e;->a:Lcom/instagram/i/a/a/a;
iget-object v1, p0, Lcom/instagram/i/e;->b:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
const-string v2, "#"
const-string v3, ""
invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/instagram/i/a/a/a;->e(Ljava/lang/String;)V
const-string v1, " - Lcom/instagram/i/e; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method