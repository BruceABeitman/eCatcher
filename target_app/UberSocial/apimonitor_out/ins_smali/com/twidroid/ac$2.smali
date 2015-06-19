.class  Lcom/twidroid/ac$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/twidroid/ac;
.method constructor <init>(Lcom/twidroid/ac;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ac$2;->a:Lcom/twidroid/ac;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/ac$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/ac$2;->a:Lcom/twidroid/ac;
iget-object v0, v0, Lcom/twidroid/ac;->b:Lcom/twidroid/UberSocialProfile;
iget-object v1, p0, Lcom/twidroid/ac$2;->a:Lcom/twidroid/ac;
iget-object v1, v1, Lcom/twidroid/ac;->b:Lcom/twidroid/UberSocialProfile;
const v2, 0x7f0c015c
invoke-virtual {v1, v2}, Lcom/twidroid/UberSocialProfile;->e(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/twidroid/UberSocialProfile;->i(Lcom/twidroid/UberSocialProfile;Ljava/lang/String;)V
new-instance v0, Ljava/lang/Thread;
new-instance v1, Lcom/twidroid/ac$2$1;
invoke-direct {v1, p0}, Lcom/twidroid/ac$2$1;-><init>(Lcom/twidroid/ac$2;)V
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
iget-object v0, p0, Lcom/twidroid/ac$2;->a:Lcom/twidroid/ac;
invoke-virtual {v0}, Lcom/twidroid/ac;->dismiss()V
const-string v1, " - Lcom/twidroid/ac$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method