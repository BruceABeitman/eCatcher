.class final Lcom/instagram/android/directshare/d/m;
.super Ljava/lang/Object;
.source "DirectSharePermalinkFragment.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/instagram/feed/d/b;
.field final synthetic b:Lcom/instagram/android/directshare/d/c;
.method constructor <init>(Lcom/instagram/android/directshare/d/c;Lcom/instagram/feed/d/b;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/directshare/d/m;->b:Lcom/instagram/android/directshare/d/c;
iput-object p2, p0, Lcom/instagram/android/directshare/d/m;->a:Lcom/instagram/feed/d/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/directshare/d/m; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/directshare/d/m;->b:Lcom/instagram/android/directshare/d/c;
invoke-virtual {v0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/directshare/d/m;->b:Lcom/instagram/android/directshare/d/c;
invoke-virtual {v1}, Lcom/instagram/android/directshare/d/c;->y()Landroid/support/v4/app/an;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/directshare/d/m;->a:Lcom/instagram/feed/d/b;
new-instance v3, Lcom/instagram/android/directshare/d/aa;
iget-object v4, p0, Lcom/instagram/android/directshare/d/m;->b:Lcom/instagram/android/directshare/d/c;
const/4 v5, 0x0
invoke-direct {v3, v4, v5}, Lcom/instagram/android/directshare/d/aa;-><init>(Lcom/instagram/android/directshare/d/c;B)V
invoke-static {v0, v1, v2, v3}, Lcom/instagram/f/a/a/a/a;->a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/b;Lcom/instagram/api/j/a;)V
const-string v1, " - Lcom/instagram/android/directshare/d/m; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method