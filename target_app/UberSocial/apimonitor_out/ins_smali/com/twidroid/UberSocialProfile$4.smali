.class  Lcom/twidroid/UberSocialProfile$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Ljava/util/ArrayList;
.field final synthetic b:Lcom/twidroid/UberSocialProfile;
.method constructor <init>(Lcom/twidroid/UberSocialProfile;Ljava/util/ArrayList;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/UberSocialProfile$4;->b:Lcom/twidroid/UberSocialProfile;
iput-object p2, p0, Lcom/twidroid/UberSocialProfile$4;->a:Ljava/util/ArrayList;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/UberSocialProfile$4; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/twidroid/net/n;->a()Lcom/twidroid/net/n;
move-result-object v0
new-instance v1, Ljava/lang/Thread;
new-instance v2, Lcom/twidroid/UberSocialProfile$4$1;
invoke-direct {v2, p0}, Lcom/twidroid/UberSocialProfile$4$1;-><init>(Lcom/twidroid/UberSocialProfile$4;)V
invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v0, v1}, Lcom/twidroid/net/n;->a(Ljava/lang/Thread;)V
const-string v1, " - Lcom/twidroid/UberSocialProfile$4; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method