.class final Lcom/bbm/setup/e;
.super Ljava/lang/Object;
.source "DeviceSwitchActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/setup/DeviceSwitchActivity;
.method constructor <init>(Lcom/bbm/setup/DeviceSwitchActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/setup/e;->a:Lcom/bbm/setup/DeviceSwitchActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/setup/e; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v0
iget v1, v0, Lcom/bbm/c/c;->am:I
add-int/lit8 v1, v1, 0x1
iput v1, v0, Lcom/bbm/c/c;->am:I
iget-object v0, p0, Lcom/bbm/setup/e;->a:Lcom/bbm/setup/DeviceSwitchActivity;
invoke-virtual {v0}, Lcom/bbm/setup/DeviceSwitchActivity;->c()V
const-string v1, " - Lcom/bbm/setup/e; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method