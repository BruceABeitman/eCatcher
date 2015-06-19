.class  Lcom/twidroid/widget/e;
.super Lcom/twidroid/widget/c;
.source "SourceFile"
.field final synthetic c:Lcom/twidroid/widget/BaseWidget;
.method constructor <init>(Lcom/twidroid/widget/BaseWidget;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/widget/e;->c:Lcom/twidroid/widget/BaseWidget;
invoke-direct {p0, p1}, Lcom/twidroid/widget/c;-><init>(Lcom/twidroid/widget/BaseWidget;)V
return-void
.end method
.method protected a(Ljava/util/List;)V
.registers 5
const/4 v2, 0x2
if-eqz p1, :cond_36
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_36
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/twidroid/widget/o;->d(Ljava/util/List;)V
invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/widget/e;->a:Lcom/twidroid/widget/g;
iget v1, v1, Lcom/twidroid/widget/g;->c:I
invoke-virtual {v0, v1}, Lcom/twidroid/widget/o;->b(I)I
move-result v0
if-ne v0, v2, :cond_26
:cond_26
iget-object v0, p0, Lcom/twidroid/widget/e;->c:Lcom/twidroid/widget/BaseWidget;
sget-object v1, Lcom/twidroid/widget/BaseWidget;->u:Landroid/content/Context;
invoke-virtual {v0, v1}, Lcom/twidroid/widget/BaseWidget;->a(Landroid/content/Context;)V
invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1, v2}, Lcom/twidroid/widget/o;->b(ZI)V
:goto_35
return-void
:cond_36
invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1, v2}, Lcom/twidroid/widget/o;->b(ZI)V
goto :goto_35
.end method
.method protected synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/util/List;
invoke-virtual {p0, p1}, Lcom/twidroid/widget/e;->a(Ljava/util/List;)V
return-void
.end method