.class  Lcom/twidroid/fragments/e/au$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/fragments/e/au;
.method constructor <init>(Lcom/twidroid/fragments/e/au;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/e/au$1;->a:Lcom/twidroid/fragments/e/au;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/e/au$1;->a:Lcom/twidroid/fragments/e/au;
iget-object v0, v0, Lcom/twidroid/fragments/e/au;->a:Lcom/twidroid/fragments/e/at;
const-string v1, "User is protected"
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/at;->d(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/au$1;->a:Lcom/twidroid/fragments/e/au;
iget-object v0, v0, Lcom/twidroid/fragments/e/au;->a:Lcom/twidroid/fragments/e/at;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/at;->P()V
iget-object v0, p0, Lcom/twidroid/fragments/e/au$1;->a:Lcom/twidroid/fragments/e/au;
iget-object v0, v0, Lcom/twidroid/fragments/e/au;->a:Lcom/twidroid/fragments/e/at;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/at;->R()V
return-void
.end method