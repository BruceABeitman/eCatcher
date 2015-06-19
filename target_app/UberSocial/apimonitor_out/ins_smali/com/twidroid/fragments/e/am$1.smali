.class  Lcom/twidroid/fragments/e/am$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/twidroid/fragments/e/am;
.method constructor <init>(Lcom/twidroid/fragments/e/am;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/e/am$1;->a:Lcom/twidroid/fragments/e/am;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/fragments/e/am$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/fragments/e/am$1;->a:Lcom/twidroid/fragments/e/am;
iget-object v0, p0, Lcom/twidroid/fragments/e/am$1;->a:Lcom/twidroid/fragments/e/am;
invoke-static {v0}, Lcom/twidroid/fragments/e/am;->c(Lcom/twidroid/fragments/e/am;)Ljava/util/List;
move-result-object v0
invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ubermedia/model/twitter/d;
invoke-virtual {v0}, Lcom/ubermedia/model/twitter/d;->b()J
move-result-wide v2
invoke-static {v1, v2, v3}, Lcom/twidroid/fragments/e/am;->a(Lcom/twidroid/fragments/e/am;J)J
iget-object v0, p0, Lcom/twidroid/fragments/e/am$1;->a:Lcom/twidroid/fragments/e/am;
invoke-static {v0}, Lcom/twidroid/fragments/e/am;->e(Lcom/twidroid/fragments/e/am;)Lcom/twidroid/d/v;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/e/am$1;->a:Lcom/twidroid/fragments/e/am;
invoke-static {v1}, Lcom/twidroid/fragments/e/am;->d(Lcom/twidroid/fragments/e/am;)J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/twidroid/d/v;->a(J)V
iget-object v0, p0, Lcom/twidroid/fragments/e/am$1;->a:Lcom/twidroid/fragments/e/am;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/am;->d()V
const-string v1, " - Lcom/twidroid/fragments/e/am$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method