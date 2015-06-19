.class  Lcom/twidroid/fragments/b$8;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/twidroid/fragments/b;
.method constructor <init>(Lcom/twidroid/fragments/b;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/fragments/b$8;->b:Lcom/twidroid/fragments/b;
iput-object p2, p0, Lcom/twidroid/fragments/b$8;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/b$8;->b:Lcom/twidroid/fragments/b;
iget-object v1, p0, Lcom/twidroid/fragments/b$8;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/b;->c(Ljava/lang/String;)V
return-void
.end method