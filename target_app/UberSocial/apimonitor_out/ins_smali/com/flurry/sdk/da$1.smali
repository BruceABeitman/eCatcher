.class  Lcom/flurry/sdk/da$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/flurry/sdk/ei$a;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Ljava/lang/String;
.field final synthetic c:Lcom/flurry/sdk/da;
.method constructor <init>(Lcom/flurry/sdk/da;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/flurry/sdk/da$1;->c:Lcom/flurry/sdk/da;
iput-object p2, p0, Lcom/flurry/sdk/da$1;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/flurry/sdk/da$1;->b:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public bridge synthetic a(Lcom/flurry/sdk/ei;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/lang/Void;
invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/da$1;->a(Lcom/flurry/sdk/ei;Ljava/lang/Void;)V
return-void
.end method
.method public a(Lcom/flurry/sdk/ei;Ljava/lang/Void;)V
.registers 7
invoke-virtual {p1}, Lcom/flurry/sdk/ei;->e()I
move-result v0
if-lez v0, :cond_54
invoke-static {}, Lcom/flurry/sdk/da;->b()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "FlurryDataSender: report "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/flurry/sdk/da$1;->a:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " sent. HTTP response: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/flurry/sdk/el;->c()I
move-result v1
const/4 v2, 0x3
if-gt v1, v2, :cond_45
invoke-static {}, Lcom/flurry/sdk/el;->d()Z
move-result v1
if-eqz v1, :cond_45
invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;
move-result-object v1
new-instance v2, Lcom/flurry/sdk/da$1$1;
invoke-direct {v2, p0, v0}, Lcom/flurry/sdk/da$1$1;-><init>(Lcom/flurry/sdk/da$1;I)V
invoke-virtual {v1, v2}, Lcom/flurry/sdk/dl;->a(Ljava/lang/Runnable;)V
:cond_45
iget-object v1, p0, Lcom/flurry/sdk/da$1;->c:Lcom/flurry/sdk/da;
iget-object v2, p0, Lcom/flurry/sdk/da$1;->a:Ljava/lang/String;
iget-object v3, p0, Lcom/flurry/sdk/da$1;->b:Ljava/lang/String;
invoke-virtual {v1, v2, v3, v0}, Lcom/flurry/sdk/da;->a(Ljava/lang/String;Ljava/lang/String;I)V
iget-object v0, p0, Lcom/flurry/sdk/da$1;->c:Lcom/flurry/sdk/da;
invoke-virtual {v0}, Lcom/flurry/sdk/da;->d()V
:goto_53
return-void
:cond_54
iget-object v0, p0, Lcom/flurry/sdk/da$1;->c:Lcom/flurry/sdk/da;
iget-object v1, p0, Lcom/flurry/sdk/da$1;->a:Ljava/lang/String;
iget-object v2, p0, Lcom/flurry/sdk/da$1;->b:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/da;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_53
.end method