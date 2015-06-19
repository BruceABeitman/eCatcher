.class final Lcom/bbm/h/b;
.super Ljava/lang/Object;
.source "AddContactsAdapter.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/iceberg/j;
.field final synthetic b:Lcom/bbm/h/a;
.method constructor <init>(Lcom/bbm/h/a;Lcom/bbm/iceberg/j;)V
.registers 3
iput-object p1, p0, Lcom/bbm/h/b;->b:Lcom/bbm/h/a;
iput-object p2, p0, Lcom/bbm/h/b;->a:Lcom/bbm/iceberg/j;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/h/b; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/h/b;->b:Lcom/bbm/h/a;
iget-object v1, p0, Lcom/bbm/h/b;->a:Lcom/bbm/iceberg/j;
invoke-static {v0, v1}, Lcom/bbm/h/a;->a(Lcom/bbm/h/a;Lcom/bbm/iceberg/j;)V
const-string v1, " - Lcom/bbm/h/b; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method