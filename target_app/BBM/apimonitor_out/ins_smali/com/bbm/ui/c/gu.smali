.class final Lcom/bbm/ui/c/gu;
.super Ljava/lang/Object;
.source "StickerDetailsFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/bbm/ui/c/fu;
.method constructor <init>(Lcom/bbm/ui/c/fu;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/c/gu;->b:Lcom/bbm/ui/c/fu;
iput-object p2, p0, Lcom/bbm/ui/c/gu;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/c/gu; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "Artist Web Site button clicked"
const-class v1, Lcom/bbm/ui/c/fu;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/c/gu;->b:Lcom/bbm/ui/c/fu;
iget-object v1, p0, Lcom/bbm/ui/c/gu;->a:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/fu;Ljava/lang/String;)V
const-string v1, " - Lcom/bbm/ui/c/gu; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method