.class final Lcom/squareup/picasso/d$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/StringBuilder;
.method constructor <init>(Ljava/lang/StringBuilder;)V
.registers 2
iput-object p1, p0, Lcom/squareup/picasso/d$2;->a:Ljava/lang/StringBuilder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
new-instance v0, Ljava/lang/NullPointerException;
iget-object v1, p0, Lcom/squareup/picasso/d$2;->a:Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
.end method