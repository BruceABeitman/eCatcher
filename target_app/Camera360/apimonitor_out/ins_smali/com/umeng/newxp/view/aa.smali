.class  Lcom/umeng/newxp/view/aa;
.super Ljava/lang/Object;
.source "GridTemplate.java"
.implements Lcom/umeng/newxp/view/widget/SwipeView$a;
.field final synthetic a:Lcom/umeng/newxp/view/GridTemplate;
.method constructor <init>(Lcom/umeng/newxp/view/GridTemplate;)V
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/view/aa;->a:Lcom/umeng/newxp/view/GridTemplate;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(II)V
.registers 7
:try_start_0
iget-object v0, p0, Lcom/umeng/newxp/view/aa;->a:Lcom/umeng/newxp/view/GridTemplate;
invoke-static {v0}, Lcom/umeng/newxp/view/GridTemplate;->b(Lcom/umeng/newxp/view/GridTemplate;)Ljava/util/List;
move-result-object v0
invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/umeng/newxp/view/widget/a$b;
iget-object v1, p0, Lcom/umeng/newxp/view/aa;->a:Lcom/umeng/newxp/view/GridTemplate;
iget v2, v0, Lcom/umeng/newxp/view/widget/a$b;->a:I
iget v3, v0, Lcom/umeng/newxp/view/widget/a$b;->d:I
iget v0, v0, Lcom/umeng/newxp/view/widget/a$b;->c:I
invoke-static {v1, v2, v3, v0}, Lcom/umeng/newxp/view/GridTemplate;->a(Lcom/umeng/newxp/view/GridTemplate;III)V
invoke-static {}, Lcom/umeng/newxp/view/GridTemplate;->a()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "send report  [newPage="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "]"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_35
:try_end_35
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36
return-void
:catch_36
move-exception v0
invoke-static {}, Lcom/umeng/newxp/view/GridTemplate;->a()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "can`t send report [oldPage="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "]  [newPage="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "]"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
goto :goto_35
.end method