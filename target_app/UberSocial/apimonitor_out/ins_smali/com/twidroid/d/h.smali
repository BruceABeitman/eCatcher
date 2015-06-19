.class public Lcom/twidroid/d/h;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/String; = "CrashAvoidanceHelper"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Landroid/content/Context;I)Ljava/lang/CharSequence;
.registers 5
if-eqz p0, :cond_5
const/4 v0, -0x1
if-ne p1, v0, :cond_7
:cond_5
const/4 v0, 0x0
:goto_6
return-object v0
:try_start_7
:cond_7
invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
:try_end_a
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_c
move-result-object v0
goto :goto_6
:catch_c
move-exception v0
const-string v1, "CrashAvoidanceHelper"
const-string v2, "Get text by id failed"
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string v0, "Activity not attached."
goto :goto_6
.end method
.method public static a(Lcom/twidroid/fragments/base/o;I)Ljava/lang/CharSequence;
.registers 5
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:try_start_4
:cond_4
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/base/o;->getText(I)Ljava/lang/CharSequence;
:try_end_7
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_9
move-result-object v0
goto :goto_3
:catch_9
move-exception v0
const-string v1, "CrashAvoidanceHelper"
const-string v2, "Get text by id failed"
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string v0, "Activity not attached."
goto :goto_3
.end method
.method public static a(Landroid/app/Activity;I)V
.registers 5
:try_start_0
invoke-virtual {p0, p1}, Landroid/app/Activity;->showDialog(I)V
:goto_3
:try_end_3
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4
return-void
:catch_4
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string v0, "CrashAvoidanceHelper"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Show dialog failed "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_3
.end method
.method public static a(Landroid/app/Activity;Ljava/lang/CharSequence;)V
.registers 5
if-eqz p0, :cond_8
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_9
:goto_8
:cond_8
return-void
:try_start_9
:cond_9
new-instance v0, Lcom/twidroid/d/h$1;
invoke-direct {v0, p0, p1}, Lcom/twidroid/d/h$1;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;)V
invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
:try_end_11
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_12
goto :goto_8
:catch_12
move-exception v0
const-string v1, "CrashAvoidanceHelper"
const-string v2, "Show toast failed"
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_8
.end method
.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
.registers 5
if-eqz p0, :cond_8
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_9
:goto_8
:cond_8
return-void
:try_start_9
:cond_9
new-instance v0, Lcom/twidroid/d/h$2;
invoke-direct {v0, p0, p1}, Lcom/twidroid/d/h$2;-><init>(Landroid/app/Activity;Ljava/lang/String;)V
invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
:try_end_11
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_12
goto :goto_8
:catch_12
move-exception v0
const-string v1, "CrashAvoidanceHelper"
const-string v2, "Show toast failed"
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_8
.end method
.method public static a(Landroid/app/Dialog;)V
.registers 4
:try_start_0
invoke-virtual {p0}, Landroid/app/Dialog;->show()V
:goto_3
:try_end_3
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4
return-void
:catch_4
move-exception v0
const-string v1, "CrashAvoidanceHelper"
const-string v2, "Show dialog failed"
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_3
.end method
.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;I)V
.registers 4
if-eqz p0, :cond_8
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_9
:goto_8
:cond_8
return-void
:try_start_9
:cond_9
invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:try_end_10
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_11
goto :goto_8
:catch_11
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_8
.end method
.method public static b(Landroid/content/Context;I)Ljava/lang/String;
.registers 5
if-eqz p0, :cond_5
const/4 v0, -0x1
if-ne p1, v0, :cond_7
:cond_5
const/4 v0, 0x0
:goto_6
return-object v0
:try_start_7
:cond_7
invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
:try_end_a
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_c
move-result-object v0
goto :goto_6
:catch_c
move-exception v0
const-string v1, "CrashAvoidanceHelper"
const-string v2, "Get String by id failed"
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string v0, "Activity not attached."
goto :goto_6
.end method
.method public static b(Lcom/twidroid/fragments/base/o;I)Ljava/lang/String;
.registers 5
if-eqz p0, :cond_5
const/4 v0, -0x1
if-ne p1, v0, :cond_7
:cond_5
const/4 v0, 0x0
:goto_6
return-object v0
:try_start_7
:cond_7
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/base/o;->getString(I)Ljava/lang/String;
:try_end_a
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_c
move-result-object v0
goto :goto_6
:catch_c
move-exception v0
const-string v1, "CrashAvoidanceHelper"
const-string v2, "Get String by id failed"
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string v0, "Activity not attached."
goto :goto_6
.end method