.class public final Lcom/google/android/gms/internal/g;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/e;
.field private final a:Lcom/google/android/gms/internal/er;
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/dx;)V
.registers 9
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v1, Lcom/google/android/gms/internal/ak;
invoke-direct {v1}, Lcom/google/android/gms/internal/ak;-><init>()V
const/4 v4, 0x0
move-object v0, p1
move v3, v2
move-object v5, p2
invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/er;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ak;ZZLcom/google/android/gms/internal/lh;Lcom/google/android/gms/internal/dx;)Lcom/google/android/gms/internal/er;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/g;->a:Lcom/google/android/gms/internal/er;
return-void
.end method
.method public final a(Lcom/google/android/gms/internal/f;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/g;->a:Lcom/google/android/gms/internal/er;
invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->f()Lcom/google/android/gms/internal/eu;
move-result-object v0
new-instance v1, Lcom/google/android/gms/internal/g$1;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/g$1;-><init>(Lcom/google/android/gms/internal/g;Lcom/google/android/gms/internal/f;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/eu;->a(Lcom/google/android/gms/internal/ev;)V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/g;->a:Lcom/google/android/gms/internal/er;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/er;->loadUrl(Ljava/lang/String;)V
return-void
.end method
.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ao;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/g;->a:Lcom/google/android/gms/internal/er;
invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->f()Lcom/google/android/gms/internal/eu;
move-result-object v0
invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/eu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ao;)V
return-void
.end method
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
.registers 8
iget-object v0, p0, Lcom/google/android/gms/internal/g;->a:Lcom/google/android/gms/internal/er;
invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "javascript:"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "("
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, ");"
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/er;->loadUrl(Ljava/lang/String;)V
return-void
.end method
.method public final b(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/g;->a:Lcom/google/android/gms/internal/er;
invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->f()Lcom/google/android/gms/internal/eu;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/eu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ao;)V
return-void
.end method