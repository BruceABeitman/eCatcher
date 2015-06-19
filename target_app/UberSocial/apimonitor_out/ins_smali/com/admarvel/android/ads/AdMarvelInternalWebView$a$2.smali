.class  Lcom/admarvel/android/ads/AdMarvelInternalWebView$a$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnKeyListener;
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a$2;->a:Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/admarvel/android/ads/AdMarvelInternalWebView$a$2; onKey "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I
move-result v0
if-nez v0, :cond_1d
const/4 v0, 0x4
if-ne p2, v0, :cond_1d
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a$2;->a:Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->a(Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;)Landroid/view/View;
move-result-object v0
if-nez v0, :cond_16
invoke-virtual {p1, p2, p3}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
:goto_15
move v2, v0
const-string v1, " - Lcom/admarvel/android/ads/AdMarvelInternalWebView$a$2; onKey"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_16
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a$2;->a:Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView$a;->a()V
const/4 v0, 0x1
goto :goto_15
:cond_1d
const/4 v0, 0x0
goto :goto_15
.end method