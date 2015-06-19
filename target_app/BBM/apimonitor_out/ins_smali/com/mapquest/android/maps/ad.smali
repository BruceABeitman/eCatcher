.class final Lcom/mapquest/android/maps/ad;
.super Ljava/lang/Object;
.source "LineOverlay.java"
.implements Lcom/mapquest/android/maps/ax;
.field final synthetic a:Lcom/mapquest/android/maps/ac;
.method private constructor <init>(Lcom/mapquest/android/maps/ac;)V
.registers 2
iput-object p1, p0, Lcom/mapquest/android/maps/ad;->a:Lcom/mapquest/android/maps/ac;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/mapquest/android/maps/ac;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/mapquest/android/maps/ad;-><init>(Lcom/mapquest/android/maps/ac;)V
return-void
.end method
.method public final a(Lcom/mapquest/android/maps/MapView;)V
.registers 6
const/4 v3, 0x0
iget-object v0, p0, Lcom/mapquest/android/maps/ad;->a:Lcom/mapquest/android/maps/ac;
iget-boolean v0, v0, Lcom/mapquest/android/maps/ac;->f:Z
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/mapquest/android/maps/ad;->a:Lcom/mapquest/android/maps/ac;
iget-object v0, v0, Lcom/mapquest/android/maps/ac;->g:Lcom/mapquest/android/maps/af;
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/mapquest/android/maps/ad;->a:Lcom/mapquest/android/maps/ac;
iget-object v0, v0, Lcom/mapquest/android/maps/ac;->g:Lcom/mapquest/android/maps/af;
invoke-virtual {v0, v3}, Lcom/mapquest/android/maps/af;->removeMessages(I)V
new-instance v0, Lcom/mapquest/android/maps/ae;
iget-object v1, p0, Lcom/mapquest/android/maps/ad;->a:Lcom/mapquest/android/maps/ac;
invoke-virtual {p1}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/bq;
move-result-object v2
invoke-direct {v0, v1, v2, v3}, Lcom/mapquest/android/maps/ae;-><init>(Lcom/mapquest/android/maps/ac;Lcom/mapquest/android/maps/bq;B)V
invoke-virtual {p1, v0}, Lcom/mapquest/android/maps/MapView;->post(Ljava/lang/Runnable;)Z
:cond_22
return-void
.end method