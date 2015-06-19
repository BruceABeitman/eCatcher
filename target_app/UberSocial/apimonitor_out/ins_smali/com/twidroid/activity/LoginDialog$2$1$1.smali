.class  Lcom/twidroid/activity/LoginDialog$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/activity/LoginDialog$2$1;
.method constructor <init>(Lcom/twidroid/activity/LoginDialog$2$1;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/LoginDialog$2$1$1;->a:Lcom/twidroid/activity/LoginDialog$2$1;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$2$1$1;->a:Lcom/twidroid/activity/LoginDialog$2$1;
iget-object v0, v0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;
iget-object v0, v0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;
invoke-virtual {v0}, Lcom/twidroid/activity/LoginDialog;->a()V
iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$2$1$1;->a:Lcom/twidroid/activity/LoginDialog$2$1;
iget-object v0, v0, Lcom/twidroid/activity/LoginDialog$2$1;->a:Lcom/twidroid/activity/LoginDialog$2;
iget-object v0, v0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
:try_end_13
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14
:goto_13
return-void
:catch_14
move-exception v0
goto :goto_13
.end method