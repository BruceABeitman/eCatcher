.class final Lcom/instagram/ui/widget/proxy/a;
.super Ljava/lang/Object;
.source "ProxyFrameLayout.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;
.method constructor <init>(Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;)V
.registers 2
iput-object p1, p0, Lcom/instagram/ui/widget/proxy/a;->a:Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/ui/widget/proxy/a; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/ui/widget/proxy/a;->a:Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;
invoke-static {v0}, Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;->a(Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View$OnClickListener;
invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V
goto :goto_a
:cond_1a
iget-object v0, p0, Lcom/instagram/ui/widget/proxy/a;->a:Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;
invoke-static {v0}, Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;->b(Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;)Landroid/view/View$OnClickListener;
move-result-object v0
if-eqz v0, :cond_33
iget-object v0, p0, Lcom/instagram/ui/widget/proxy/a;->a:Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;
invoke-static {v0}, Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;->c(Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;)Z
move-result v0
if-eqz v0, :cond_33
iget-object v0, p0, Lcom/instagram/ui/widget/proxy/a;->a:Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;
invoke-static {v0}, Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;->b(Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;)Landroid/view/View$OnClickListener;
move-result-object v0
invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V
:cond_33
const-string v1, " - Lcom/instagram/ui/widget/proxy/a; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method