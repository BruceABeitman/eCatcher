.class final Lcom/instagram/bugreport/rageshake/b;
.super Ljava/lang/Object;
.source "InstagramRageShakeHelper.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/instagram/bugreport/rageshake/a;
.method private constructor <init>(Lcom/instagram/bugreport/rageshake/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/bugreport/rageshake/b;->a:Lcom/instagram/bugreport/rageshake/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/bugreport/rageshake/a;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/bugreport/rageshake/b;-><init>(Lcom/instagram/bugreport/rageshake/a;)V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/bugreport/rageshake/b; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/bugreport/rageshake/b;->a:Lcom/instagram/bugreport/rageshake/a;
invoke-static {v0}, Lcom/instagram/bugreport/rageshake/a;->a(Lcom/instagram/bugreport/rageshake/a;)[Ljava/lang/CharSequence;
move-result-object v0
aget-object v0, v0, p2
iget-object v1, p0, Lcom/instagram/bugreport/rageshake/b;->a:Lcom/instagram/bugreport/rageshake/a;
invoke-static {v1}, Lcom/instagram/bugreport/rageshake/a;->b(Lcom/instagram/bugreport/rageshake/a;)Landroid/support/v4/app/k;
move-result-object v1
sget v2, Lcom/facebook/az;->rageshake_bug_report_option:I
invoke-virtual {v1, v2}, Landroid/support/v4/app/k;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_59
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/b/b;->b()Z
move-result v0
if-eqz v0, :cond_53
iget-object v0, p0, Lcom/instagram/bugreport/rageshake/b;->a:Lcom/instagram/bugreport/rageshake/a;
invoke-static {v0}, Lcom/instagram/bugreport/rageshake/a;->c(Lcom/instagram/bugreport/rageshake/a;)Landroid/support/v4/app/k;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/d/a;->a(Landroid/app/Activity;)Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_4d
iget-object v1, p0, Lcom/instagram/bugreport/rageshake/b;->a:Lcom/instagram/bugreport/rageshake/a;
new-instance v2, Lcom/instagram/bugreport/rageshake/f;
iget-object v3, p0, Lcom/instagram/bugreport/rageshake/b;->a:Lcom/instagram/bugreport/rageshake/a;
invoke-static {v3}, Lcom/instagram/bugreport/rageshake/a;->d(Lcom/instagram/bugreport/rageshake/a;)Landroid/support/v4/app/k;
move-result-object v3
invoke-direct {v2, v0, v3}, Lcom/instagram/bugreport/rageshake/f;-><init>(Landroid/graphics/Bitmap;Landroid/app/Activity;)V
invoke-static {v1, v2}, Lcom/instagram/bugreport/rageshake/a;->a(Lcom/instagram/bugreport/rageshake/a;Lcom/instagram/bugreport/rageshake/f;)Lcom/instagram/bugreport/rageshake/f;
iget-object v0, p0, Lcom/instagram/bugreport/rageshake/b;->a:Lcom/instagram/bugreport/rageshake/a;
invoke-static {v0}, Lcom/instagram/bugreport/rageshake/a;->e(Lcom/instagram/bugreport/rageshake/a;)Lcom/instagram/bugreport/rageshake/f;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/instagram/bugreport/rageshake/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
:goto_4c
:cond_4c
const-string v1, " - Lcom/instagram/bugreport/rageshake/b; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_4d
sget v0, Lcom/facebook/az;->rageshake_error_low_memory:I
invoke-static {v0}, Lcom/instagram/n/e;->a(I)V
goto :goto_4c
:cond_53
sget v0, Lcom/facebook/az;->rageshake_error_facebook:I
invoke-static {v0}, Lcom/instagram/n/e;->a(I)V
goto :goto_4c
:cond_59
iget-object v1, p0, Lcom/instagram/bugreport/rageshake/b;->a:Lcom/instagram/bugreport/rageshake/a;
invoke-static {v1}, Lcom/instagram/bugreport/rageshake/a;->f(Lcom/instagram/bugreport/rageshake/a;)Landroid/support/v4/app/k;
move-result-object v1
sget v2, Lcom/facebook/az;->rageshake_update_option:I
invoke-virtual {v1, v2}, Landroid/support/v4/app/k;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4c
iget-object v0, p0, Lcom/instagram/bugreport/rageshake/b;->a:Lcom/instagram/bugreport/rageshake/a;
new-instance v1, Lcom/instagram/n/b/a;
iget-object v2, p0, Lcom/instagram/bugreport/rageshake/b;->a:Lcom/instagram/bugreport/rageshake/a;
invoke-static {v2}, Lcom/instagram/bugreport/rageshake/a;->g(Lcom/instagram/bugreport/rageshake/a;)Landroid/support/v4/app/k;
move-result-object v2
invoke-direct {v1, v2}, Lcom/instagram/n/b/a;-><init>(Landroid/content/Context;)V
invoke-static {v0, v1}, Lcom/instagram/bugreport/rageshake/a;->a(Lcom/instagram/bugreport/rageshake/a;Lcom/instagram/n/b/a;)Lcom/instagram/n/b/a;
iget-object v0, p0, Lcom/instagram/bugreport/rageshake/b;->a:Lcom/instagram/bugreport/rageshake/a;
invoke-static {v0}, Lcom/instagram/bugreport/rageshake/a;->h(Lcom/instagram/bugreport/rageshake/a;)Lcom/instagram/n/b/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/n/b/a;->c()V
goto :goto_4c
.end method