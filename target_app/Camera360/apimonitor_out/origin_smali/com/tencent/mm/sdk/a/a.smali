.class public final Lcom/tencent/mm/sdk/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mm/sdk/a/a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/tencent/mm/sdk/a/a$a;)Z
    .registers 9

    const v6, 0x22000001

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    if-nez p1, :cond_13

    :cond_9
    const-string/jumbo v1, "MicroMsg.SDK.MMessageAct"

    const-string/jumbo v2, "send fail, invalid argument"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    return v0

    :cond_13
    iget-object v2, p1, Lcom/tencent/mm/sdk/a/a$a;->h:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/sdk/b/c;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    const-string/jumbo v1, "MicroMsg.SDK.MMessageAct"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "send fail, invalid targetPkgName, targetPkgName = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/tencent/mm/sdk/a/a$a;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_34
    iget-object v2, p1, Lcom/tencent/mm/sdk/a/a$a;->i:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/sdk/b/c;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/tencent/mm/sdk/a/a$a;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".wxapi.WXEntryActivity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/tencent/mm/sdk/a/a$a;->i:Ljava/lang/String;

    :cond_54
    const-string/jumbo v2, "MicroMsg.SDK.MMessageAct"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "send, targetPkgName = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/tencent/mm/sdk/a/a$a;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", targetClassName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/tencent/mm/sdk/a/a$a;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p1, Lcom/tencent/mm/sdk/a/a$a;->h:Ljava/lang/String;

    iget-object v4, p1, Lcom/tencent/mm/sdk/a/a$a;->i:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p1, Lcom/tencent/mm/sdk/a/a$a;->k:Landroid/os/Bundle;

    if-eqz v3, :cond_8e

    iget-object v3, p1, Lcom/tencent/mm/sdk/a/a$a;->k:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_8e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "_mmessage_sdkVersion"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "_mmessage_appPackage"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "_mmessage_content"

    iget-object v5, p1, Lcom/tencent/mm/sdk/a/a$a;->j:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "_mmessage_checksum"

    iget-object v5, p1, Lcom/tencent/mm/sdk/a/a$a;->j:Ljava/lang/String;

    invoke-static {v5, v6, v3}, Lcom/tencent/mm/sdk/a/a/b;->a(Ljava/lang/String;ILjava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget v3, p1, Lcom/tencent/mm/sdk/a/a$a;->flags:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_de

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x800

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_c2
    :try_start_c2
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c5} :catch_e4

    const-string/jumbo v0, "MicroMsg.SDK.MMessageAct"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "send mm message, intent="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_12

    :cond_de
    iget v3, p1, Lcom/tencent/mm/sdk/a/a$a;->flags:I

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_c2

    :catch_e4
    move-exception v2

    const-string/jumbo v3, "MicroMsg.SDK.MMessageAct"

    const-string/jumbo v4, "send fail, ex = %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v3, v4, v1}, Lcom/tencent/mm/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_12
.end method
