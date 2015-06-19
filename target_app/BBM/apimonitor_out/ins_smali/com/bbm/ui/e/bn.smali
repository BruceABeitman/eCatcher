.class final Lcom/bbm/ui/e/bn;
.super Ljava/lang/Object;
.source "RealtimeLocationHolder.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/e/bm;
.method constructor <init>(Lcom/bbm/ui/e/bm;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/e/bn;->a:Lcom/bbm/ui/e/bm;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/e/bn; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/e/bn;->a:Lcom/bbm/ui/e/bm;
iget-object v0, v0, Lcom/bbm/ui/e/bm;->a:Landroid/content/Context;
check-cast v0, Lcom/bbm/ui/activities/ConversationActivity;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/ConversationActivity;->a(I)V
const-string v1, " - Lcom/bbm/ui/e/bn; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method