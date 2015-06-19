.class final Lcom/instagram/i/c;
.super Lcom/instagram/feed/d/k;
.source "NewsfeedStoryUtil.java"
.field final synthetic a:Lcom/instagram/i/a/a/a;
.field final synthetic b:Ljava/lang/String;
.method constructor <init>(Lcom/instagram/i/a/a/a;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/instagram/i/c;->a:Lcom/instagram/i/a/a/a;
iput-object p2, p0, Lcom/instagram/i/c;->b:Ljava/lang/String;
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/instagram/feed/d/k;-><init>(Z)V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/i/c; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/i/c;->a:Lcom/instagram/i/a/a/a;
iget-object v1, p0, Lcom/instagram/i/c;->b:Ljava/lang/String;
invoke-interface {v0, v1}, Lcom/instagram/i/a/a/a;->c(Ljava/lang/String;)V
const-string v1, " - Lcom/instagram/i/c; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method