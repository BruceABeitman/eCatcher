.class  Lcom/lenovo/anyshare/sdk/internal/cj$1;
.super Ljava/lang/Object;
.source "WifiNetworkManager.java"
.implements Lcom/lenovo/anyshare/sdk/internal/ci$d;
.field final synthetic a:Lcom/lenovo/anyshare/sdk/internal/cj;
.method constructor <init>(Lcom/lenovo/anyshare/sdk/internal/cj;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/cj$1;->a:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()V
.registers 4
const-string/jumbo v0, "WifiNetworkManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "mHotspotClientListener: onScanFailed(): air plane mode: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/al;->c()Z
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj$1;->a:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/cj;->h(Lcom/lenovo/anyshare/sdk/internal/cj;)V
return-void
.end method
.method public a(Ljava/util/List;)V
.registers 11
const/4 v5, 0x0
const-string/jumbo v6, "WifiNetworkManager"
const-string/jumbo v7, "mNetworkMasterListener: onScanResult(size = %d)"
const/4 v4, 0x1
new-array v8, v4, [Ljava/lang/Object;
if-nez p1, :cond_4c
move v4, v5
:goto_d
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v8, v5
invoke-static {v6, v7, v8}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/cj$1;->a:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-static {v4}, Lcom/lenovo/anyshare/sdk/internal/cj;->c(Lcom/lenovo/anyshare/sdk/internal/cj;)Ljava/util/Set;
move-result-object v4
invoke-interface {v4}, Ljava/util/Set;->clear()V
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
if-eqz p1, :cond_5b
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_2a
:goto_2a
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_5b
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/cg;->b(Ljava/lang/String;)Z
move-result v4
if-nez v4, :cond_51
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_2a
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/cj$1;->a:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-static {v4}, Lcom/lenovo/anyshare/sdk/internal/cj;->c(Lcom/lenovo/anyshare/sdk/internal/cj;)Ljava/util/Set;
move-result-object v4
invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_2a
:cond_4c
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v4
goto :goto_d
:cond_51
invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/cg;->d(Ljava/lang/String;)Lcom/lenovo/network/base/Device;
move-result-object v0
if-eqz v0, :cond_2a
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_2a
:cond_5b
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/cj$1;->a:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-static {v4}, Lcom/lenovo/anyshare/sdk/internal/cj;->d(Lcom/lenovo/anyshare/sdk/internal/cj;)Ljava/util/List;
move-result-object v4
invoke-interface {v4}, Ljava/util/List;->clear()V
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/cj$1;->a:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-static {v4}, Lcom/lenovo/anyshare/sdk/internal/cj;->e(Lcom/lenovo/anyshare/sdk/internal/cj;)Ljava/util/List;
move-result-object v4
invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/cj$1;->a:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-virtual {v4}, Lcom/lenovo/anyshare/sdk/internal/cj;->a()Lcom/lenovo/anyshare/sdk/internal/bz$a;
move-result-object v4
sget-object v6, Lcom/lenovo/anyshare/sdk/internal/bz$a;->c:Lcom/lenovo/anyshare/sdk/internal/bz$a;
if-ne v4, v6, :cond_8c
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/cj$1;->a:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-virtual {v4}, Lcom/lenovo/anyshare/sdk/internal/cj;->p()Z
move-result v4
if-nez v4, :cond_8c
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/cj$1;->a:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-static {v4}, Lcom/lenovo/anyshare/sdk/internal/cj;->f(Lcom/lenovo/anyshare/sdk/internal/cj;)Ljava/lang/String;
move-result-object v4
if-eqz v4, :cond_92
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/cj$1;->a:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-static {v4}, Lcom/lenovo/anyshare/sdk/internal/cj;->g(Lcom/lenovo/anyshare/sdk/internal/cj;)V
:goto_8c
:cond_8c
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/cj$1;->a:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-static {v4, v1}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Lcom/lenovo/anyshare/sdk/internal/cj;Ljava/util/List;)V
return-void
:cond_92
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v4
if-lez v4, :cond_8c
invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/lenovo/network/base/Device;
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/cj$1;->a:Lcom/lenovo/anyshare/sdk/internal/cj;
sget-object v5, Lcom/lenovo/anyshare/sdk/internal/ca$a;->c:Lcom/lenovo/anyshare/sdk/internal/ca$a;
invoke-virtual {v4, v0, v5}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Lcom/lenovo/network/base/Device;Lcom/lenovo/anyshare/sdk/internal/ca$a;)V
goto :goto_8c
.end method
.method public a(Z)V
.registers 4
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cj$1;->a:Lcom/lenovo/anyshare/sdk/internal/cj;
if-eqz p1, :cond_11
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cd;->c:Lcom/lenovo/anyshare/sdk/internal/cd;
:goto_6
invoke-static {v1, v0}, Lcom/lenovo/anyshare/sdk/internal/cj;->b(Lcom/lenovo/anyshare/sdk/internal/cj;Lcom/lenovo/anyshare/sdk/internal/cd;)V
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj$1;->a:Lcom/lenovo/anyshare/sdk/internal/cj;
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/cd;->c:Lcom/lenovo/anyshare/sdk/internal/cd;
invoke-static {v0, v1, p1}, Lcom/lenovo/anyshare/sdk/internal/cj;->b(Lcom/lenovo/anyshare/sdk/internal/cj;Lcom/lenovo/anyshare/sdk/internal/cd;Z)V
return-void
:cond_11
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cd;->a:Lcom/lenovo/anyshare/sdk/internal/cd;
goto :goto_6
.end method
.method public a(ZLjava/lang/String;)V
.registers 9
const/4 v5, 0x0
const-string/jumbo v2, "WifiNetworkManager"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "onClientStateChanged("
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, ", "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, ")"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/cj$1;->a:Lcom/lenovo/anyshare/sdk/internal/cj;
if-eqz p1, :cond_4a
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/cd;->b:Lcom/lenovo/anyshare/sdk/internal/cd;
:goto_33
invoke-static {v3, v2}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Lcom/lenovo/anyshare/sdk/internal/cj;Lcom/lenovo/anyshare/sdk/internal/cd;)V
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cj$1;->a:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Lcom/lenovo/anyshare/sdk/internal/cj;)Lcom/lenovo/network/base/Device;
move-result-object v1
if-eqz p1, :cond_c0
if-nez v1, :cond_4d
const-string/jumbo v2, "WifiNetworkManager"
const-string/jumbo v3, "mRemoteDevice is NULL!"
invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_49
return-void
:cond_4a
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/cd;->a:Lcom/lenovo/anyshare/sdk/internal/cd;
goto :goto_33
:cond_4d
invoke-virtual {v1, p2}, Lcom/lenovo/network/base/Device;->setIp(Ljava/lang/String;)V
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cj$1;->a:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/cj;->m()Lcom/lenovo/anyshare/sdk/internal/ca$a;
move-result-object v0
const-string/jumbo v2, "WifiNetworkManager"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "onClientStateChanged(): connect to "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, " / mode="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/ca$a;->a:Lcom/lenovo/anyshare/sdk/internal/ca$a;
if-ne v0, v2, :cond_91
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cj$1;->a:Lcom/lenovo/anyshare/sdk/internal/cj;
sget-object v3, Lcom/lenovo/anyshare/sdk/internal/ca$b;->d:Lcom/lenovo/anyshare/sdk/internal/ca$b;
invoke-virtual {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Lcom/lenovo/anyshare/sdk/internal/ca$b;)V
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cj$1;->a:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/cj;->k()V
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cj$1;->a:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-virtual {v2, v5}, Lcom/lenovo/anyshare/sdk/internal/cj;->b(Z)V
goto :goto_49
:cond_91
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/ca$a;->b:Lcom/lenovo/anyshare/sdk/internal/ca$a;
if-ne v0, v2, :cond_b8
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cj$1;->a:Lcom/lenovo/anyshare/sdk/internal/cj;
sget-object v3, Lcom/lenovo/anyshare/sdk/internal/ca$b;->b:Lcom/lenovo/anyshare/sdk/internal/ca$b;
invoke-virtual {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Lcom/lenovo/anyshare/sdk/internal/ca$b;)V
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cj$1;->a:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/cj;->b(Lcom/lenovo/anyshare/sdk/internal/cj;)Z
move-result v2
if-eqz v2, :cond_b2
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cj$1;->a:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-virtual {v1}, Lcom/lenovo/network/base/Device;->getNickname()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Lcom/lenovo/anyshare/sdk/internal/cj;Ljava/lang/String;)V
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cj$1;->a:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/cj;->k()V
:cond_b2
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cj$1;->a:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-virtual {v2, v5}, Lcom/lenovo/anyshare/sdk/internal/cj;->b(Z)V
goto :goto_49
:cond_b8
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cj$1;->a:Lcom/lenovo/anyshare/sdk/internal/cj;
sget-object v3, Lcom/lenovo/anyshare/sdk/internal/ca$b;->b:Lcom/lenovo/anyshare/sdk/internal/ca$b;
invoke-virtual {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Lcom/lenovo/anyshare/sdk/internal/ca$b;)V
goto :goto_49
:cond_c0
const-string/jumbo v2, "WifiNetworkManager"
const-string/jumbo v3, "mNetworkMasterListener::onClientStateChanged(): called."
invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v1, :cond_cf
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lcom/lenovo/network/base/Device;->setIp(Ljava/lang/String;)V
:cond_cf
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cj$1;->a:Lcom/lenovo/anyshare/sdk/internal/cj;
sget-object v3, Lcom/lenovo/anyshare/sdk/internal/ca$b;->f:Lcom/lenovo/anyshare/sdk/internal/ca$b;
invoke-virtual {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Lcom/lenovo/anyshare/sdk/internal/ca$b;)V
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cj$1;->a:Lcom/lenovo/anyshare/sdk/internal/cj;
sget-object v3, Lcom/lenovo/anyshare/sdk/internal/cd;->b:Lcom/lenovo/anyshare/sdk/internal/cd;
invoke-static {v2, v3, v5}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Lcom/lenovo/anyshare/sdk/internal/cj;Lcom/lenovo/anyshare/sdk/internal/cd;Z)V
goto/16 :goto_49
.end method