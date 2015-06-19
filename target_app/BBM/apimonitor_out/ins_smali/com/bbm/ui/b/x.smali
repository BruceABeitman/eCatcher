.class public final Lcom/bbm/ui/b/x;
.super Ljava/lang/Object;
.source "ListDialogBuilder.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Ljava/util/List;
.field final synthetic b:Lcom/bbm/ui/b/w;
.method public constructor <init>(Lcom/bbm/ui/b/w;Ljava/util/List;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/b/x;->b:Lcom/bbm/ui/b/w;
iput-object p2, p0, Lcom/bbm/ui/b/x;->a:Ljava/util/List;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/b/x; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x0
if-ltz p2, :cond_13
iget-object v1, p0, Lcom/bbm/ui/b/x;->a:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-ge p2, v1, :cond_13
iget-object v0, p0, Lcom/bbm/ui/b/x;->a:Ljava/util/List;
invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/b/aa;
:cond_13
if-eqz v0, :cond_1e
iget-object v1, v0, Lcom/bbm/ui/b/aa;->c:Lcom/bbm/ui/b/ab;
if-eqz v1, :cond_1e
iget-object v0, v0, Lcom/bbm/ui/b/aa;->c:Lcom/bbm/ui/b/ab;
invoke-interface {v0}, Lcom/bbm/ui/b/ab;->a()V
:cond_1e
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
const-string v1, " - Lcom/bbm/ui/b/x; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method