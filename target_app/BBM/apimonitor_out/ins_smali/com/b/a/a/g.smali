.class final Lcom/b/a/a/g;
.super Ljava/lang/Object;
.source "AppStoreInterstitial.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/b/a/a/f;
.field final synthetic b:Lcom/b/a/a/f;
.method constructor <init>(Lcom/b/a/a/f;Lcom/b/a/a/f;)V
.registers 3
iput-object p1, p0, Lcom/b/a/a/g;->b:Lcom/b/a/a/f;
iput-object p2, p0, Lcom/b/a/a/g;->a:Lcom/b/a/a/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/b/a/a/g; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/b/a/a/g;->a:Lcom/b/a/a/f;
invoke-virtual {v0}, Lcom/b/a/a/f;->dismiss()V
iget-object v0, p0, Lcom/b/a/a/g;->a:Lcom/b/a/a/f;
invoke-virtual {v0}, Lcom/b/a/a/f;->getActivity()Landroid/support/v4/app/h;
move-result-object v0
invoke-static {v0}, Lcom/b/a/a/b;->b(Landroid/app/Activity;)V
const-string v1, " - Lcom/b/a/a/g; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method