.class  Lcom/twidroid/w;
.super Lcom/twidroid/billing/j;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/TwidroidClient;
.method public constructor <init>(Lcom/twidroid/TwidroidClient;Landroid/os/Handler;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/w;->a:Lcom/twidroid/TwidroidClient;
invoke-direct {p0, p1, p2}, Lcom/twidroid/billing/j;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V
return-void
.end method
.method public a(Lcom/twidroid/billing/e;Lcom/twidroid/billing/i;)V
.registers 5
sget-object v0, Lcom/twidroid/billing/i;->b:Lcom/twidroid/billing/i;
if-ne p2, v0, :cond_e
iget-object v0, p0, Lcom/twidroid/w;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->a(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/d/v;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/twidroid/d/v;->g(Z)V
:cond_e
return-void
.end method
.method public a(Lcom/twidroid/billing/f;Lcom/twidroid/billing/i;)V
.registers 5
iget-object v0, p0, Lcom/twidroid/w;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->a(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/d/v;
move-result-object v1
sget-object v0, Lcom/twidroid/billing/i;->a:Lcom/twidroid/billing/i;
if-ne p2, v0, :cond_f
const/4 v0, 0x1
:goto_b
invoke-virtual {v1, v0}, Lcom/twidroid/d/v;->h(Z)V
return-void
:cond_f
const/4 v0, 0x0
goto :goto_b
.end method
.method public a(Lcom/twidroid/billing/h;Ljava/lang/String;IJLjava/lang/String;)V
.registers 10
const-string v0, "TwidroidClient"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "purchasedItem [Billing]: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "ubersocial.pro"
invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4d
iget-object v0, p0, Lcom/twidroid/w;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->a(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/d/v;
move-result-object v1
sget-object v0, Lcom/twidroid/billing/h;->a:Lcom/twidroid/billing/h;
if-ne p1, v0, :cond_4e
const/4 v0, 0x1
:goto_2b
invoke-virtual {v1, v0}, Lcom/twidroid/d/v;->g(Z)V
iget-object v0, p0, Lcom/twidroid/w;->a:Lcom/twidroid/TwidroidClient;
const v1, 0x7f0900f2
invoke-virtual {v0, v1}, Lcom/twidroid/TwidroidClient;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout;
iget-object v1, p0, Lcom/twidroid/w;->a:Lcom/twidroid/TwidroidClient;
invoke-virtual {v1, v0}, Lcom/twidroid/TwidroidClient;->a(Landroid/widget/FrameLayout;)V
iget-object v0, p0, Lcom/twidroid/w;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->h(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/ui/a/af;
move-result-object v0
sget-object v1, Lcom/twidroid/t;->g:Lcom/twidroid/t;
invoke-virtual {v1}, Lcom/twidroid/t;->ordinal()I
move-result v1
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/af;->b(I)V
:cond_4d
return-void
:cond_4e
const/4 v0, 0x0
goto :goto_2b
.end method
.method public a(ZLjava/lang/String;)V
.registers 4
if-nez p2, :cond_9
if-eqz p1, :cond_9
iget-object v0, p0, Lcom/twidroid/w;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->p(Lcom/twidroid/TwidroidClient;)V
:cond_9
return-void
.end method