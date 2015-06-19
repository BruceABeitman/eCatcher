.class public final Lcom/tencent/map/b/f$b;
.super Ljava/lang/Object;
.implements Ljava/lang/Cloneable;
.field private a:Ljava/util/List;
.method public constructor <init>(Lcom/tencent/map/b/f;Ljava/util/List;JI)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/tencent/map/b/f$b;->a:Ljava/util/List;
if-eqz p2, :cond_25
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/tencent/map/b/f$b;->a:Ljava/util/List;
invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_13
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_25
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/ScanResult;
iget-object v2, p0, Lcom/tencent/map/b/f$b;->a:Ljava/util/List;
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_13
:cond_25
return-void
.end method
.method public final a()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/tencent/map/b/f$b;->a:Ljava/util/List;
return-object v0
.end method
.method public final clone()Ljava/lang/Object;
.registers 4
const/4 v1, 0x0
:try_start_1
invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/tencent/map/b/f$b;
:goto_7
:try_end_7
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_1a
iget-object v1, p0, Lcom/tencent/map/b/f$b;->a:Ljava/util/List;
if-eqz v1, :cond_19
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, v0, Lcom/tencent/map/b/f$b;->a:Ljava/util/List;
iget-object v1, v0, Lcom/tencent/map/b/f$b;->a:Ljava/util/List;
iget-object v2, p0, Lcom/tencent/map/b/f$b;->a:Ljava/util/List;
invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
:cond_19
return-object v0
:catch_1a
move-exception v0
move-object v0, v1
goto :goto_7
.end method