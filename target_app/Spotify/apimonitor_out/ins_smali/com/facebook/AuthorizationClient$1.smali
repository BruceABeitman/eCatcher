.class final Lcom/facebook/AuthorizationClient$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/facebook/h;
.field final synthetic a:Landroid/app/Activity;
.field final synthetic b:Lcom/facebook/AuthorizationClient;
.method constructor <init>(Lcom/facebook/AuthorizationClient;Landroid/app/Activity;)V
.registers 3
iput-object p1, p0, Lcom/facebook/AuthorizationClient$1;->b:Lcom/facebook/AuthorizationClient;
iput-object p2, p0, Lcom/facebook/AuthorizationClient$1;->a:Landroid/app/Activity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Landroid/app/Activity;
.registers 2
iget-object v0, p0, Lcom/facebook/AuthorizationClient$1;->a:Landroid/app/Activity;
return-object v0
.end method
.method public final a(Landroid/content/Intent;I)V
.registers 4
iget-object v0, p0, Lcom/facebook/AuthorizationClient$1;->a:Landroid/app/Activity;
invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
return-void
.end method