.class  Lcom/umeng/newxp/b;
.super Ljava/lang/Object;
.source "PreloadData.java"
.implements Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;
.field final synthetic a:Lcom/umeng/newxp/a;
.method constructor <init>(Lcom/umeng/newxp/a;)V
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/b;->a:Lcom/umeng/newxp/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public dataReceived(ILjava/util/List;)V
.registers 9
if-eqz p2, :cond_9
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v0
const/4 v1, 0x1
if-ge v0, v1, :cond_10
:cond_9
iget-object v0, p0, Lcom/umeng/newxp/b;->a:Lcom/umeng/newxp/a;
sget-object v1, Lcom/umeng/newxp/a$a;->b:Lcom/umeng/newxp/a$a;
iput-object v1, v0, Lcom/umeng/newxp/a;->a:Lcom/umeng/newxp/a$a;
:cond_f
return-void
:cond_10
iget-object v0, p0, Lcom/umeng/newxp/b;->a:Lcom/umeng/newxp/a;
const/4 v1, 0x0
invoke-static {v0, p2, v1}, Lcom/umeng/newxp/a;->a(Lcom/umeng/newxp/a;Ljava/util/List;Z)V
iget-object v0, p0, Lcom/umeng/newxp/b;->a:Lcom/umeng/newxp/a;
iget-object v1, p0, Lcom/umeng/newxp/b;->a:Lcom/umeng/newxp/a;
iget-object v1, v1, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;
iget v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->newTips:I
invoke-virtual {v0, v1}, Lcom/umeng/newxp/a;->a(I)V
invoke-static {}, Lcom/umeng/newxp/a;->c()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/umeng/newxp/b;->a:Lcom/umeng/newxp/a;
iget-object v2, v2, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;
iget-wide v2, v2, Lcom/umeng/newxp/controller/ExchangeDataService;->oid:J
invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "  : init preload data from server..."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/umeng/newxp/b;->a:Lcom/umeng/newxp/a;
invoke-static {v0}, Lcom/umeng/newxp/a;->a(Lcom/umeng/newxp/a;)Z
move-result v0
if-eqz v0, :cond_f
invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_4e
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_f
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/umeng/newxp/Promoter;
invoke-static {}, Lcom/umeng/newxp/a;->c()Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
iget-object v4, p0, Lcom/umeng/newxp/b;->a:Lcom/umeng/newxp/a;
iget-object v4, v4, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;
iget-wide v4, v4, Lcom/umeng/newxp/controller/ExchangeDataService;->oid:J
invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "  promoter "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v0, v0, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_4e
.end method