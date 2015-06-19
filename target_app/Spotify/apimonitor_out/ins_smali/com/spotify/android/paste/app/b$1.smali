.class final Lcom/spotify/android/paste/app/b$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/android/paste/app/a;
.field final synthetic b:Lcom/spotify/android/paste/app/b;
.method constructor <init>(Lcom/spotify/android/paste/app/b;Lcom/spotify/android/paste/app/a;)V
.registers 3
iput-object p1, p0, Lcom/spotify/android/paste/app/b$1;->b:Lcom/spotify/android/paste/app/b;
iput-object p2, p0, Lcom/spotify/android/paste/app/b$1;->a:Lcom/spotify/android/paste/app/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/android/paste/app/b$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/android/paste/app/b$1;->b:Lcom/spotify/android/paste/app/b;
invoke-static {v0}, Lcom/spotify/android/paste/app/b;->a(Lcom/spotify/android/paste/app/b;)Landroid/content/DialogInterface$OnClickListener;
move-result-object v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/spotify/android/paste/app/b$1;->b:Lcom/spotify/android/paste/app/b;
invoke-static {v0}, Lcom/spotify/android/paste/app/b;->a(Lcom/spotify/android/paste/app/b;)Landroid/content/DialogInterface$OnClickListener;
move-result-object v0
iget-object v1, p0, Lcom/spotify/android/paste/app/b$1;->a:Lcom/spotify/android/paste/app/a;
const/4 v2, -0x1
invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V
:cond_14
iget-object v0, p0, Lcom/spotify/android/paste/app/b$1;->a:Lcom/spotify/android/paste/app/a;
invoke-virtual {v0}, Lcom/spotify/android/paste/app/a;->dismiss()V
const-string v1, " - Lcom/spotify/android/paste/app/b$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method