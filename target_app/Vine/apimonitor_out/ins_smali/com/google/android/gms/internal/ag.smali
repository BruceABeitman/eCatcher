.class public Lcom/google/android/gms/internal/ag;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/af;
.field private final lL:Lcom/google/android/gms/internal/ey;
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ew;)V
.registers 9
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v1, Lcom/google/android/gms/internal/am;
invoke-direct {v1}, Lcom/google/android/gms/internal/am;-><init>()V
const/4 v4, 0x0
move-object v0, p1
move v3, v2
move-object v5, p2
invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ey;->a(Landroid/content/Context;Lcom/google/android/gms/internal/am;ZZLcom/google/android/gms/internal/l;Lcom/google/android/gms/internal/ew;)Lcom/google/android/gms/internal/ey;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/ag;->lL:Lcom/google/android/gms/internal/ey;
return-void
.end method
.method public a(Lcom/google/android/gms/internal/af$a;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/ag;->lL:Lcom/google/android/gms/internal/ey;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->bW()Lcom/google/android/gms/internal/ez;
move-result-object v0
new-instance v1, Lcom/google/android/gms/internal/ag$1;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ag$1;-><init>(Lcom/google/android/gms/internal/ag;Lcom/google/android/gms/internal/af$a;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ez;->a(Lcom/google/android/gms/internal/ez$a;)V
return-void
.end method
.method public a(Ljava/lang/String;Lcom/google/android/gms/internal/bd;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/ag;->lL:Lcom/google/android/gms/internal/ey;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->bW()Lcom/google/android/gms/internal/ez;
move-result-object v0
invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ez;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bd;)V
return-void
.end method
.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/ag;->lL:Lcom/google/android/gms/internal/ey;
invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ey;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
return-void
.end method
.method public d(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ag;->lL:Lcom/google/android/gms/internal/ey;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ey;->loadUrl(Ljava/lang/String;)V
return-void
.end method
.method public e(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/ag;->lL:Lcom/google/android/gms/internal/ey;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->bW()Lcom/google/android/gms/internal/ez;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ez;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bd;)V
return-void
.end method
.method public pause()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ag;->lL:Lcom/google/android/gms/internal/ey;
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Landroid/webkit/WebView;)V
return-void
.end method
.method public resume()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ag;->lL:Lcom/google/android/gms/internal/ey;
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->b(Landroid/webkit/WebView;)V
return-void
.end method