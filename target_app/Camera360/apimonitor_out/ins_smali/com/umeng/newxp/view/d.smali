.class public Lcom/umeng/newxp/view/d;
.super Ljava/lang/Object;
.source "AdvertiserList.java"
.field private a:I
.field private b:Lcom/umeng/newxp/view/a;
.field private c:Ljava/util/List;
.field private d:Lcom/umeng/newxp/controller/ExchangeDataService;
.method public constructor <init>(Landroid/widget/ListView;Landroid/content/Context;ILcom/umeng/newxp/view/ExHeader;Ljava/util/List;ILcom/umeng/newxp/controller/ExchangeDataService;)V
.registers 16
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p6, p0, Lcom/umeng/newxp/view/d;->a:I
iput-object p7, p0, Lcom/umeng/newxp/view/d;->d:Lcom/umeng/newxp/controller/ExchangeDataService;
if-eqz p4, :cond_c
invoke-virtual {p4, p2, p1}, Lcom/umeng/newxp/view/ExHeader;->attachToList(Landroid/content/Context;Landroid/widget/ListView;)Z
:cond_c
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/umeng/newxp/view/d;->c:Ljava/util/List;
iget-object v0, p0, Lcom/umeng/newxp/view/d;->c:Ljava/util/List;
invoke-interface {v0, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
new-instance v0, Lcom/umeng/newxp/view/e;
const v3, 0x1090005
iget-object v4, p0, Lcom/umeng/newxp/view/d;->c:Ljava/util/List;
iget v6, p0, Lcom/umeng/newxp/view/d;->a:I
iget-object v7, p0, Lcom/umeng/newxp/view/d;->d:Lcom/umeng/newxp/controller/ExchangeDataService;
move-object v1, p0
move-object v2, p2
move v5, p3
invoke-direct/range {v0 .. v7}, Lcom/umeng/newxp/view/e;-><init>(Lcom/umeng/newxp/view/d;Landroid/content/Context;ILjava/util/List;IILcom/umeng/newxp/controller/ExchangeDataService;)V
iput-object v0, p0, Lcom/umeng/newxp/view/d;->b:Lcom/umeng/newxp/view/a;
iget-object v0, p0, Lcom/umeng/newxp/view/d;->b:Lcom/umeng/newxp/view/a;
invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
const/4 v0, 0x1
invoke-virtual {p1, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V
return-void
.end method
.method public a()Lcom/umeng/newxp/view/a;
.registers 2
iget-object v0, p0, Lcom/umeng/newxp/view/d;->b:Lcom/umeng/newxp/view/a;
return-object v0
.end method
.method public a(I)V
.registers 2
return-void
.end method
.method public a(Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;)V
.registers 3
iget-object v0, p0, Lcom/umeng/newxp/view/d;->b:Lcom/umeng/newxp/view/a;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/umeng/newxp/view/d;->b:Lcom/umeng/newxp/view/a;
invoke-virtual {v0, p1}, Lcom/umeng/newxp/view/a;->a(Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;)V
:cond_9
return-void
.end method
.method public a(Lcom/umeng/newxp/controller/XpListenersCenter$ListClickListener;)V
.registers 3
iget-object v0, p0, Lcom/umeng/newxp/view/d;->b:Lcom/umeng/newxp/view/a;
iput-object p1, v0, Lcom/umeng/newxp/view/a;->a:Lcom/umeng/newxp/controller/XpListenersCenter$ListClickListener;
return-void
.end method
.method public a(Ljava/util/List;)V
.registers 6
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_4
:cond_4
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_b
return-void
:cond_b
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/umeng/newxp/Promoter;
iget v2, v0, Lcom/umeng/newxp/Promoter;->display_type:I
const/4 v3, 0x1
if-eq v2, v3, :cond_4
iget-object v2, p0, Lcom/umeng/newxp/view/d;->c:Ljava/util/List;
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/umeng/newxp/view/d;->b:Lcom/umeng/newxp/view/a;
invoke-virtual {v0}, Lcom/umeng/newxp/view/a;->notifyDataSetChanged()V
goto :goto_4
.end method