.class  Lcom/facebook/widget/aa;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/facebook/bf;
.field final synthetic a:Lcom/facebook/widget/LoginButton;
.method private constructor <init>(Lcom/facebook/widget/LoginButton;)V
.registers 2
iput-object p1, p0, Lcom/facebook/widget/aa;->a:Lcom/facebook/widget/LoginButton;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/widget/LoginButton$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/widget/aa;-><init>(Lcom/facebook/widget/LoginButton;)V
return-void
.end method
.method public a(Lcom/facebook/aw;Lcom/facebook/bk;Ljava/lang/Exception;)V
.registers 5
iget-object v0, p0, Lcom/facebook/widget/aa;->a:Lcom/facebook/widget/LoginButton;
invoke-static {v0}, Lcom/facebook/widget/LoginButton;->h(Lcom/facebook/widget/LoginButton;)V
iget-object v0, p0, Lcom/facebook/widget/aa;->a:Lcom/facebook/widget/LoginButton;
invoke-static {v0}, Lcom/facebook/widget/LoginButton;->i(Lcom/facebook/widget/LoginButton;)V
if-eqz p3, :cond_11
iget-object v0, p0, Lcom/facebook/widget/aa;->a:Lcom/facebook/widget/LoginButton;
invoke-virtual {v0, p3}, Lcom/facebook/widget/LoginButton;->a(Ljava/lang/Exception;)V
:cond_11
iget-object v0, p0, Lcom/facebook/widget/aa;->a:Lcom/facebook/widget/LoginButton;
invoke-static {v0}, Lcom/facebook/widget/LoginButton;->g(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/ab;
move-result-object v0
invoke-static {v0}, Lcom/facebook/widget/ab;->e(Lcom/facebook/widget/ab;)Lcom/facebook/bf;
move-result-object v0
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/facebook/widget/aa;->a:Lcom/facebook/widget/LoginButton;
invoke-static {v0}, Lcom/facebook/widget/LoginButton;->g(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/ab;
move-result-object v0
invoke-static {v0}, Lcom/facebook/widget/ab;->e(Lcom/facebook/widget/ab;)Lcom/facebook/bf;
move-result-object v0
invoke-interface {v0, p1, p2, p3}, Lcom/facebook/bf;->a(Lcom/facebook/aw;Lcom/facebook/bk;Ljava/lang/Exception;)V
:cond_2a
return-void
.end method