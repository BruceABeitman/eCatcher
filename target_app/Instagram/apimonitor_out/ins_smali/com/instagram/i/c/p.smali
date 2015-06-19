.class final Lcom/instagram/i/c/p;
.super Ljava/lang/Object;
.source "NewsfeedFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/i/c/n;
.method constructor <init>(Lcom/instagram/i/c/n;)V
.registers 2
iput-object p1, p0, Lcom/instagram/i/c/p;->a:Lcom/instagram/i/c/n;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/i/c/p; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/i/c/p;->a:Lcom/instagram/i/c/n;
iget-object v0, v0, Lcom/instagram/i/c/n;->a:Lcom/instagram/i/c/g;
sget-object v1, Lcom/instagram/i/c/g;->b:Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-static {v0, v1}, Lcom/instagram/i/c/g;->b(Lcom/instagram/i/c/g;I)V
iget-object v0, p0, Lcom/instagram/i/c/p;->a:Lcom/instagram/i/c/n;
sget-object v1, Lcom/instagram/i/c/g;->b:Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/i/c/n;->a(I)V
iget-object v0, p0, Lcom/instagram/i/c/p;->a:Lcom/instagram/i/c/n;
iget-object v0, v0, Lcom/instagram/i/c/n;->a:Lcom/instagram/i/c/g;
invoke-static {v0}, Lcom/instagram/i/c/g;->e(Lcom/instagram/i/c/g;)V
const-string v1, " - Lcom/instagram/i/c/p; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method