.class final Lcom/facebook/LoginActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/facebook/g;
.field final synthetic a:Lcom/facebook/LoginActivity;
.method constructor <init>(Lcom/facebook/LoginActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/LoginActivity$1;->a:Lcom/facebook/LoginActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/facebook/AuthorizationClient$Result;)V
.registers 3
iget-object v0, p0, Lcom/facebook/LoginActivity$1;->a:Lcom/facebook/LoginActivity;
invoke-static {v0, p1}, Lcom/facebook/LoginActivity;->a(Lcom/facebook/LoginActivity;Lcom/facebook/AuthorizationClient$Result;)V
return-void
.end method