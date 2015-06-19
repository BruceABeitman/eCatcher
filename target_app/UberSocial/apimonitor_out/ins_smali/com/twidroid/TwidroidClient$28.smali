.class  Lcom/twidroid/TwidroidClient$28;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/TwidroidClient;
.method constructor <init>(Lcom/twidroid/TwidroidClient;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/TwidroidClient$28;->a:Lcom/twidroid/TwidroidClient;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
:try_start_0
new-instance v0, Landroid/app/AlertDialog$Builder;
iget-object v1, p0, Lcom/twidroid/TwidroidClient$28;->a:Lcom/twidroid/TwidroidClient;
invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const v1, 0x7f020067
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c00fa
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c00f8
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c00d1
new-instance v2, Lcom/twidroid/TwidroidClient$28$2;
invoke-direct {v2, p0}, Lcom/twidroid/TwidroidClient$28$2;-><init>(Lcom/twidroid/TwidroidClient$28;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c0029
new-instance v2, Lcom/twidroid/TwidroidClient$28$1;
invoke-direct {v2, p0}, Lcom/twidroid/TwidroidClient$28$1;-><init>(Lcom/twidroid/TwidroidClient$28;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
iget-object v0, p0, Lcom/twidroid/TwidroidClient$28;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->c(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/d/v;->as()V
:try_end_48
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_49
:goto_48
return-void
:catch_49
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_48
.end method