.class  Lcom/facebook/Session$2;
.super Ljava/lang/Object;
.source "Session.java"
.implements Lcom/facebook/AuthorizationClient$OnCompletedListener;
.field final synthetic this$0:Lcom/facebook/Session;
.method constructor <init>(Lcom/facebook/Session;)V
.registers 2
iput-object p1, p0, Lcom/facebook/Session$2;->this$0:Lcom/facebook/Session;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCompleted(Lcom/facebook/AuthorizationClient$Result;)V
.registers 5
iget-object v1, p1, Lcom/facebook/AuthorizationClient$Result;->code:Lcom/facebook/AuthorizationClient$Result$Code;
sget-object v2, Lcom/facebook/AuthorizationClient$Result$Code;->CANCEL:Lcom/facebook/AuthorizationClient$Result$Code;
if-ne v1, v2, :cond_d
const/4 v0, 0x0
:goto_7
iget-object v1, p0, Lcom/facebook/Session$2;->this$0:Lcom/facebook/Session;
#calls: Lcom/facebook/Session;->handleAuthorizationResult(ILcom/facebook/AuthorizationClient$Result;)V
invoke-static {v1, v0, p1}, Lcom/facebook/Session;->access$200(Lcom/facebook/Session;ILcom/facebook/AuthorizationClient$Result;)V
return-void
:cond_d
const/4 v0, -0x1
goto :goto_7
.end method