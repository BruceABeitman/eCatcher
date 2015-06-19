.class final Lcom/instagram/android/widget/t;
.super Ljava/lang/Object;
.source "ShareTable.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/widget/s;
.method constructor <init>(Lcom/instagram/android/widget/s;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/widget/t;->a:Lcom/instagram/android/widget/s;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/widget/t; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/widget/t;->a:Lcom/instagram/android/widget/s;
invoke-static {v0}, Lcom/instagram/android/widget/s;->a(Lcom/instagram/android/widget/s;)Lcom/instagram/android/widget/v;
move-result-object v0
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/instagram/android/widget/t;->a:Lcom/instagram/android/widget/s;
invoke-static {v0}, Lcom/instagram/android/widget/s;->a(Lcom/instagram/android/widget/s;)Lcom/instagram/android/widget/v;
move-result-object v1
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/widget/x;
invoke-interface {v1, v0}, Lcom/instagram/android/widget/v;->a(Lcom/instagram/android/widget/x;)V
:cond_17
const-string v1, " - Lcom/instagram/android/widget/t; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method