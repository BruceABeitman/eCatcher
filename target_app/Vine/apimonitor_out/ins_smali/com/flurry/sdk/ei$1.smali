.class  Lcom/flurry/sdk/ei$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/flurry/sdk/ek$c;
.field final synthetic a:Lcom/flurry/sdk/ei;
.method constructor <init>(Lcom/flurry/sdk/ei;)V
.registers 2
iput-object p1, p0, Lcom/flurry/sdk/ei$1;->a:Lcom/flurry/sdk/ei;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/flurry/sdk/ek;)V
.registers 3
iget-object v0, p0, Lcom/flurry/sdk/ei$1;->a:Lcom/flurry/sdk/ei;
invoke-static {v0}, Lcom/flurry/sdk/ei;->d(Lcom/flurry/sdk/ei;)V
return-void
.end method
.method public a(Lcom/flurry/sdk/ek;Ljava/io/InputStream;)V
.registers 5
invoke-virtual {p1}, Lcom/flurry/sdk/ek;->d()Z
move-result v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
iget-object v0, p0, Lcom/flurry/sdk/ei$1;->a:Lcom/flurry/sdk/ei;
invoke-static {v0}, Lcom/flurry/sdk/ei;->c(Lcom/flurry/sdk/ei;)Lcom/flurry/sdk/eu;
move-result-object v0
if-eqz v0, :cond_6
iget-object v0, p0, Lcom/flurry/sdk/ei$1;->a:Lcom/flurry/sdk/ei;
iget-object v1, p0, Lcom/flurry/sdk/ei$1;->a:Lcom/flurry/sdk/ei;
invoke-static {v1}, Lcom/flurry/sdk/ei;->c(Lcom/flurry/sdk/ei;)Lcom/flurry/sdk/eu;
move-result-object v1
invoke-interface {v1, p2}, Lcom/flurry/sdk/eu;->a(Ljava/io/InputStream;)Ljava/lang/Object;
move-result-object v1
invoke-static {v0, v1}, Lcom/flurry/sdk/ei;->a(Lcom/flurry/sdk/ei;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_6
.end method
.method public a(Lcom/flurry/sdk/ek;Ljava/io/OutputStream;)V
.registers 5
iget-object v0, p0, Lcom/flurry/sdk/ei$1;->a:Lcom/flurry/sdk/ei;
invoke-static {v0}, Lcom/flurry/sdk/ei;->a(Lcom/flurry/sdk/ei;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/flurry/sdk/ei$1;->a:Lcom/flurry/sdk/ei;
invoke-static {v0}, Lcom/flurry/sdk/ei;->b(Lcom/flurry/sdk/ei;)Lcom/flurry/sdk/eu;
move-result-object v0
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/flurry/sdk/ei$1;->a:Lcom/flurry/sdk/ei;
invoke-static {v0}, Lcom/flurry/sdk/ei;->b(Lcom/flurry/sdk/ei;)Lcom/flurry/sdk/eu;
move-result-object v0
iget-object v1, p0, Lcom/flurry/sdk/ei$1;->a:Lcom/flurry/sdk/ei;
invoke-static {v1}, Lcom/flurry/sdk/ei;->a(Lcom/flurry/sdk/ei;)Ljava/lang/Object;
move-result-object v1
invoke-interface {v0, p2, v1}, Lcom/flurry/sdk/eu;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V
:cond_1f
return-void
.end method