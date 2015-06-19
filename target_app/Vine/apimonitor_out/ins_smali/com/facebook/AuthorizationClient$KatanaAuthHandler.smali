.class abstract Lcom/facebook/AuthorizationClient$KatanaAuthHandler;
.super Lcom/facebook/AuthorizationClient$AuthHandler;
.source "AuthorizationClient.java"
.field private static final serialVersionUID:J = 0x1L
.field final synthetic this$0:Lcom/facebook/AuthorizationClient;
.method constructor <init>(Lcom/facebook/AuthorizationClient;)V
.registers 2
iput-object p1, p0, Lcom/facebook/AuthorizationClient$KatanaAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;
invoke-direct {p0, p1}, Lcom/facebook/AuthorizationClient$AuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V
return-void
.end method
.method protected tryIntent(Landroid/content/Intent;I)Z
.registers 6
const/4 v1, 0x0
if-nez p1, :cond_4
:goto_3
return v1
:try_start_4
:cond_4
iget-object v2, p0, Lcom/facebook/AuthorizationClient$KatanaAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;
invoke-virtual {v2}, Lcom/facebook/AuthorizationClient;->getStartActivityDelegate()Lcom/facebook/AuthorizationClient$StartActivityDelegate;
move-result-object v2
invoke-interface {v2, p1, p2}, Lcom/facebook/AuthorizationClient$StartActivityDelegate;->startActivityForResult(Landroid/content/Intent;I)V
:try_end_d
.catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_d} :catch_f
const/4 v1, 0x1
goto :goto_3
:catch_f
move-exception v0
goto :goto_3
.end method