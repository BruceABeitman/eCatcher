.class final Lcom/squareup/picasso/k$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/os/Message;
.field final synthetic b:Lcom/squareup/picasso/k;
.method constructor <init>(Lcom/squareup/picasso/k;Landroid/os/Message;)V
.registers 3
iput-object p1, p0, Lcom/squareup/picasso/k$1;->b:Lcom/squareup/picasso/k;
iput-object p2, p0, Lcom/squareup/picasso/k$1;->a:Landroid/os/Message;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
new-instance v0, Ljava/lang/AssertionError;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unknown handler message received: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/squareup/picasso/k$1;->a:Landroid/os/Message;
iget v2, v2, Landroid/os/Message;->what:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v0
.end method