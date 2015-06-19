.class public final Lcom/google/android/gms/internal/v;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/y;
.field private final a:Lcom/google/android/gms/internal/w;
.method public constructor <init>(Lcom/google/android/gms/internal/w;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/v;->a:Lcom/google/android/gms/internal/w;
return-void
.end method
.method public a(Lcom/google/android/gms/internal/ec;Ljava/util/Map;)V
.registers 6
const-string v0, "name"
invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-nez v0, :cond_10
const-string v0, "App event with no name parameter."
invoke-static {v0}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V
:goto_f
return-void
:cond_10
iget-object v2, p0, Lcom/google/android/gms/internal/v;->a:Lcom/google/android/gms/internal/w;
const-string v1, "info"
invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/w;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_f
.end method