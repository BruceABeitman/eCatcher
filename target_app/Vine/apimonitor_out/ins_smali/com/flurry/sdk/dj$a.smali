.class  Lcom/flurry/sdk/dj$a;
.super Ljava/util/TimerTask;
.source "SourceFile"
.field final synthetic a:Lcom/flurry/sdk/dj;
.field private b:Lcom/flurry/sdk/dj$b;
.method constructor <init>(Lcom/flurry/sdk/dj;Lcom/flurry/sdk/dj$b;)V
.registers 3
iput-object p1, p0, Lcom/flurry/sdk/dj$a;->a:Lcom/flurry/sdk/dj;
invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V
iput-object p2, p0, Lcom/flurry/sdk/dj$a;->b:Lcom/flurry/sdk/dj$b;
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/dj$a;->a:Lcom/flurry/sdk/dj;
invoke-virtual {v0}, Lcom/flurry/sdk/dj;->a()V
iget-object v0, p0, Lcom/flurry/sdk/dj$a;->b:Lcom/flurry/sdk/dj$b;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/flurry/sdk/dj$a;->b:Lcom/flurry/sdk/dj$b;
invoke-interface {v0}, Lcom/flurry/sdk/dj$b;->q()V
:cond_e
return-void
.end method