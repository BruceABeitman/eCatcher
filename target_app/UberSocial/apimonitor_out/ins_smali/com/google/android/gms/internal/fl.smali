.class public abstract Lcom/google/android/gms/internal/fl;
.super Ljava/lang/Object;
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;
.field protected final b:Lcom/google/android/gms/internal/fu;
.field private final c:Ljava/lang/String;
.field private d:Lcom/google/android/gms/internal/fx;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
const/4 v1, 0x0
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
sput-object v0, Lcom/google/android/gms/internal/fl;->a:Ljava/util/concurrent/atomic/AtomicInteger;
return-void
.end method
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/fl;->c:Ljava/lang/String;
new-instance v0, Lcom/google/android/gms/internal/fu;
invoke-direct {v0, p2}, Lcom/google/android/gms/internal/fu;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/google/android/gms/internal/fl;->b:Lcom/google/android/gms/internal/fu;
iget-object v0, p0, Lcom/google/android/gms/internal/fl;->b:Lcom/google/android/gms/internal/fu;
const-string v1, "instance-%d"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
sget-object v4, Lcom/google/android/gms/internal/fl;->a:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
move-result v4
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fu;->a(Ljava/lang/String;)V
return-void
.end method
.method public a(JI)V
.registers 4
return-void
.end method
.method public final a(Lcom/google/android/gms/internal/fx;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/internal/fl;->d:Lcom/google/android/gms/internal/fx;
iget-object v0, p0, Lcom/google/android/gms/internal/fl;->d:Lcom/google/android/gms/internal/fx;
if-nez v0, :cond_9
invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->e()V
:cond_9
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 2
return-void
.end method
.method protected final a(Ljava/lang/String;JLjava/lang/String;)V
.registers 11
iget-object v0, p0, Lcom/google/android/gms/internal/fl;->b:Lcom/google/android/gms/internal/fu;
const-string v1, "Sending text message: %s to: %s"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object p1, v2, v3
const/4 v3, 0x1
aput-object p4, v2, v3
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fu;->a(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/google/android/gms/internal/fl;->d:Lcom/google/android/gms/internal/fx;
iget-object v1, p0, Lcom/google/android/gms/internal/fl;->c:Ljava/lang/String;
move-object v2, p1
move-wide v3, p2
move-object v5, p4
invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/fx;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
return-void
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fl;->c:Ljava/lang/String;
return-object v0
.end method
.method protected final d()J
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/fl;->d:Lcom/google/android/gms/internal/fx;
invoke-interface {v0}, Lcom/google/android/gms/internal/fx;->a()J
move-result-wide v0
return-wide v0
.end method
.method public e()V
.registers 1
return-void
.end method