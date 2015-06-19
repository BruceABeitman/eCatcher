.class final Lcom/instagram/feed/d/w;
.super Lcom/instagram/feed/d/k;
.source "MediaRenderer.java"
.field final synthetic a:Lcom/instagram/feed/d/l;
.method constructor <init>(Lcom/instagram/feed/d/l;)V
.registers 3
iput-object p1, p0, Lcom/instagram/feed/d/w;->a:Lcom/instagram/feed/d/l;
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/instagram/feed/d/k;-><init>(Z)V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/feed/d/w; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
const-string v1, "Media.NUMBER_LIKES_CLICKED"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "Media.EXTRA_MEDIA_ID"
iget-object v2, p0, Lcom/instagram/feed/d/w;->a:Lcom/instagram/feed/d/l;
invoke-virtual {v2}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/Intent;)Z
const-string v1, " - Lcom/instagram/feed/d/w; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method