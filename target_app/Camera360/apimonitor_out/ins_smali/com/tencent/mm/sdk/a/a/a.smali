.class public final Lcom/tencent/mm/sdk/a/a/a;
.super Ljava/lang/Object;
.method public static a(Landroid/content/Context;Lcom/tencent/mm/sdk/a/a/a$a;)Z
.registers 8
const v5, 0x22000001
const/4 v0, 0x0
if-eqz p0, :cond_8
if-nez p1, :cond_12
:cond_8
const-string/jumbo v1, "MicroMsg.SDK.MMessage"
const-string/jumbo v2, "send fail, invalid argument"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_11
return v0
:cond_12
iget-object v1, p1, Lcom/tencent/mm/sdk/a/a/a$a;->m:Ljava/lang/String;
invoke-static {v1}, Lcom/tencent/mm/sdk/b/c;->a(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_24
const-string/jumbo v1, "MicroMsg.SDK.MMessage"
const-string/jumbo v2, "send fail, action is null"
invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_11
:cond_24
const/4 v0, 0x0
iget-object v1, p1, Lcom/tencent/mm/sdk/a/a/a$a;->l:Ljava/lang/String;
invoke-static {v1}, Lcom/tencent/mm/sdk/b/c;->a(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_43
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p1, Lcom/tencent/mm/sdk/a/a/a$a;->l:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ".permission.MM_MESSAGE"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_43
new-instance v1, Landroid/content/Intent;
iget-object v2, p1, Lcom/tencent/mm/sdk/a/a/a$a;->m:Ljava/lang/String;
invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
iget-object v2, p1, Lcom/tencent/mm/sdk/a/a/a$a;->k:Landroid/os/Bundle;
if-eqz v2, :cond_53
iget-object v2, p1, Lcom/tencent/mm/sdk/a/a/a$a;->k:Landroid/os/Bundle;
invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
:cond_53
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "_mmessage_sdkVersion"
invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string/jumbo v3, "_mmessage_appPackage"
invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v3, "_mmessage_content"
iget-object v4, p1, Lcom/tencent/mm/sdk/a/a/a$a;->j:Ljava/lang/String;
invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v3, "_mmessage_checksum"
iget-object v4, p1, Lcom/tencent/mm/sdk/a/a/a$a;->j:Ljava/lang/String;
invoke-static {v4, v5, v2}, Lcom/tencent/mm/sdk/a/a/b;->a(Ljava/lang/String;ILjava/lang/String;)[B
move-result-object v2
invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
invoke-virtual {p0, v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
const-string/jumbo v2, "MicroMsg.SDK.MMessage"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "send mm message, intent="
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v3, ", perm="
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Lcom/tencent/mm/sdk/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x1
goto/16 :goto_11
.end method