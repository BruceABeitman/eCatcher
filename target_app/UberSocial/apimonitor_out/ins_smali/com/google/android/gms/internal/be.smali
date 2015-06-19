.class public final Lcom/google/android/gms/internal/be;
.super Ljava/lang/Object;
.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/bn;Lcom/google/android/gms/internal/bp;)Z
.registers 9
const/4 v5, 0x2
const/4 v1, 0x1
const/4 v0, 0x0
if-nez p1, :cond_b
const-string v1, "No intent data for launcher overlay."
invoke-static {v1}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V
:goto_a
return v0
:cond_b
new-instance v2, Landroid/content/Intent;
invoke-direct {v2}, Landroid/content/Intent;-><init>()V
iget-object v3, p1, Lcom/google/android/gms/internal/bn;->c:Ljava/lang/String;
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_1e
const-string v1, "Open GMSG did not contain a URL."
invoke-static {v1}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V
goto :goto_a
:cond_1e
iget-object v3, p1, Lcom/google/android/gms/internal/bn;->d:Ljava/lang/String;
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_6f
iget-object v3, p1, Lcom/google/android/gms/internal/bn;->c:Ljava/lang/String;
invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
iget-object v4, p1, Lcom/google/android/gms/internal/bn;->d:Ljava/lang/String;
invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
:goto_31
const-string v3, "android.intent.action.VIEW"
invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
iget-object v3, p1, Lcom/google/android/gms/internal/bn;->e:Ljava/lang/String;
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_43
iget-object v3, p1, Lcom/google/android/gms/internal/bn;->e:Ljava/lang/String;
invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
:cond_43
iget-object v3, p1, Lcom/google/android/gms/internal/bn;->f:Ljava/lang/String;
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_80
iget-object v3, p1, Lcom/google/android/gms/internal/bn;->f:Ljava/lang/String;
const-string v4, "/"
invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;
move-result-object v3
array-length v4, v3
if-ge v4, v5, :cond_79
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Could not parse component name from open GMSG: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p1, Lcom/google/android/gms/internal/bn;->f:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V
goto :goto_a
:cond_6f
iget-object v3, p1, Lcom/google/android/gms/internal/bn;->c:Ljava/lang/String;
invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
goto :goto_31
:cond_79
aget-object v4, v3, v0
aget-object v3, v3, v1
invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
:cond_80
:try_start_80
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Launching an intent: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/google/android/gms/internal/ea;->d(Ljava/lang/String;)V
invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
invoke-interface {p2}, Lcom/google/android/gms/internal/bp;->q()V
:try_end_9c
.catch Landroid/content/ActivityNotFoundException; {:try_start_80 .. :try_end_9c} :catch_9f
move v0, v1
goto/16 :goto_a
:catch_9f
move-exception v1
invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V
goto/16 :goto_a
.end method