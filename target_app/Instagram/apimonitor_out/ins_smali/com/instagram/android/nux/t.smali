.class final Lcom/instagram/android/nux/t;
.super Ljava/lang/Object;
.source "LandingPageFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/nux/n;
.method constructor <init>(Lcom/instagram/android/nux/n;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/nux/t;->a:Lcom/instagram/android/nux/n;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/nux/t; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v0, Lcom/instagram/o/b;->c:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
new-instance v0, Lcom/instagram/registrationpush/a;
iget-object v1, p0, Lcom/instagram/android/nux/t;->a:Lcom/instagram/android/nux/n;
invoke-virtual {v1}, Lcom/instagram/android/nux/n;->n()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/registrationpush/a;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/instagram/registrationpush/a;->c()V
iget-object v0, p0, Lcom/instagram/android/nux/t;->a:Lcom/instagram/android/nux/n;
invoke-virtual {v0}, Lcom/instagram/android/nux/n;->b()V
const-string v1, " - Lcom/instagram/android/nux/t; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method