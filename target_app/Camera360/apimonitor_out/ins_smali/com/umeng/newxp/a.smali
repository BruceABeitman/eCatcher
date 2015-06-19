.class public Lcom/umeng/newxp/a;
.super Ljava/lang/Object;
.source "PreloadData.java"
.field private static final c:Ljava/lang/String;
.field public a:Lcom/umeng/newxp/a$a;
.field public b:Lcom/umeng/newxp/controller/ExchangeDataService;
.field private d:Ljava/util/List;
.field private e:Landroid/content/Context;
.field private f:Ljava/lang/String;
.field private g:Ljava/lang/String;
.field private h:I
.field private i:Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;
.field private j:Z
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/umeng/newxp/a;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/umeng/newxp/a;->c:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/umeng/newxp/a;->d:Ljava/util/List;
sget-object v0, Lcom/umeng/newxp/a$a;->b:Lcom/umeng/newxp/a$a;
iput-object v0, p0, Lcom/umeng/newxp/a;->a:Lcom/umeng/newxp/a$a;
const/4 v0, -0x1
iput v0, p0, Lcom/umeng/newxp/a;->h:I
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/umeng/newxp/a;->j:Z
iput-object p1, p0, Lcom/umeng/newxp/a;->e:Landroid/content/Context;
iput-object p2, p0, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;
iput-object p3, p0, Lcom/umeng/newxp/a;->i:Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;
return-void
.end method
.method static synthetic a(Lcom/umeng/newxp/a;Ljava/util/List;Z)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/umeng/newxp/a;->a(Ljava/util/List;Z)V
return-void
.end method
.method private a(Ljava/util/List;Z)V
.registers 4
if-eqz p2, :cond_1f
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/umeng/newxp/a;->d:Ljava/util/List;
iget-object v0, p0, Lcom/umeng/newxp/a;->d:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
:goto_e
iget-object v0, p0, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;
iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;
iput-object v0, p0, Lcom/umeng/newxp/a;->f:Ljava/lang/String;
iget-object v0, p0, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;
iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->opensize:Ljava/lang/String;
iput-object v0, p0, Lcom/umeng/newxp/a;->g:Ljava/lang/String;
sget-object v0, Lcom/umeng/newxp/a$a;->a:Lcom/umeng/newxp/a$a;
iput-object v0, p0, Lcom/umeng/newxp/a;->a:Lcom/umeng/newxp/a$a;
return-void
:cond_1f
iput-object p1, p0, Lcom/umeng/newxp/a;->d:Ljava/util/List;
goto :goto_e
.end method
.method static synthetic a(Lcom/umeng/newxp/a;)Z
.registers 2
iget-boolean v0, p0, Lcom/umeng/newxp/a;->j:Z
return v0
.end method
.method static synthetic c()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/umeng/newxp/a;->c:Ljava/lang/String;
return-object v0
.end method
.method public declared-synchronized a()V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;
iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_12
iget-object v0, p0, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;
const-string/jumbo v1, ""
iput-object v1, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;
:cond_12
iget-object v0, p0, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;
iget-object v1, p0, Lcom/umeng/newxp/a;->e:Landroid/content/Context;
new-instance v2, Lcom/umeng/newxp/b;
invoke-direct {v2, p0}, Lcom/umeng/newxp/b;-><init>(Lcom/umeng/newxp/a;)V
invoke-virtual {v0, v1, v2}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V
:try_end_1e
.catchall {:try_start_1 .. :try_end_1e} :catchall_20
monitor-exit p0
return-void
:catchall_20
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected a(I)V
.registers 6
sget-object v0, Lcom/umeng/newxp/a;->c:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;
iget-wide v2, v2, Lcom/umeng/newxp/controller/ExchangeDataService;->oid:J
invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "  PreloadData set tips "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
iget v0, p0, Lcom/umeng/newxp/a;->h:I
iput p1, p0, Lcom/umeng/newxp/a;->h:I
iget v1, p0, Lcom/umeng/newxp/a;->h:I
if-eq v1, v0, :cond_34
iget-object v0, p0, Lcom/umeng/newxp/a;->i:Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/umeng/newxp/a;->i:Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;
iget v1, p0, Lcom/umeng/newxp/a;->h:I
invoke-interface {v0, v1}, Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;->onChanged(I)V
:cond_34
iget-boolean v0, p0, Lcom/umeng/newxp/a;->j:Z
if-eqz v0, :cond_46
iget-object v0, p0, Lcom/umeng/newxp/a;->i:Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;
if-eqz v0, :cond_46
iget-object v0, p0, Lcom/umeng/newxp/a;->i:Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;
iget-object v1, p0, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;
iget-wide v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->oid:J
long-to-int v1, v1
invoke-interface {v0, v1}, Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;->onChanged(I)V
:cond_46
return-void
.end method
.method public a(Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;)V
.registers 3
iput-object p1, p0, Lcom/umeng/newxp/a;->i:Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;
sget-object v0, Lcom/umeng/newxp/a$a;->b:Lcom/umeng/newxp/a$a;
iput-object v0, p0, Lcom/umeng/newxp/a;->a:Lcom/umeng/newxp/a$a;
const/4 v0, 0x0
iput-object v0, p0, Lcom/umeng/newxp/a;->d:Ljava/util/List;
return-void
.end method
.method public declared-synchronized a(Ljava/util/List;)V
.registers 8
const/4 v1, 0x1
monitor-enter p0
if-eqz p1, :cond_a
:try_start_4
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
if-ge v0, v1, :cond_10
:cond_a
sget-object v0, Lcom/umeng/newxp/a$a;->b:Lcom/umeng/newxp/a$a;
iput-object v0, p0, Lcom/umeng/newxp/a;->a:Lcom/umeng/newxp/a$a;
:cond_e
:try_end_e
.catchall {:try_start_4 .. :try_end_e} :catchall_72
monitor-exit p0
return-void
:cond_10
const/4 v0, 0x1
:try_start_11
invoke-direct {p0, p1, v0}, Lcom/umeng/newxp/a;->a(Ljava/util/List;Z)V
iget-object v0, p0, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;
iget v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->newTips:I
invoke-virtual {p0, v0}, Lcom/umeng/newxp/a;->a(I)V
sget-object v0, Lcom/umeng/newxp/a;->c:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;
iget-wide v2, v2, Lcom/umeng/newxp/controller/ExchangeDataService;->oid:J
invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "  : init preload data with promoters..."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/umeng/newxp/a;->j:Z
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/umeng/newxp/a;->d:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_42
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/umeng/newxp/Promoter;
sget-object v2, Lcom/umeng/newxp/a;->c:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
iget-object v4, p0, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;
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
:try_end_71
.catchall {:try_start_11 .. :try_end_71} :catchall_72
goto :goto_42
:catchall_72
move-exception v0
monitor-exit p0
throw v0
.end method
.method public b()Ljava/util/List;
.registers 7
const/4 v1, 0x0
const/4 v5, -0x1
sget-object v0, Lcom/umeng/newxp/a;->c:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
iget-object v3, p0, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;
iget-wide v3, v3, Lcom/umeng/newxp/controller/ExchangeDataService;->oid:J
invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, "  PreloadData use preload data.. "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/umeng/newxp/a;->a:Lcom/umeng/newxp/a$a;
sget-object v2, Lcom/umeng/newxp/a$a;->a:Lcom/umeng/newxp/a$a;
if-ne v0, v2, :cond_7f
iget-object v0, p0, Lcom/umeng/newxp/a;->d:Ljava/util/List;
sget-object v2, Lcom/umeng/newxp/a$a;->b:Lcom/umeng/newxp/a$a;
iput-object v2, p0, Lcom/umeng/newxp/a;->a:Lcom/umeng/newxp/a$a;
iput-object v1, p0, Lcom/umeng/newxp/a;->d:Ljava/util/List;
iget v1, p0, Lcom/umeng/newxp/a;->h:I
if-eq v1, v5, :cond_3e
iget-object v1, p0, Lcom/umeng/newxp/a;->i:Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;
if-eqz v1, :cond_3e
iput v5, p0, Lcom/umeng/newxp/a;->h:I
iget-object v1, p0, Lcom/umeng/newxp/a;->i:Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;
iget v2, p0, Lcom/umeng/newxp/a;->h:I
invoke-interface {v1, v2}, Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;->onChanged(I)V
:cond_3e
iget-boolean v1, p0, Lcom/umeng/newxp/a;->j:Z
if-eqz v1, :cond_4d
iget-object v1, p0, Lcom/umeng/newxp/a;->i:Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;
if-eqz v1, :cond_4d
iget-object v1, p0, Lcom/umeng/newxp/a;->i:Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;
iget v2, p0, Lcom/umeng/newxp/a;->h:I
invoke-interface {v1, v2}, Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;->onChanged(I)V
:cond_4d
sget-object v1, Lcom/umeng/newxp/a;->c:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
iget-object v3, p0, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;
iget-wide v3, v3, Lcom/umeng/newxp/controller/ExchangeDataService;->oid:J
invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, "  EXIST preload data  "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;
iget-object v2, p0, Lcom/umeng/newxp/a;->f:Ljava/lang/String;
iput-object v2, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;
iget-object v1, p0, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;
iget-object v2, p0, Lcom/umeng/newxp/a;->g:Ljava/lang/String;
iput-object v2, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->opensize:Ljava/lang/String;
:goto_7e
return-object v0
:cond_7f
move-object v0, v1
goto :goto_7e
.end method