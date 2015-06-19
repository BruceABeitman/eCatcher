.class final Lcom/bbm/util/dn;
.super Ljava/lang/Object;
.source "TpaUtil.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Landroid/content/Context;
.field final synthetic b:Lcom/bbm/d/fl;
.field final synthetic c:Ljava/lang/String;
.field final synthetic d:Ljava/lang/String;
.method constructor <init>(Landroid/content/Context;Lcom/bbm/d/fl;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/bbm/util/dn;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/bbm/util/dn;->b:Lcom/bbm/d/fl;
iput-object p3, p0, Lcom/bbm/util/dn;->c:Ljava/lang/String;
iput-object p4, p0, Lcom/bbm/util/dn;->d:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/util/dn; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/bbm/util/do;
invoke-direct {v0, p0}, Lcom/bbm/util/do;-><init>(Lcom/bbm/util/dn;)V
invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;
move-result-object v1
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
const-string v3, "partnerApp"
iget-object v4, p0, Lcom/bbm/util/dn;->b:Lcom/bbm/d/fl;
invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v3, "invokeUrl"
iget-object v4, p0, Lcom/bbm/util/dn;->b:Lcom/bbm/d/fl;
iget-object v4, v4, Lcom/bbm/d/fl;->f:Ljava/lang/String;
invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v3, "bbmId"
iget-object v4, p0, Lcom/bbm/util/dn;->c:Ljava/lang/String;
invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v3, "appContext"
iget-object v4, p0, Lcom/bbm/util/dn;->d:Ljava/lang/String;
invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V
const-string v1, " - Lcom/bbm/util/dn; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method