.class  Lcom/umeng/newxp/net/d;
.super Ljava/lang/Object;
.source "XpReportClient.java"
.implements Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onReportEnd(Lcom/umeng/common/net/o$a;)V
.registers 4
invoke-static {}, Lcom/umeng/newxp/net/XpReportClient;->a()Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_22
invoke-static {}, Lcom/umeng/newxp/net/XpReportClient;->a()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_22
invoke-static {}, Lcom/umeng/newxp/net/XpReportClient;->a()Ljava/util/List;
move-result-object v0
invoke-static {v0}, Lcom/umeng/newxp/common/g;->a(Ljava/util/List;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_1c
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_23
:cond_22
return-void
:cond_23
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;
invoke-interface {v0, p1}, Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;->onReportEnd(Lcom/umeng/common/net/o$a;)V
goto :goto_1c
.end method
.method public onReportStart(Ljava/util/Map;)V
.registers 5
invoke-static {}, Lcom/umeng/newxp/net/XpReportClient;->a()Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_63
invoke-static {}, Lcom/umeng/newxp/net/XpReportClient;->a()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_63
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
if-eqz p1, :cond_51
const-string/jumbo v0, "action_type"
invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_37
const-string/jumbo v0, "action_type"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
const-string/jumbo v2, "action_type"
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_37
const-string/jumbo v0, "promoter"
invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_51
const-string/jumbo v0, "promoter"
const-string/jumbo v2, "promoter"
invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_51
invoke-static {}, Lcom/umeng/newxp/net/XpReportClient;->a()Ljava/util/List;
move-result-object v0
invoke-static {v0}, Lcom/umeng/newxp/common/g;->a(Ljava/util/List;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_5d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_64
:cond_63
return-void
:cond_64
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;
invoke-interface {v0, v1}, Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;->onReportStart(Ljava/util/Map;)V
goto :goto_5d
.end method