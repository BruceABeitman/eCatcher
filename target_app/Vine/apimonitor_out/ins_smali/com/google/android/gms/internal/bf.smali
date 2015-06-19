.class public Lcom/google/android/gms/internal/bf;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/bd;
.field private final na:Lcom/google/android/gms/internal/bg;
.method public constructor <init>(Lcom/google/android/gms/internal/bg;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/bf;->na:Lcom/google/android/gms/internal/bg;
return-void
.end method
.method public b(Lcom/google/android/gms/internal/ey;Ljava/util/Map;)V
.registers 5
const-string v0, "1"
const-string v1, "transparentBackground"
invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
iget-object v1, p0, Lcom/google/android/gms/internal/bf;->na:Lcom/google/android/gms/internal/bg;
invoke-interface {v1, v0}, Lcom/google/android/gms/internal/bg;->b(Z)V
return-void
.end method