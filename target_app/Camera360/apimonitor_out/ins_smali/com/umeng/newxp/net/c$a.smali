.class public Lcom/umeng/newxp/net/c$a;
.super Ljava/lang/Object;
.source "XpDownloadAgent.java"
.implements Lcom/umeng/common/net/k;
.field final synthetic a:Lcom/umeng/newxp/net/c;
.field private b:Ljava/lang/String;
.field private c:Lcom/umeng/common/net/c;
.method public constructor <init>(Lcom/umeng/newxp/net/c;)V
.registers 3
iput-object p1, p0, Lcom/umeng/newxp/net/c$a;->a:Lcom/umeng/newxp/net/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/umeng/newxp/net/c;->a(Lcom/umeng/newxp/net/c;)Lcom/umeng/newxp/Promoter;
move-result-object v0
iget-object v0, v0, Lcom/umeng/newxp/Promoter;->url:Ljava/lang/String;
iput-object v0, p0, Lcom/umeng/newxp/net/c$a;->b:Ljava/lang/String;
invoke-static {p1}, Lcom/umeng/newxp/net/c;->b(Lcom/umeng/newxp/net/c;)Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/umeng/common/net/c;->a(Landroid/content/Context;)Lcom/umeng/common/net/c;
move-result-object v0
iput-object v0, p0, Lcom/umeng/newxp/net/c$a;->c:Lcom/umeng/common/net/c;
return-void
.end method
.method public a()V
.registers 6
invoke-static {}, Lcom/umeng/newxp/net/c;->b()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "XpDownloadListener.onStart"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->TIPS_DOWNLOAD:Z
if-eqz v0, :cond_54
iget-object v0, p0, Lcom/umeng/newxp/net/c$a;->a:Lcom/umeng/newxp/net/c;
invoke-static {v0}, Lcom/umeng/newxp/net/c;->b(Lcom/umeng/newxp/net/c;)Landroid/content/Context;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/umeng/newxp/net/c$a;->a:Lcom/umeng/newxp/net/c;
invoke-static {v2}, Lcom/umeng/newxp/net/c;->b(Lcom/umeng/newxp/net/c;)Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
iget-object v3, p0, Lcom/umeng/newxp/net/c$a;->a:Lcom/umeng/newxp/net/c;
invoke-static {v3}, Lcom/umeng/newxp/net/c;->b(Lcom/umeng/newxp/net/c;)Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;
move-result-object v3
const-string/jumbo v4, "umeng_xp_tip_download_pre"
invoke-virtual {v3, v4}, Lcom/umeng/common/c;->f(Ljava/lang/String;)I
move-result v3
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/umeng/newxp/net/c$a;->a:Lcom/umeng/newxp/net/c;
invoke-static {v2}, Lcom/umeng/newxp/net/c;->a(Lcom/umeng/newxp/net/c;)Lcom/umeng/newxp/Promoter;
move-result-object v2
iget-object v2, v2, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:cond_54
iget-object v0, p0, Lcom/umeng/newxp/net/c$a;->a:Lcom/umeng/newxp/net/c;
invoke-static {v0}, Lcom/umeng/newxp/net/c;->c(Lcom/umeng/newxp/net/c;)Lcom/umeng/newxp/net/e;
move-result-object v0
if-eqz v0, :cond_71
new-instance v0, Lcom/umeng/newxp/net/XpReportClient;
iget-object v1, p0, Lcom/umeng/newxp/net/c$a;->a:Lcom/umeng/newxp/net/c;
invoke-static {v1}, Lcom/umeng/newxp/net/c;->b(Lcom/umeng/newxp/net/c;)Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V
iget-object v1, p0, Lcom/umeng/newxp/net/c$a;->a:Lcom/umeng/newxp/net/c;
invoke-static {v1}, Lcom/umeng/newxp/net/c;->c(Lcom/umeng/newxp/net/c;)Lcom/umeng/newxp/net/e;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/n;Lcom/umeng/common/net/m$a;)V
:cond_71
iget-object v0, p0, Lcom/umeng/newxp/net/c$a;->c:Lcom/umeng/common/net/c;
const-string/jumbo v1, "xp"
iget-object v2, p0, Lcom/umeng/newxp/net/c$a;->b:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/umeng/common/net/c;->a(Ljava/lang/String;Ljava/lang/String;)Z
return-void
.end method
.method public a(I)V
.registers 4
invoke-static {}, Lcom/umeng/newxp/net/c;->b()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "XpDownloadListener.onProgressUpdate"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public a(IILjava/lang/String;)V
.registers 7
invoke-static {}, Lcom/umeng/newxp/net/c;->b()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "XpDownloadListener.onEndresult = "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " file = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x1
if-ne p1, v0, :cond_2f
iget-object v0, p0, Lcom/umeng/newxp/net/c$a;->c:Lcom/umeng/common/net/c;
const-string/jumbo v1, "xp"
iget-object v2, p0, Lcom/umeng/newxp/net/c$a;->b:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/umeng/common/net/c;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_2f
return-void
.end method