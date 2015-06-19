.class final Lcom/instagram/android/feed/d/c;
.super Ljava/lang/Object;
.source "SponsoredAboutDialog.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Landroid/app/Dialog;
.field final synthetic b:Lcom/instagram/android/feed/d/a;
.method constructor <init>(Lcom/instagram/android/feed/d/a;Landroid/app/Dialog;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/feed/d/c;->b:Lcom/instagram/android/feed/d/a;
iput-object p2, p0, Lcom/instagram/android/feed/d/c;->a:Landroid/app/Dialog;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/feed/d/c; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/feed/d/c;->a:Landroid/app/Dialog;
invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
const-string v1, " - Lcom/instagram/android/feed/d/c; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method