.class final Lcom/instagram/i/a/a/c;
.super Ljava/lang/Object;
.source "NewsfeedStoryRowBinderGroupRequest.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/i/a/a/a;
.method constructor <init>(Lcom/instagram/i/a/a/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/i/a/a/c;->a:Lcom/instagram/i/a/a/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/i/a/a/c; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/i/a/a/c;->a:Lcom/instagram/i/a/a/a;
invoke-interface {v0}, Lcom/instagram/i/a/a/a;->b()V
const-string v1, " - Lcom/instagram/i/a/a/c; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method