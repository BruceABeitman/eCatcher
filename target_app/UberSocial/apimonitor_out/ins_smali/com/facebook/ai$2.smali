.class final Lcom/facebook/ai$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/facebook/aj;
.field final synthetic a:Lcom/facebook/am;
.method constructor <init>(Lcom/facebook/am;)V
.registers 2
iput-object p1, p0, Lcom/facebook/ai$2;->a:Lcom/facebook/am;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/facebook/as;)V
.registers 4
iget-object v0, p0, Lcom/facebook/ai$2;->a:Lcom/facebook/am;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/facebook/ai$2;->a:Lcom/facebook/am;
const-class v1, Lcom/facebook/c/j;
invoke-static {p1, v1}, Lcom/facebook/ai;->a(Lcom/facebook/as;Ljava/lang/Class;)Ljava/util/List;
move-result-object v1
invoke-interface {v0, v1, p1}, Lcom/facebook/am;->a(Ljava/util/List;Lcom/facebook/as;)V
:cond_f
return-void
.end method