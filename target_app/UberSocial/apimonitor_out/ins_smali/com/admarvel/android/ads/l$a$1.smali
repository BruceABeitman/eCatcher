.class  Lcom/admarvel/android/ads/l$a$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/location/Location;
.field final synthetic b:Lcom/admarvel/android/ads/l$a;
.method constructor <init>(Lcom/admarvel/android/ads/l$a;Landroid/location/Location;)V
.registers 3
iput-object p1, p0, Lcom/admarvel/android/ads/l$a$1;->b:Lcom/admarvel/android/ads/l$a;
iput-object p2, p0, Lcom/admarvel/android/ads/l$a$1;->a:Landroid/location/Location;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
iget-object v0, p0, Lcom/admarvel/android/ads/l$a$1;->b:Lcom/admarvel/android/ads/l$a;
iget-object v0, v0, Lcom/admarvel/android/ads/l$a;->b:Lcom/admarvel/android/ads/l;
invoke-static {v0}, Lcom/admarvel/android/ads/l;->a(Lcom/admarvel/android/ads/l;)Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
iget-object v1, p0, Lcom/admarvel/android/ads/l$a$1;->b:Lcom/admarvel/android/ads/l$a;
iget-object v1, v1, Lcom/admarvel/android/ads/l$a;->b:Lcom/admarvel/android/ads/l;
invoke-static {v1}, Lcom/admarvel/android/ads/l;->a(Lcom/admarvel/android/ads/l;)Ljava/lang/ref/WeakReference;
move-result-object v1
if-eqz v1, :cond_6c
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "javascript:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/admarvel/android/ads/l$a$1;->b:Lcom/admarvel/android/ads/l$a;
iget-object v2, v2, Lcom/admarvel/android/ads/l$a;->b:Lcom/admarvel/android/ads/l;
invoke-static {v2}, Lcom/admarvel/android/ads/l;->b(Lcom/admarvel/android/ads/l;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/admarvel/android/ads/l$a$1;->a:Landroid/location/Location;
invoke-static {v2}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ","
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/admarvel/android/ads/l$a$1;->a:Landroid/location/Location;
invoke-static {v2}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ","
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/admarvel/android/ads/l$a$1;->a:Landroid/location/Location;
invoke-static {v2}, Ldroidbox/android/location/Location;->getAccuracy(Landroid/location/Location;)F
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
:cond_6c
return-void
.end method