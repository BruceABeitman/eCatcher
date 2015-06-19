.class final Lcom/bbm/util/aj;
.super Lcom/bbm/util/ez;
.source "ChannelUtil.java"
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Landroid/content/Context;
.field final synthetic c:Landroid/content/Intent;
.field final synthetic d:Lcom/bbm/d/ec;
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Lcom/bbm/d/ec;)V
.registers 6
iput-object p2, p0, Lcom/bbm/util/aj;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/bbm/util/aj;->b:Landroid/content/Context;
iput-object p4, p0, Lcom/bbm/util/aj;->c:Landroid/content/Intent;
iput-object p5, p0, Lcom/bbm/util/aj;->d:Lcom/bbm/d/ec;
invoke-direct {p0, p1}, Lcom/bbm/util/ez;-><init>(Landroid/content/Context;)V
return-void
.end method
.method protected final varargs a([Ljava/lang/String;)Lcom/bbm/d/fd;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/util/ez;->a([Ljava/lang/String;)Lcom/bbm/d/fd;
move-result-object v0
return-object v0
.end method
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/bbm/util/aj;->a([Ljava/lang/String;)Lcom/bbm/d/fd;
move-result-object v0
return-object v0
.end method
.method protected final a(Lcom/bbm/d/fd;)V
.registers 6
invoke-super {p0, p1}, Lcom/bbm/util/ez;->a(Lcom/bbm/d/fd;)V
iget-object v0, p0, Lcom/bbm/util/aj;->a:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/ac;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_35
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "repostTempImg"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
move-object v1, v0
:goto_1b
const/4 v0, 0x0
if-eqz p1, :cond_29
invoke-virtual {p1}, Lcom/bbm/d/fd;->c()[B
move-result-object v0
iget-object v2, p0, Lcom/bbm/util/aj;->b:Landroid/content/Context;
const/4 v3, 0x1
invoke-static {v0, v1, v2, v3}, Lcom/bbm/util/ac;->a([BLjava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;
move-result-object v0
:cond_29
if-eqz v0, :cond_39
iget-object v1, p0, Lcom/bbm/util/aj;->c:Landroid/content/Intent;
iget-object v2, p0, Lcom/bbm/util/aj;->d:Lcom/bbm/d/ec;
iget-object v3, p0, Lcom/bbm/util/aj;->b:Landroid/content/Context;
invoke-static {v1, v0, v2, v3}, Lcom/bbm/util/ac;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/bbm/d/ec;Landroid/content/Context;)V
:goto_34
return-void
:cond_35
const-string v0, "repostTempImg"
move-object v1, v0
goto :goto_1b
:cond_39
iget-object v0, p0, Lcom/bbm/util/aj;->b:Landroid/content/Context;
iget-object v1, p0, Lcom/bbm/util/aj;->b:Landroid/content/Context;
const v2, 0x7f0e01f4
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;I)V
goto :goto_34
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/bbm/d/fd;
invoke-virtual {p0, p1}, Lcom/bbm/util/aj;->a(Lcom/bbm/d/fd;)V
return-void
.end method