.class final Lcom/facebook/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/facebook/ae;
.field final synthetic a:Lcom/facebook/widget/LoginButton;
.method private constructor <init>(Lcom/facebook/widget/LoginButton;)V
.registers 2
iput-object p1, p0, Lcom/facebook/widget/b;->a:Lcom/facebook/widget/LoginButton;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/widget/LoginButton;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/widget/b;-><init>(Lcom/facebook/widget/LoginButton;)V
return-void
.end method
.method public final a(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
.registers 5
iget-object v0, p0, Lcom/facebook/widget/b;->a:Lcom/facebook/widget/LoginButton;
invoke-static {v0}, Lcom/facebook/widget/LoginButton;->j(Lcom/facebook/widget/LoginButton;)V
iget-object v0, p0, Lcom/facebook/widget/b;->a:Lcom/facebook/widget/LoginButton;
invoke-static {v0}, Lcom/facebook/widget/LoginButton;->k(Lcom/facebook/widget/LoginButton;)V
iget-object v0, p0, Lcom/facebook/widget/b;->a:Lcom/facebook/widget/LoginButton;
invoke-static {v0}, Lcom/facebook/widget/LoginButton;->g(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/c;
move-result-object v0
invoke-static {v0}, Lcom/facebook/widget/c;->e(Lcom/facebook/widget/c;)Lcom/facebook/ae;
move-result-object v0
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/facebook/widget/b;->a:Lcom/facebook/widget/LoginButton;
invoke-static {v0}, Lcom/facebook/widget/LoginButton;->g(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/c;
move-result-object v0
invoke-static {v0}, Lcom/facebook/widget/c;->e(Lcom/facebook/widget/c;)Lcom/facebook/ae;
move-result-object v0
invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ae;->a(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
:cond_23
:goto_23
return-void
:cond_24
if-eqz p3, :cond_23
iget-object v0, p0, Lcom/facebook/widget/b;->a:Lcom/facebook/widget/LoginButton;
invoke-virtual {v0, p3}, Lcom/facebook/widget/LoginButton;->a(Ljava/lang/Exception;)V
goto :goto_23
.end method