.class final Lcom/google/android/gms/internal/x$3;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/y;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/internal/ec;Ljava/util/Map;)V
.registers 4
invoke-virtual {p1}, Lcom/google/android/gms/internal/ec;->c()Lcom/google/android/gms/internal/bg;
move-result-object v0
if-nez v0, :cond_c
const-string v0, "A GMSG tried to close something that wasn\'t an overlay."
invoke-static {v0}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V
:goto_b
return-void
:cond_c
invoke-virtual {v0}, Lcom/google/android/gms/internal/bg;->a()V
goto :goto_b
.end method