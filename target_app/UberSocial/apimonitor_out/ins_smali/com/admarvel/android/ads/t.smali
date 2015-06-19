.class  Lcom/admarvel/android/ads/t;
.super Ljava/lang/Object;
.source "SourceFile"
.method static a(Ljava/lang/String;Landroid/content/Context;)Z
.registers 8
const/4 v0, 0x1
const/4 v1, 0x0
if-eqz p1, :cond_6
if-nez p0, :cond_8
:cond_6
move v0, v1
:goto_7
:cond_7
return v0
:cond_8
const/4 v2, 0x1
:try_start_9
invoke-static {p0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
:try_end_c
.catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_c} :catch_7a
move-result-object v2
invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v3
invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
move-result-object v3
if-nez v3, :cond_a5
invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_a2
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, " going for market in shouldOverrideUrlLoading on internalwebview "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
new-instance v1, Landroid/content/Intent;
const-string v3, "android.intent.action.VIEW"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "market://search?q=pname:"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
const/high16 v2, 0x1000
invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
const-string v2, "android.intent.category.BROWSABLE"
invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
invoke-static {p1, v1}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v2
if-eqz v2, :cond_64
invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:cond_64
if-eqz p1, :cond_7
instance-of v1, p1, Landroid/app/Activity;
if-eqz v1, :cond_7
check-cast p1, Landroid/app/Activity;
if-eqz p1, :cond_7
instance-of v1, p1, Lcom/admarvel/android/ads/AdMarvelActivity;
if-eqz v1, :cond_7
check-cast p1, Lcom/admarvel/android/ads/AdMarvelActivity;
if-eqz p1, :cond_7
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelActivity;->g()V
goto :goto_7
:catch_7a
move-exception v0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Bad URI "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ": "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
move v0, v1
goto/16 :goto_7
:cond_a2
move v0, v1
goto/16 :goto_7
:cond_a5
move v0, v1
goto/16 :goto_7
.end method