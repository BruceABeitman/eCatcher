.class final Lcom/facebook/widget/a;
.super Ljava/lang/Object;
.source "LoginButton.java"
.implements Lcom/facebook/bh;
.field final synthetic a:Lcom/facebook/bo;
.field final synthetic b:Lcom/facebook/widget/LoginButton;
.method constructor <init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/bo;)V
.registers 3
iput-object p1, p0, Lcom/facebook/widget/a;->b:Lcom/facebook/widget/LoginButton;
iput-object p2, p0, Lcom/facebook/widget/a;->a:Lcom/facebook/bo;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/facebook/h/h;Lcom/facebook/bn;)V
.registers 5
iget-object v0, p0, Lcom/facebook/widget/a;->a:Lcom/facebook/bo;
iget-object v1, p0, Lcom/facebook/widget/a;->b:Lcom/facebook/widget/LoginButton;
invoke-static {v1}, Lcom/facebook/widget/LoginButton;->a(Lcom/facebook/widget/LoginButton;)Lcom/facebook/g/q;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/g/q;->b()Lcom/facebook/bo;
move-result-object v1
if-ne v0, v1, :cond_25
iget-object v0, p0, Lcom/facebook/widget/a;->b:Lcom/facebook/widget/LoginButton;
invoke-static {v0, p1}, Lcom/facebook/widget/LoginButton;->a(Lcom/facebook/widget/LoginButton;Lcom/facebook/h/h;)Lcom/facebook/h/h;
iget-object v0, p0, Lcom/facebook/widget/a;->b:Lcom/facebook/widget/LoginButton;
invoke-static {v0}, Lcom/facebook/widget/LoginButton;->b(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/g;
move-result-object v0
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/facebook/widget/a;->b:Lcom/facebook/widget/LoginButton;
invoke-static {v0}, Lcom/facebook/widget/LoginButton;->b(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/g;
iget-object v0, p0, Lcom/facebook/widget/a;->b:Lcom/facebook/widget/LoginButton;
invoke-static {v0}, Lcom/facebook/widget/LoginButton;->c(Lcom/facebook/widget/LoginButton;)Lcom/facebook/h/h;
:cond_25
invoke-virtual {p2}, Lcom/facebook/bn;->a()Lcom/facebook/ac;
move-result-object v0
if-eqz v0, :cond_38
iget-object v0, p0, Lcom/facebook/widget/a;->b:Lcom/facebook/widget/LoginButton;
invoke-virtual {p2}, Lcom/facebook/bn;->a()Lcom/facebook/ac;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/ac;->e()Lcom/facebook/z;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/facebook/widget/LoginButton;->a(Ljava/lang/Exception;)V
:cond_38
return-void
.end method