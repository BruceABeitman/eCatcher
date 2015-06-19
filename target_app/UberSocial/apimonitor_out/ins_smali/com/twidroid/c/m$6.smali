.class  Lcom/twidroid/c/m$6;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/twidroid/c/m;
.method constructor <init>(Lcom/twidroid/c/m;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/c/m$6;->a:Lcom/twidroid/c/m;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/c/m$6; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/twidroid/c/m$6$1;
invoke-direct {v0, p0}, Lcom/twidroid/c/m$6$1;-><init>(Lcom/twidroid/c/m$6;)V
const/4 v1, 0x1
new-array v1, v1, [Lcom/twidroid/model/twitter/DirectMessage;
const/4 v2, 0x0
iget-object v3, p0, Lcom/twidroid/c/m$6;->a:Lcom/twidroid/c/m;
invoke-static {v3}, Lcom/twidroid/c/m;->a(Lcom/twidroid/c/m;)Lcom/twidroid/model/twitter/DirectMessage;
move-result-object v3
aput-object v3, v1, v2
invoke-virtual {v0, v1}, Lcom/twidroid/c/m$6$1;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
const-string v1, " - Lcom/twidroid/c/m$6; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method