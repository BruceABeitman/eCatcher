.class final Lcom/squareup/picasso/t$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/squareup/picasso/t;
.method constructor <init>(Lcom/squareup/picasso/t;)V
.registers 2
iput-object p1, p0, Lcom/squareup/picasso/t$1;->a:Lcom/squareup/picasso/t;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "INTERNET permission is required."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
.end method