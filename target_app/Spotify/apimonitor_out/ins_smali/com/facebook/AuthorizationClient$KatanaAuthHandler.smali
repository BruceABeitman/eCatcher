.class abstract Lcom/facebook/AuthorizationClient$KatanaAuthHandler;
.super Lcom/facebook/AuthorizationClient$AuthHandler;
.source "SourceFile"
.field private static final serialVersionUID:J = 0x1L
.field final synthetic this$0:Lcom/facebook/AuthorizationClient;
.method constructor <init>(Lcom/facebook/AuthorizationClient;)V
.registers 2
iput-object p1, p0, Lcom/facebook/AuthorizationClient$KatanaAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;
invoke-direct {p0, p1}, Lcom/facebook/AuthorizationClient$AuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V
return-void
.end method
.method protected final a(Landroid/content/Intent;I)Z
.registers 5
const/4 v0, 0x0
if-nez p1, :cond_4
:goto_3
return v0
:try_start_4
:cond_4
iget-object v1, p0, Lcom/facebook/AuthorizationClient$KatanaAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;
invoke-virtual {v1}, Lcom/facebook/AuthorizationClient;->b()Lcom/facebook/h;
move-result-object v1
invoke-interface {v1, p1, p2}, Lcom/facebook/h;->a(Landroid/content/Intent;I)V
:try_end_d
.catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_d} :catch_f
const/4 v0, 0x1
goto :goto_3
:catch_f
move-exception v1
goto :goto_3
.end method