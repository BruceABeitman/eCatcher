.class  Lcom/twidroid/ui/themes/o$2$1$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/twidroid/ui/themes/o$2$1;
.method constructor <init>(Lcom/twidroid/ui/themes/o$2$1;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/themes/o$2$1$2;->a:Lcom/twidroid/ui/themes/o$2$1;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/ui/themes/o$2$1$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/ui/themes/o$2$1$2;->a:Lcom/twidroid/ui/themes/o$2$1;
iget-object v0, v0, Lcom/twidroid/ui/themes/o$2$1;->d:Lcom/twidroid/ui/themes/q;
iget-object v1, p0, Lcom/twidroid/ui/themes/o$2$1$2;->a:Lcom/twidroid/ui/themes/o$2$1;
iget-object v1, v1, Lcom/twidroid/ui/themes/o$2$1;->e:Lcom/twidroid/ui/themes/o$2;
iget-object v1, v1, Lcom/twidroid/ui/themes/o$2;->c:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/themes/q;->a(Lcom/twidroid/UberSocialApplication;)V
const-string v0, "theme"
const-string v1, "install"
iget-object v2, p0, Lcom/twidroid/ui/themes/o$2$1$2;->a:Lcom/twidroid/ui/themes/o$2$1;
iget-object v2, v2, Lcom/twidroid/ui/themes/o$2$1;->e:Lcom/twidroid/ui/themes/o$2;
iget-object v2, v2, Lcom/twidroid/ui/themes/o$2;->d:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Landroid/app/AlertDialog$Builder;
iget-object v1, p0, Lcom/twidroid/ui/themes/o$2$1$2;->a:Lcom/twidroid/ui/themes/o$2$1;
iget-object v1, v1, Lcom/twidroid/ui/themes/o$2$1;->e:Lcom/twidroid/ui/themes/o$2;
iget-object v1, v1, Lcom/twidroid/ui/themes/o$2;->h:Landroid/content/Context;
invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const v1, 0x7f020067
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c0150
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c014f
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c0151
new-instance v2, Lcom/twidroid/ui/themes/o$2$1$2$2;
invoke-direct {v2, p0}, Lcom/twidroid/ui/themes/o$2$1$2$2;-><init>(Lcom/twidroid/ui/themes/o$2$1$2;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c0029
new-instance v2, Lcom/twidroid/ui/themes/o$2$1$2$1;
invoke-direct {v2, p0}, Lcom/twidroid/ui/themes/o$2$1$2$1;-><init>(Lcom/twidroid/ui/themes/o$2$1$2;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
const-string v1, " - Lcom/twidroid/ui/themes/o$2$1$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method