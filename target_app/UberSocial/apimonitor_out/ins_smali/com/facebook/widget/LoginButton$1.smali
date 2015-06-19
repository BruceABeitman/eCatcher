.class  Lcom/facebook/widget/LoginButton$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/facebook/al;
.field final synthetic a:Lcom/facebook/aw;
.field final synthetic b:Lcom/facebook/widget/LoginButton;
.method constructor <init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/aw;)V
.registers 3
iput-object p1, p0, Lcom/facebook/widget/LoginButton$1;->b:Lcom/facebook/widget/LoginButton;
iput-object p2, p0, Lcom/facebook/widget/LoginButton$1;->a:Lcom/facebook/aw;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/facebook/c/j;Lcom/facebook/as;)V
.registers 5
iget-object v0, p0, Lcom/facebook/widget/LoginButton$1;->a:Lcom/facebook/aw;
iget-object v1, p0, Lcom/facebook/widget/LoginButton$1;->b:Lcom/facebook/widget/LoginButton;
invoke-static {v1}, Lcom/facebook/widget/LoginButton;->a(Lcom/facebook/widget/LoginButton;)Lcom/facebook/b/m;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/b/m;->b()Lcom/facebook/aw;
move-result-object v1
if-ne v0, v1, :cond_2a
iget-object v0, p0, Lcom/facebook/widget/LoginButton$1;->b:Lcom/facebook/widget/LoginButton;
invoke-static {v0, p1}, Lcom/facebook/widget/LoginButton;->a(Lcom/facebook/widget/LoginButton;Lcom/facebook/c/j;)Lcom/facebook/c/j;
iget-object v0, p0, Lcom/facebook/widget/LoginButton$1;->b:Lcom/facebook/widget/LoginButton;
invoke-static {v0}, Lcom/facebook/widget/LoginButton;->b(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/ae;
move-result-object v0
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/facebook/widget/LoginButton$1;->b:Lcom/facebook/widget/LoginButton;
invoke-static {v0}, Lcom/facebook/widget/LoginButton;->b(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/ae;
move-result-object v0
iget-object v1, p0, Lcom/facebook/widget/LoginButton$1;->b:Lcom/facebook/widget/LoginButton;
invoke-static {v1}, Lcom/facebook/widget/LoginButton;->c(Lcom/facebook/widget/LoginButton;)Lcom/facebook/c/j;
move-result-object v1
invoke-interface {v0, v1}, Lcom/facebook/widget/ae;->a(Lcom/facebook/c/j;)V
:cond_2a
invoke-virtual {p2}, Lcom/facebook/as;->a()Lcom/facebook/w;
move-result-object v0
if-eqz v0, :cond_3d
iget-object v0, p0, Lcom/facebook/widget/LoginButton$1;->b:Lcom/facebook/widget/LoginButton;
invoke-virtual {p2}, Lcom/facebook/as;->a()Lcom/facebook/w;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/w;->m()Lcom/facebook/t;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/facebook/widget/LoginButton;->a(Ljava/lang/Exception;)V
:cond_3d
return-void
.end method