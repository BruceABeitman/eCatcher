.class  Lcom/umeng/newxp/controller/c;
.super Ljava/lang/Object;
.source "ExchangeDataService.java"
.implements Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;
.field final synthetic a:Lcom/umeng/newxp/controller/ExchangeDataService;
.field private final synthetic b:Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;
.field private final synthetic c:Z
.method constructor <init>(Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;Z)V
.registers 4
iput-object p1, p0, Lcom/umeng/newxp/controller/c;->a:Lcom/umeng/newxp/controller/ExchangeDataService;
iput-object p2, p0, Lcom/umeng/newxp/controller/c;->b:Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;
iput-boolean p3, p0, Lcom/umeng/newxp/controller/c;->c:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic a(Lcom/umeng/newxp/controller/c;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/umeng/newxp/controller/c;->a(Z)V
return-void
.end method
.method private a(Z)V
.registers 7
const/4 v4, 0x0
const/4 v3, 0x0
iget-object v0, p0, Lcom/umeng/newxp/controller/c;->a:Lcom/umeng/newxp/controller/ExchangeDataService;
iget v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I
const/4 v1, -0x1
if-le v0, v1, :cond_35
if-eqz p1, :cond_2b
iget-object v0, p0, Lcom/umeng/newxp/controller/c;->a:Lcom/umeng/newxp/controller/ExchangeDataService;
iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;
iget-object v1, p0, Lcom/umeng/newxp/controller/c;->a:Lcom/umeng/newxp/controller/ExchangeDataService;
invoke-static {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->c(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v1
monitor-enter v1
:try_start_1a
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
iget-object v2, p0, Lcom/umeng/newxp/controller/c;->a:Lcom/umeng/newxp/controller/ExchangeDataService;
invoke-static {v2}, Lcom/umeng/newxp/controller/ExchangeDataService;->f(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
monitor-exit v1
:try_end_2b
.catchall {:try_start_1a .. :try_end_2b} :catchall_57
:cond_2b
new-instance v0, Lcom/umeng/newxp/controller/ExchangeDataService$a;
iget-object v1, p0, Lcom/umeng/newxp/controller/c;->a:Lcom/umeng/newxp/controller/ExchangeDataService;
invoke-direct {v0, v1, v4, v3, v4}, Lcom/umeng/newxp/controller/ExchangeDataService$a;-><init>(Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;ILjava/util/Map;)V
invoke-virtual {v0}, Lcom/umeng/newxp/controller/ExchangeDataService$a;->start()V
:cond_35
if-eqz p1, :cond_56
iget-object v0, p0, Lcom/umeng/newxp/controller/c;->a:Lcom/umeng/newxp/controller/ExchangeDataService;
invoke-static {v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->b(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/util/Map;
move-result-object v0
const-string/jumbo v1, "sid"
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_4c
const-string/jumbo v1, "sid"
invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_4c
new-instance v1, Lcom/umeng/newxp/controller/ExchangeDataService$a;
iget-object v2, p0, Lcom/umeng/newxp/controller/c;->a:Lcom/umeng/newxp/controller/ExchangeDataService;
invoke-direct {v1, v2, v4, v3, v0}, Lcom/umeng/newxp/controller/ExchangeDataService$a;-><init>(Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;ILjava/util/Map;)V
invoke-virtual {v1}, Lcom/umeng/newxp/controller/ExchangeDataService$a;->start()V
:cond_56
return-void
:catchall_57
move-exception v0
:try_start_58
monitor-exit v1
:try_end_59
.catchall {:try_start_58 .. :try_end_59} :catchall_57
throw v0
.end method
.method public dataReceived(ILjava/util/List;)V
.registers 8
const/4 v0, 0x1
if-ne p1, v0, :cond_e
iget-object v0, p0, Lcom/umeng/newxp/controller/c;->b:Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;
invoke-interface {v0, p1, p2}, Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;->dataReceived(ILjava/util/List;)V
iget-boolean v0, p0, Lcom/umeng/newxp/controller/c;->c:Z
invoke-direct {p0, v0}, Lcom/umeng/newxp/controller/c;->a(Z)V
:goto_d
return-void
:cond_e
iget-object v0, p0, Lcom/umeng/newxp/controller/c;->a:Lcom/umeng/newxp/controller/ExchangeDataService;
invoke-static {v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->g(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "Get from cache failed..."
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/umeng/newxp/controller/d;
iget-object v1, p0, Lcom/umeng/newxp/controller/c;->b:Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;
iget-boolean v2, p0, Lcom/umeng/newxp/controller/c;->c:Z
invoke-direct {v0, p0, v1, v2}, Lcom/umeng/newxp/controller/d;-><init>(Lcom/umeng/newxp/controller/c;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;Z)V
new-instance v1, Lcom/umeng/newxp/controller/ExchangeDataService$a;
iget-object v2, p0, Lcom/umeng/newxp/controller/c;->a:Lcom/umeng/newxp/controller/ExchangeDataService;
const/4 v3, 0x0
const/4 v4, 0x0
invoke-direct {v1, v2, v0, v3, v4}, Lcom/umeng/newxp/controller/ExchangeDataService$a;-><init>(Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;ILjava/util/Map;)V
invoke-virtual {v1}, Lcom/umeng/newxp/controller/ExchangeDataService$a;->start()V
goto :goto_d
.end method