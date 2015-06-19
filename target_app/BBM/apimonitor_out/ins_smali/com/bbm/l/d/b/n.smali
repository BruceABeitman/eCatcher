.class public final Lcom/bbm/l/d/b/n;
.super Ljava/lang/Object;
.source "IabHelper.java"
.field  a:Z
.field  b:Ljava/lang/String;
.field  c:Z
.field  d:Z
.field  e:Z
.field  f:Z
.field  g:Ljava/lang/String;
.field  h:Landroid/content/Context;
.field  i:Lcom/a/b/a/a;
.field  j:Landroid/content/ServiceConnection;
.field  k:I
.field  l:Ljava/lang/String;
.field  m:Ljava/lang/String;
.field  n:Lcom/bbm/l/d/b/r;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v1, p0, Lcom/bbm/l/d/b/n;->a:Z
const-string v0, "IabHelper"
iput-object v0, p0, Lcom/bbm/l/d/b/n;->b:Ljava/lang/String;
iput-boolean v1, p0, Lcom/bbm/l/d/b/n;->c:Z
iput-boolean v1, p0, Lcom/bbm/l/d/b/n;->d:Z
iput-boolean v1, p0, Lcom/bbm/l/d/b/n;->e:Z
iput-boolean v1, p0, Lcom/bbm/l/d/b/n;->f:Z
const-string v0, ""
iput-object v0, p0, Lcom/bbm/l/d/b/n;->g:Ljava/lang/String;
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/l/d/b/n;->m:Ljava/lang/String;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/bbm/l/d/b/n;->h:Landroid/content/Context;
iput-object p2, p0, Lcom/bbm/l/d/b/n;->m:Ljava/lang/String;
const-string v0, "IAB helper created."
invoke-virtual {p0, v0}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
return-void
.end method
.method private a(Lcom/bbm/l/d/b/v;Ljava/lang/String;)I
.registers 15
const/4 v4, 0x0
iget-boolean v0, p0, Lcom/bbm/l/d/b/n;->d:Z
if-eqz v0, :cond_8
const/16 v4, -0x3f3
:goto_7
:cond_7
return v4
:cond_8
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Querying owned items, item type: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Package name: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/bbm/l/d/b/n;->h:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
const/4 v0, 0x0
move-object v1, v0
move v0, v4
:goto_35
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Calling getPurchases with continuation token: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
iget-object v2, p0, Lcom/bbm/l/d/b/n;->i:Lcom/a/b/a/a;
const/4 v3, 0x3
iget-object v5, p0, Lcom/bbm/l/d/b/n;->h:Landroid/content/Context;
invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v5
invoke-interface {v2, v3, v5, p2, v1}, Lcom/a/b/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v6
invoke-virtual {p0, v6}, Lcom/bbm/l/d/b/n;->a(Landroid/os/Bundle;)I
move-result v1
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Owned items response: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
if-eqz v1, :cond_88
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "getPurchases() failed: "
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v1}, Lcom/bbm/l/d/b/n;->a(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
move v4, v1
goto :goto_7
:cond_88
const-string v1, "INAPP_PURCHASE_ITEM_LIST"
invoke-virtual {v6, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_a0
const-string v1, "INAPP_PURCHASE_DATA_LIST"
invoke-virtual {v6, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_a0
const-string v1, "INAPP_DATA_SIGNATURE_LIST"
invoke-virtual {v6, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_a9
:cond_a0
const-string v0, "Bundle returned from getPurchases() doesn\'t contain required fields."
invoke-virtual {p0, v0}, Lcom/bbm/l/d/b/n;->d(Ljava/lang/String;)V
const/16 v4, -0x3ea
goto/16 :goto_7
:cond_a9
const-string v1, "INAPP_PURCHASE_ITEM_LIST"
invoke-virtual {v6, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v7
const-string v1, "INAPP_PURCHASE_DATA_LIST"
invoke-virtual {v6, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v8
const-string v1, "INAPP_DATA_SIGNATURE_LIST"
invoke-virtual {v6, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v9
move v3, v4
move v5, v0
:goto_bd
invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v3, v0, :cond_14b
invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
iget-object v10, p0, Lcom/bbm/l/d/b/n;->m:Ljava/lang/String;
invoke-static {v10, v0, v1}, Lcom/bbm/l/d/b/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
move-result v10
if-eqz v10, :cond_120
new-instance v10, Ljava/lang/StringBuilder;
const-string v11, "Sku is owned: "
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
new-instance v2, Lcom/bbm/l/d/b/x;
invoke-direct {v2, p2, v0, v1}, Lcom/bbm/l/d/b/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, v2, Lcom/bbm/l/d/b/x;->o:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_113
const-string v1, "BUG: empty/null token!"
invoke-direct {p0, v1}, Lcom/bbm/l/d/b/n;->e(Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string v10, "Purchase data: "
invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
:cond_113
iget-object v0, p1, Lcom/bbm/l/d/b/v;->b:Ljava/util/Map;
iget-object v1, v2, Lcom/bbm/l/d/b/x;->k:Ljava/lang/String;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move v1, v5
:goto_11b
add-int/lit8 v0, v3, 0x1
move v3, v0
move v5, v1
goto :goto_bd
:cond_120
const-string v2, "Purchase signature verification **FAILED**. Not adding item."
invoke-direct {p0, v2}, Lcom/bbm/l/d/b/n;->e(Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuilder;
const-string v5, "   Purchase data: "
invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "   Signature: "
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
const/4 v1, 0x1
goto :goto_11b
:cond_14b
const-string v0, "INAPP_CONTINUATION_TOKEN"
invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Continuation token: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_16f
if-eqz v5, :cond_7
const/16 v4, -0x3eb
goto/16 :goto_7
:cond_16f
move-object v1, v0
move v0, v5
goto/16 :goto_35
.end method
.method private a(Ljava/lang/String;Lcom/bbm/l/d/b/v;Ljava/util/List;)I
.registers 13
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/bbm/l/d/b/n;->d:Z
if-eqz v0, :cond_8
const/16 v0, -0x3f3
:goto_7
return v0
:cond_8
const-string v0, "Querying SKU details."
invoke-virtual {p0, v0}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p2, p1}, Lcom/bbm/l/d/b/v;->c(Ljava/lang/String;)Ljava/util/List;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
if-eqz p3, :cond_35
invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_1f
:cond_1f
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_35
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_1f
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_1f
:cond_35
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v0
if-nez v0, :cond_42
const-string v0, "queryPrices: nothing to do because there are no SKUs."
invoke-virtual {p0, v0}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
move v0, v1
goto :goto_7
:cond_42
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v0
div-int/lit8 v5, v0, 0x14
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v0
rem-int/lit8 v6, v0, 0x14
move v2, v1
:goto_54
if-ge v2, v5, :cond_80
new-instance v7, Ljava/util/ArrayList;
invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
mul-int/lit8 v0, v2, 0x14
mul-int/lit8 v8, v2, 0x14
add-int/lit8 v8, v8, 0x14
invoke-virtual {v3, v0, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v8
:goto_69
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_79
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_69
:cond_79
invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_54
:cond_80
if-eqz v6, :cond_a7
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
mul-int/lit8 v0, v5, 0x14
mul-int/lit8 v5, v5, 0x14
add-int/2addr v5, v6
invoke-virtual {v3, v0, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_94
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_a4
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_94
:cond_a4
invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_a7
invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_ab
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_132
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
new-instance v3, Landroid/os/Bundle;
invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
const-string v4, "ITEM_ID_LIST"
invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
iget-object v0, p0, Lcom/bbm/l/d/b/n;->i:Lcom/a/b/a/a;
const/4 v4, 0x3
iget-object v5, p0, Lcom/bbm/l/d/b/n;->h:Landroid/content/Context;
invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v5
invoke-interface {v0, v4, v5, p1, v3}, Lcom/a/b/a/a;->a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
move-result-object v0
const-string v3, "DETAILS_LIST"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_fd
invoke-virtual {p0, v0}, Lcom/bbm/l/d/b/n;->a(Landroid/os/Bundle;)I
move-result v0
if-eqz v0, :cond_f4
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "getSkuDetails() failed: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lcom/bbm/l/d/b/n;->a(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
goto/16 :goto_7
:cond_f4
const-string v0, "getSkuDetails() returned a bundle with neither an error nor a detail list."
invoke-virtual {p0, v0}, Lcom/bbm/l/d/b/n;->d(Ljava/lang/String;)V
const/16 v0, -0x3ea
goto/16 :goto_7
:cond_fd
const-string v3, "DETAILS_LIST"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_107
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_ab
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
new-instance v4, Lcom/bbm/l/d/b/z;
invoke-direct {v4, p1, v0}, Lcom/bbm/l/d/b/z;-><init>(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string v5, "Got sku details: "
invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
iget-object v0, p2, Lcom/bbm/l/d/b/v;->a:Ljava/util/Map;
iget-object v5, v4, Lcom/bbm/l/d/b/z;->b:Ljava/lang/String;
invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_107
:cond_132
move v0, v1
goto/16 :goto_7
.end method
.method public static a(I)Ljava/lang/String;
.registers 4
const-string v0, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
const-string v1, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"
const-string v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
const/16 v2, -0x3e8
if-gt p0, v2, :cond_36
rsub-int v0, p0, -0x3e8
if-ltz v0, :cond_1e
array-length v2, v1
if-ge v0, v2, :cond_1e
aget-object v0, v1, v0
:goto_1d
return-object v0
:cond_1e
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ":Unknown IAB Helper Error"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_1d
:cond_36
if-ltz p0, :cond_3b
array-length v1, v0
if-lt p0, v1, :cond_53
:cond_3b
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ":Unknown"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_1d
:cond_53
aget-object v0, v0, p0
goto :goto_1d
.end method
.method private e(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/bbm/l/d/b/n;->b:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "In-app billing warning: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method final a(Landroid/os/Bundle;)I
.registers 6
const-string v0, "RESPONSE_CODE"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_f
const-string v0, "Bundle with null response code, assuming OK (known issue)"
invoke-virtual {p0, v0}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
const/4 v0, 0x0
:goto_e
return v0
:cond_f
instance-of v1, v0, Ljava/lang/Integer;
if-eqz v1, :cond_1a
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
goto :goto_e
:cond_1a
instance-of v1, v0, Ljava/lang/Long;
if-eqz v1, :cond_26
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
long-to-int v0, v0
goto :goto_e
:cond_26
const-string v1, "Unexpected type for bundle response code."
invoke-virtual {p0, v1}, Lcom/bbm/l/d/b/n;->d(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/bbm/l/d/b/n;->d(Ljava/lang/String;)V
new-instance v1, Ljava/lang/RuntimeException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Unexpected type for bundle response code: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public final a(ZLjava/util/List;)Lcom/bbm/l/d/b/v;
.registers 7
invoke-virtual {p0}, Lcom/bbm/l/d/b/n;->a()V
const-string v0, "queryInventory"
invoke-virtual {p0, v0}, Lcom/bbm/l/d/b/n;->a(Ljava/lang/String;)V
:try_start_8
new-instance v0, Lcom/bbm/l/d/b/v;
invoke-direct {v0}, Lcom/bbm/l/d/b/v;-><init>()V
const-string v1, "inapp"
invoke-direct {p0, v0, v1}, Lcom/bbm/l/d/b/n;->a(Lcom/bbm/l/d/b/v;Ljava/lang/String;)I
move-result v1
if-eqz v1, :cond_28
new-instance v0, Lcom/bbm/l/d/b/m;
const-string v2, "Error refreshing inventory (querying owned items)."
invoke-direct {v0, v1, v2}, Lcom/bbm/l/d/b/m;-><init>(ILjava/lang/String;)V
throw v0
:try_end_1d
.catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1d} :catch_1d
.catch Lorg/json/JSONException; {:try_start_8 .. :try_end_1d} :catch_3a
:catch_1d
move-exception v0
new-instance v1, Lcom/bbm/l/d/b/m;
const/16 v2, -0x3e9
const-string v3, "Remote exception while refreshing inventory."
invoke-direct {v1, v2, v3, v0}, Lcom/bbm/l/d/b/m;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V
throw v1
:cond_28
if-eqz p1, :cond_45
:try_start_2a
const-string v1, "inapp"
invoke-direct {p0, v1, v0, p2}, Lcom/bbm/l/d/b/n;->a(Ljava/lang/String;Lcom/bbm/l/d/b/v;Ljava/util/List;)I
move-result v1
if-eqz v1, :cond_45
new-instance v0, Lcom/bbm/l/d/b/m;
const-string v2, "Error refreshing inventory (querying prices of items)."
invoke-direct {v0, v1, v2}, Lcom/bbm/l/d/b/m;-><init>(ILjava/lang/String;)V
throw v0
:catch_3a
:try_end_3a
.catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_3a} :catch_1d
.catch Lorg/json/JSONException; {:try_start_2a .. :try_end_3a} :catch_3a
move-exception v0
new-instance v1, Lcom/bbm/l/d/b/m;
const/16 v2, -0x3ea
const-string v3, "Error parsing JSON response while refreshing inventory."
invoke-direct {v1, v2, v3, v0}, Lcom/bbm/l/d/b/m;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V
throw v1
:try_start_45
:cond_45
iget-boolean v1, p0, Lcom/bbm/l/d/b/n;->e:Z
if-eqz v1, :cond_6b
const-string v1, "subs"
invoke-direct {p0, v0, v1}, Lcom/bbm/l/d/b/n;->a(Lcom/bbm/l/d/b/v;Ljava/lang/String;)I
move-result v1
if-eqz v1, :cond_59
new-instance v0, Lcom/bbm/l/d/b/m;
const-string v2, "Error refreshing inventory (querying owned subscriptions)."
invoke-direct {v0, v1, v2}, Lcom/bbm/l/d/b/m;-><init>(ILjava/lang/String;)V
throw v0
:cond_59
if-eqz p1, :cond_6b
const-string v1, "subs"
invoke-direct {p0, v1, v0, p2}, Lcom/bbm/l/d/b/n;->a(Ljava/lang/String;Lcom/bbm/l/d/b/v;Ljava/util/List;)I
move-result v1
if-eqz v1, :cond_6b
new-instance v0, Lcom/bbm/l/d/b/m;
const-string v2, "Error refreshing inventory (querying prices of subscriptions)."
invoke-direct {v0, v1, v2}, Lcom/bbm/l/d/b/m;-><init>(ILjava/lang/String;)V
throw v0
:cond_6b
:try_end_6b
.catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_6b} :catch_1d
.catch Lorg/json/JSONException; {:try_start_45 .. :try_end_6b} :catch_3a
return-object v0
.end method
.method final a()V
.registers 3
iget-boolean v0, p0, Lcom/bbm/l/d/b/n;->d:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "IabHelper was disposed of, so it cannot be used."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
return-void
.end method
.method final a(Ljava/lang/String;)V
.registers 5
iget-boolean v0, p0, Lcom/bbm/l/d/b/n;->c:Z
if-nez v0, :cond_31
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Illegal state for operation ("
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "): IAB helper is not set up."
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/l/d/b/n;->d(Ljava/lang/String;)V
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "IAB helper is not set up. Can\'t perform operation: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_31
return-void
.end method
.method public final a(IILandroid/content/Intent;)Z
.registers 13
const/4 v5, -0x1
const/16 v8, -0x3ea
const/4 v1, 0x0
const/4 v2, 0x1
const/4 v7, 0x0
iget v0, p0, Lcom/bbm/l/d/b/n;->k:I
if-eq p1, v0, :cond_b
:goto_a
return v1
:cond_b
invoke-virtual {p0}, Lcom/bbm/l/d/b/n;->a()V
const-string v0, "handleActivityResult"
invoke-virtual {p0, v0}, Lcom/bbm/l/d/b/n;->a(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/bbm/l/d/b/n;->b()V
if-nez p3, :cond_2f
const-string v0, "Null data in IAB activity result."
invoke-virtual {p0, v0}, Lcom/bbm/l/d/b/n;->d(Ljava/lang/String;)V
new-instance v0, Lcom/bbm/l/d/b/u;
const-string v1, "Null data in IAB result"
invoke-direct {v0, v8, v1}, Lcom/bbm/l/d/b/u;-><init>(ILjava/lang/String;)V
iget-object v1, p0, Lcom/bbm/l/d/b/n;->n:Lcom/bbm/l/d/b/r;
if-eqz v1, :cond_2d
iget-object v1, p0, Lcom/bbm/l/d/b/n;->n:Lcom/bbm/l/d/b/r;
invoke-interface {v1, v0, v7}, Lcom/bbm/l/d/b/r;->a(Lcom/bbm/l/d/b/u;Lcom/bbm/l/d/b/x;)V
:cond_2d
move v1, v2
goto :goto_a
:cond_2f
invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
const-string v3, "RESPONSE_CODE"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_dc
const-string v0, "Intent with no response code, assuming OK (known issue)"
invoke-virtual {p0, v0}, Lcom/bbm/l/d/b/n;->d(Ljava/lang/String;)V
move v0, v1
:goto_41
const-string v3, "INAPP_PURCHASE_DATA"
invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v4, "INAPP_DATA_SIGNATURE"
invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
if-ne p2, v5, :cond_19b
if-nez v0, :cond_19b
const-string v0, "Successful resultcode from purchase activity."
invoke-virtual {p0, v0}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string v5, "Purchase data: "
invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string v5, "Data signature: "
invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string v5, "Extras: "
invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v5
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string v5, "Expected item type: "
invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v5, p0, Lcom/bbm/l/d/b/n;->l:Ljava/lang/String;
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
if-eqz v3, :cond_a8
if-nez v4, :cond_122
:cond_a8
const-string v0, "BUG: either purchaseData or dataSignature is null."
invoke-virtual {p0, v0}, Lcom/bbm/l/d/b/n;->d(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Extras: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v1
invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
new-instance v0, Lcom/bbm/l/d/b/u;
const/16 v1, -0x3f0
const-string v3, "IAB returned null purchaseData or dataSignature"
invoke-direct {v0, v1, v3}, Lcom/bbm/l/d/b/u;-><init>(ILjava/lang/String;)V
iget-object v1, p0, Lcom/bbm/l/d/b/n;->n:Lcom/bbm/l/d/b/r;
if-eqz v1, :cond_d9
iget-object v1, p0, Lcom/bbm/l/d/b/n;->n:Lcom/bbm/l/d/b/r;
invoke-interface {v1, v0, v7}, Lcom/bbm/l/d/b/r;->a(Lcom/bbm/l/d/b/u;Lcom/bbm/l/d/b/x;)V
:cond_d9
move v1, v2
goto/16 :goto_a
:cond_dc
instance-of v3, v0, Ljava/lang/Integer;
if-eqz v3, :cond_e8
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
goto/16 :goto_41
:cond_e8
instance-of v3, v0, Ljava/lang/Long;
if-eqz v3, :cond_f5
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v3
long-to-int v0, v3
goto/16 :goto_41
:cond_f5
const-string v1, "Unexpected type for intent response code."
invoke-virtual {p0, v1}, Lcom/bbm/l/d/b/n;->d(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/bbm/l/d/b/n;->d(Ljava/lang/String;)V
new-instance v1, Ljava/lang/RuntimeException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Unexpected type for intent response code: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
:try_start_122
:cond_122
new-instance v0, Lcom/bbm/l/d/b/x;
iget-object v5, p0, Lcom/bbm/l/d/b/n;->l:Ljava/lang/String;
invoke-direct {v0, v5, v3, v4}, Lcom/bbm/l/d/b/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iget-object v5, v0, Lcom/bbm/l/d/b/x;->k:Ljava/lang/String;
iget-object v6, p0, Lcom/bbm/l/d/b/n;->m:Ljava/lang/String;
invoke-static {v6, v3, v4}, Lcom/bbm/l/d/b/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_167
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "Purchase signature verification FAILED for sku "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/bbm/l/d/b/n;->d(Ljava/lang/String;)V
new-instance v1, Lcom/bbm/l/d/b/u;
const/16 v3, -0x3eb
new-instance v4, Ljava/lang/StringBuilder;
const-string v6, "Signature verification failed for sku "
invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v1, v3, v4}, Lcom/bbm/l/d/b/u;-><init>(ILjava/lang/String;)V
iget-object v3, p0, Lcom/bbm/l/d/b/n;->n:Lcom/bbm/l/d/b/r;
if-eqz v3, :cond_164
iget-object v3, p0, Lcom/bbm/l/d/b/n;->n:Lcom/bbm/l/d/b/r;
invoke-interface {v3, v1, v0}, Lcom/bbm/l/d/b/r;->a(Lcom/bbm/l/d/b/u;Lcom/bbm/l/d/b/x;)V
:cond_164
move v1, v2
goto/16 :goto_a
:cond_167
const-string v3, "Purchase signature successfully verified."
invoke-virtual {p0, v3}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
:try_end_16c
.catch Lorg/json/JSONException; {:try_start_122 .. :try_end_16c} :catch_17f
iget-object v3, p0, Lcom/bbm/l/d/b/n;->n:Lcom/bbm/l/d/b/r;
if-eqz v3, :cond_17c
iget-object v3, p0, Lcom/bbm/l/d/b/n;->n:Lcom/bbm/l/d/b/r;
new-instance v4, Lcom/bbm/l/d/b/u;
const-string v5, "Success"
invoke-direct {v4, v1, v5}, Lcom/bbm/l/d/b/u;-><init>(ILjava/lang/String;)V
invoke-interface {v3, v4, v0}, Lcom/bbm/l/d/b/r;->a(Lcom/bbm/l/d/b/u;Lcom/bbm/l/d/b/x;)V
:cond_17c
:goto_17c
move v1, v2
goto/16 :goto_a
:catch_17f
move-exception v0
const-string v1, "Failed to parse purchase data."
invoke-virtual {p0, v1}, Lcom/bbm/l/d/b/n;->d(Ljava/lang/String;)V
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
new-instance v0, Lcom/bbm/l/d/b/u;
const-string v1, "Failed to parse purchase data."
invoke-direct {v0, v8, v1}, Lcom/bbm/l/d/b/u;-><init>(ILjava/lang/String;)V
iget-object v1, p0, Lcom/bbm/l/d/b/n;->n:Lcom/bbm/l/d/b/r;
if-eqz v1, :cond_198
iget-object v1, p0, Lcom/bbm/l/d/b/n;->n:Lcom/bbm/l/d/b/r;
invoke-interface {v1, v0, v7}, Lcom/bbm/l/d/b/r;->a(Lcom/bbm/l/d/b/u;Lcom/bbm/l/d/b/x;)V
:cond_198
move v1, v2
goto/16 :goto_a
:cond_19b
if-ne p2, v5, :cond_1c4
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "Result code was OK but in-app billing response was not OK: "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lcom/bbm/l/d/b/n;->a(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
iget-object v1, p0, Lcom/bbm/l/d/b/n;->n:Lcom/bbm/l/d/b/r;
if-eqz v1, :cond_17c
new-instance v1, Lcom/bbm/l/d/b/u;
const-string v3, "Problem purchashing item."
invoke-direct {v1, v0, v3}, Lcom/bbm/l/d/b/u;-><init>(ILjava/lang/String;)V
iget-object v0, p0, Lcom/bbm/l/d/b/n;->n:Lcom/bbm/l/d/b/r;
invoke-interface {v0, v1, v7}, Lcom/bbm/l/d/b/r;->a(Lcom/bbm/l/d/b/u;Lcom/bbm/l/d/b/x;)V
goto :goto_17c
:cond_1c4
if-nez p2, :cond_1ef
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "Purchase canceled - Response: "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lcom/bbm/l/d/b/n;->a(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
new-instance v0, Lcom/bbm/l/d/b/u;
const/16 v1, -0x3ed
const-string v3, "User canceled."
invoke-direct {v0, v1, v3}, Lcom/bbm/l/d/b/u;-><init>(ILjava/lang/String;)V
iget-object v1, p0, Lcom/bbm/l/d/b/n;->n:Lcom/bbm/l/d/b/r;
if-eqz v1, :cond_17c
iget-object v1, p0, Lcom/bbm/l/d/b/n;->n:Lcom/bbm/l/d/b/r;
invoke-interface {v1, v0, v7}, Lcom/bbm/l/d/b/r;->a(Lcom/bbm/l/d/b/u;Lcom/bbm/l/d/b/x;)V
goto :goto_17c
:cond_1ef
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "Purchase failed. Result code: "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, ". Response: "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {v0}, Lcom/bbm/l/d/b/n;->a(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/l/d/b/n;->d(Ljava/lang/String;)V
new-instance v0, Lcom/bbm/l/d/b/u;
const/16 v1, -0x3ee
const-string v3, "Unknown purchase response."
invoke-direct {v0, v1, v3}, Lcom/bbm/l/d/b/u;-><init>(ILjava/lang/String;)V
iget-object v1, p0, Lcom/bbm/l/d/b/n;->n:Lcom/bbm/l/d/b/r;
if-eqz v1, :cond_17c
iget-object v1, p0, Lcom/bbm/l/d/b/n;->n:Lcom/bbm/l/d/b/r;
invoke-interface {v1, v0, v7}, Lcom/bbm/l/d/b/r;->a(Lcom/bbm/l/d/b/u;Lcom/bbm/l/d/b/x;)V
goto/16 :goto_17c
.end method
.method final b()V
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Ending async operation: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/bbm/l/d/b/n;->g:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
const-string v0, ""
iput-object v0, p0, Lcom/bbm/l/d/b/n;->g:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/l/d/b/n;->f:Z
return-void
.end method
.method final b(Ljava/lang/String;)V
.registers 5
iget-boolean v0, p0, Lcom/bbm/l/d/b/n;->f:Z
if-eqz v0, :cond_2b
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Can\'t start async operation ("
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ") because another async operation("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/bbm/l/d/b/n;->g:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ") is in progress."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2b
iput-object p1, p0, Lcom/bbm/l/d/b/n;->g:Ljava/lang/String;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/l/d/b/n;->f:Z
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Starting async operation: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/l/d/b/n;->c(Ljava/lang/String;)V
return-void
.end method
.method final c(Ljava/lang/String;)V
.registers 3
iget-boolean v0, p0, Lcom/bbm/l/d/b/n;->a:Z
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/bbm/l/d/b/n;->b:Ljava/lang/String;
invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_9
return-void
.end method
.method final d(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/bbm/l/d/b/n;->b:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "In-app billing error: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method