.class final Lcom/facebook/LoginActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/facebook/f;
.field final synthetic a:Lcom/facebook/LoginActivity;
.method constructor <init>(Lcom/facebook/LoginActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/LoginActivity$2;->a:Lcom/facebook/LoginActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/facebook/LoginActivity$2;->a:Lcom/facebook/LoginActivity;
sget v1, Lcom/facebook/a/e;->c:I
invoke-virtual {v0, v1}, Lcom/facebook/LoginActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/facebook/LoginActivity$2;->a:Lcom/facebook/LoginActivity;
sget v1, Lcom/facebook/a/e;->c:I
invoke-virtual {v0, v1}, Lcom/facebook/LoginActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method