.class final Lcom/instagram/android/people/c/h;
.super Ljava/lang/Object;
.source "ModifyPhotosOfYouHelper.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/instagram/android/people/c/f;
.method constructor <init>(Lcom/instagram/android/people/c/f;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/people/c/h;->a:Lcom/instagram/android/people/c/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/people/c/h; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/people/c/h;->a:Lcom/instagram/android/people/c/f;
iget-object v0, v0, Lcom/instagram/android/people/c/f;->a:Landroid/app/Dialog;
invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
new-instance v0, Lcom/instagram/android/c/a/n;
iget-object v1, p0, Lcom/instagram/android/people/c/h;->a:Lcom/instagram/android/people/c/f;
iget-object v1, v1, Lcom/instagram/android/people/c/f;->c:Lcom/instagram/android/people/c/a;
invoke-static {v1}, Lcom/instagram/android/people/c/a;->f(Lcom/instagram/android/people/c/a;)Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/people/c/h;->a:Lcom/instagram/android/people/c/f;
iget-object v2, v2, Lcom/instagram/android/people/c/f;->c:Lcom/instagram/android/people/c/a;
invoke-static {v2}, Lcom/instagram/android/people/c/a;->g(Lcom/instagram/android/people/c/a;)Landroid/support/v4/app/an;
move-result-object v2
iget-object v3, p0, Lcom/instagram/android/people/c/h;->a:Lcom/instagram/android/people/c/f;
iget-object v3, v3, Lcom/instagram/android/people/c/f;->b:Lcom/instagram/feed/d/l;
new-instance v4, Lcom/instagram/android/people/c/m;
iget-object v5, p0, Lcom/instagram/android/people/c/h;->a:Lcom/instagram/android/people/c/f;
iget-object v5, v5, Lcom/instagram/android/people/c/f;->c:Lcom/instagram/android/people/c/a;
const/4 v6, 0x0
invoke-direct {v4, v5, v6}, Lcom/instagram/android/people/c/m;-><init>(Lcom/instagram/android/people/c/a;B)V
invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/c/a/n;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;Lcom/instagram/api/j/a;)V
invoke-virtual {v0}, Lcom/instagram/android/c/a/n;->h()V
const-string v1, " - Lcom/instagram/android/people/c/h; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method