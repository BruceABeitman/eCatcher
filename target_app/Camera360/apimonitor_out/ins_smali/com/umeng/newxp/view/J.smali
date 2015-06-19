.class  Lcom/umeng/newxp/view/J;
.super Ljava/lang/Object;
.source "ExchangeViewManager.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/umeng/newxp/view/ExchangeViewManager;
.method constructor <init>(Lcom/umeng/newxp/view/ExchangeViewManager;)V
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/view/J;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/umeng/newxp/view/J; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/umeng/newxp/view/J;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
iget-object v0, v0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;
const-string/jumbo v1, "android.permission.ACCESS_NETWORK_STATE"
invoke-static {v0, v1}, Lcom/umeng/common/b;->a(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_38
iget-object v0, p0, Lcom/umeng/newxp/view/J;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
iget-object v0, v0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;
invoke-static {v0}, Lcom/umeng/common/b;->n(Landroid/content/Context;)Z
move-result v0
if-nez v0, :cond_38
iget-object v0, p0, Lcom/umeng/newxp/view/J;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
iget-object v0, v0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;
iget-object v1, p0, Lcom/umeng/newxp/view/J;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
iget-object v1, v1, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
iget-object v2, p0, Lcom/umeng/newxp/view/J;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
iget-object v2, v2, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;
invoke-static {v2}, Lcom/umeng/common/a/c;->a(Landroid/content/Context;)I
move-result v2
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:cond_37
:goto_37
const-string v1, " - Lcom/umeng/newxp/view/J; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_38
new-instance v0, Ljava/lang/StringBuilder;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "http://ex.mobmore.com/api/wap?sdk_version="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/umeng/newxp/view/J;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
iget-object v2, v2, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;
invoke-static {v2}, Lcom/umeng/common/b;->d(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/umeng/newxp/view/J;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
invoke-static {v1}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/controller/ExchangeDataService;
move-result-object v1
iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_a2
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "&slot_id="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/umeng/newxp/view/J;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
invoke-static {v2}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/controller/ExchangeDataService;
move-result-object v2
iget-object v2, v2, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_7e
new-instance v1, Lcom/umeng/newxp/view/i;
iget-object v2, p0, Lcom/umeng/newxp/view/J;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
iget-object v2, v2, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v2, v0}, Lcom/umeng/newxp/view/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/umeng/newxp/view/i;->show()V
iget-object v0, p0, Lcom/umeng/newxp/view/J;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
iget-object v0, v0, Lcom/umeng/newxp/view/ExchangeViewManager;->e:Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;
if-eqz v0, :cond_37
iget-object v0, p0, Lcom/umeng/newxp/view/J;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
iget-object v0, v0, Lcom/umeng/newxp/view/ExchangeViewManager;->e:Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;
iget-object v1, p0, Lcom/umeng/newxp/view/J;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
invoke-static {v1}, Lcom/umeng/newxp/view/ExchangeViewManager;->e(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/widget/ImageView;
move-result-object v1
invoke-interface {v0, v1}, Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;->onClick(Landroid/view/View;)V
goto :goto_37
:cond_a2
iget-object v1, p0, Lcom/umeng/newxp/view/J;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
iget-object v1, v1, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;
iget-object v2, p0, Lcom/umeng/newxp/view/J;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
invoke-static {v2}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/controller/ExchangeDataService;
move-result-object v2
invoke-static {v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_37
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "&app_key="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/umeng/newxp/view/J;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
iget-object v2, v2, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;
iget-object v3, p0, Lcom/umeng/newxp/view/J;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
invoke-static {v3}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/controller/ExchangeDataService;
move-result-object v3
invoke-static {v2, v3}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_7e
.end method