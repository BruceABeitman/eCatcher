.class  Lcom/google/android/gms/cast/w;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/fx;
.field final synthetic a:Lcom/google/android/gms/cast/s;
.field private b:Lcom/google/android/gms/common/api/e;
.field private c:J
.method public constructor <init>(Lcom/google/android/gms/cast/s;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/cast/w;->a:Lcom/google/android/gms/cast/s;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/google/android/gms/cast/w;->c:J
return-void
.end method
.method public a()J
.registers 5
iget-wide v0, p0, Lcom/google/android/gms/cast/w;->c:J
const-wide/16 v2, 0x1
add-long/2addr v0, v2
iput-wide v0, p0, Lcom/google/android/gms/cast/w;->c:J
return-wide v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/cast/w;->b:Lcom/google/android/gms/common/api/e;
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
.registers 8
iget-object v0, p0, Lcom/google/android/gms/cast/w;->b:Lcom/google/android/gms/common/api/e;
if-nez v0, :cond_c
new-instance v0, Ljava/io/IOException;
const-string v1, "No GoogleApiClient available"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
sget-object v0, Lcom/google/android/gms/cast/a;->f:Lcom/google/android/gms/cast/c;
iget-object v1, p0, Lcom/google/android/gms/cast/w;->b:Lcom/google/android/gms/common/api/e;
invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/cast/c;->a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/j;
move-result-object v0
new-instance v1, Lcom/google/android/gms/cast/x;
invoke-direct {v1, p0, p3, p4}, Lcom/google/android/gms/cast/x;-><init>(Lcom/google/android/gms/cast/w;J)V
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/n;)V
return-void
.end method