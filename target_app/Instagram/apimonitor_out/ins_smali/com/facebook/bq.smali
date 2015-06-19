.class final Lcom/facebook/bq;
.super Ljava/lang/Object;
.source "Session.java"
.implements Lcom/facebook/r;
.field final synthetic a:Lcom/facebook/bo;
.method constructor <init>(Lcom/facebook/bo;)V
.registers 2
iput-object p1, p0, Lcom/facebook/bq;->a:Lcom/facebook/bo;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/facebook/s;)V
.registers 4
iget v0, p1, Lcom/facebook/s;->a:I
sget v1, Lcom/facebook/t;->b:I
if-ne v0, v1, :cond_d
const/4 v0, 0x0
:goto_7
iget-object v1, p0, Lcom/facebook/bq;->a:Lcom/facebook/bo;
invoke-static {v1, v0, p1}, Lcom/facebook/bo;->a(Lcom/facebook/bo;ILcom/facebook/s;)V
return-void
:cond_d
const/4 v0, -0x1
goto :goto_7
.end method