.class  Lcom/admarvel/android/ads/ad$d$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/admarvel/android/ads/ad;
.field final synthetic b:Lcom/admarvel/android/ads/ad$d;
.method constructor <init>(Lcom/admarvel/android/ads/ad$d;Lcom/admarvel/android/ads/ad;)V
.registers 3
iput-object p1, p0, Lcom/admarvel/android/ads/ad$d$1;->b:Lcom/admarvel/android/ads/ad$d;
iput-object p2, p0, Lcom/admarvel/android/ads/ad$d$1;->a:Lcom/admarvel/android/ads/ad;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/admarvel/android/ads/ad$d$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/ad$d$1;->b:Lcom/admarvel/android/ads/ad$d;
iget-object v0, v0, Lcom/admarvel/android/ads/ad$d;->f:Lcom/admarvel/android/ads/ad;
invoke-static {v0, p1}, Lcom/admarvel/android/ads/ad;->a(Lcom/admarvel/android/ads/ad;Landroid/view/View;)V
const-string v1, " - Lcom/admarvel/android/ads/ad$d$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method