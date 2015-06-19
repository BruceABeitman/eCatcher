.class  Lcom/google/android/gms/cast/s$2;
.super Lcom/google/android/gms/cast/y;
.field final synthetic a:Lcom/google/android/gms/common/api/e;
.field final synthetic b:Lcom/google/android/gms/cast/n;
.field final synthetic c:Z
.field final synthetic d:J
.field final synthetic e:Lorg/json/JSONObject;
.field final synthetic f:Lcom/google/android/gms/cast/s;
.method constructor <init>(Lcom/google/android/gms/cast/s;Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/cast/n;ZJLorg/json/JSONObject;)V
.registers 8
iput-object p1, p0, Lcom/google/android/gms/cast/s$2;->f:Lcom/google/android/gms/cast/s;
iput-object p2, p0, Lcom/google/android/gms/cast/s$2;->a:Lcom/google/android/gms/common/api/e;
iput-object p3, p0, Lcom/google/android/gms/cast/s$2;->b:Lcom/google/android/gms/cast/n;
iput-boolean p4, p0, Lcom/google/android/gms/cast/s$2;->c:Z
iput-wide p5, p0, Lcom/google/android/gms/cast/s$2;->d:J
iput-object p7, p0, Lcom/google/android/gms/cast/s$2;->e:Lorg/json/JSONObject;
invoke-direct {p0}, Lcom/google/android/gms/cast/y;-><init>()V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/fm;
invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/s$2;->a(Lcom/google/android/gms/internal/fm;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/fm;)V
.registers 10
iget-object v0, p0, Lcom/google/android/gms/cast/s$2;->f:Lcom/google/android/gms/cast/s;
invoke-static {v0}, Lcom/google/android/gms/cast/s;->c(Lcom/google/android/gms/cast/s;)Ljava/lang/Object;
move-result-object v7
monitor-enter v7
:try_start_7
iget-object v0, p0, Lcom/google/android/gms/cast/s$2;->f:Lcom/google/android/gms/cast/s;
invoke-static {v0}, Lcom/google/android/gms/cast/s;->d(Lcom/google/android/gms/cast/s;)Lcom/google/android/gms/cast/w;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/cast/s$2;->a:Lcom/google/android/gms/common/api/e;
invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/w;->a(Lcom/google/android/gms/common/api/e;)V
:try_start_12
:try_end_12
.catchall {:try_start_7 .. :try_end_12} :catchall_4a
iget-object v0, p0, Lcom/google/android/gms/cast/s$2;->f:Lcom/google/android/gms/cast/s;
invoke-static {v0}, Lcom/google/android/gms/cast/s;->e(Lcom/google/android/gms/cast/s;)Lcom/google/android/gms/internal/fv;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/cast/s$2;->g:Lcom/google/android/gms/internal/fz;
iget-object v2, p0, Lcom/google/android/gms/cast/s$2;->b:Lcom/google/android/gms/cast/n;
iget-boolean v3, p0, Lcom/google/android/gms/cast/s$2;->c:Z
iget-wide v4, p0, Lcom/google/android/gms/cast/s$2;->d:J
iget-object v6, p0, Lcom/google/android/gms/cast/s$2;->e:Lorg/json/JSONObject;
invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/fv;->a(Lcom/google/android/gms/internal/fz;Lcom/google/android/gms/cast/n;ZJLorg/json/JSONObject;)J
:try_end_25
.catchall {:try_start_12 .. :try_end_25} :catchall_4d
.catch Ljava/io/IOException; {:try_start_12 .. :try_end_25} :catch_31
:try_start_25
iget-object v0, p0, Lcom/google/android/gms/cast/s$2;->f:Lcom/google/android/gms/cast/s;
invoke-static {v0}, Lcom/google/android/gms/cast/s;->d(Lcom/google/android/gms/cast/s;)Lcom/google/android/gms/cast/w;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/w;->a(Lcom/google/android/gms/common/api/e;)V
:goto_2f
monitor-exit v7
:try_end_30
.catchall {:try_start_25 .. :try_end_30} :catchall_4a
return-void
:catch_31
move-exception v0
:try_start_32
new-instance v0, Lcom/google/android/gms/common/api/Status;
const/4 v1, 0x1
invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/s$2;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/t;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/s$2;->a(Lcom/google/android/gms/common/api/m;)V
:try_end_3f
.catchall {:try_start_32 .. :try_end_3f} :catchall_4d
:try_start_3f
iget-object v0, p0, Lcom/google/android/gms/cast/s$2;->f:Lcom/google/android/gms/cast/s;
invoke-static {v0}, Lcom/google/android/gms/cast/s;->d(Lcom/google/android/gms/cast/s;)Lcom/google/android/gms/cast/w;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/w;->a(Lcom/google/android/gms/common/api/e;)V
goto :goto_2f
:catchall_4a
move-exception v0
monitor-exit v7
:try_end_4c
.catchall {:try_start_3f .. :try_end_4c} :catchall_4a
throw v0
:catchall_4d
move-exception v0
:try_start_4e
iget-object v1, p0, Lcom/google/android/gms/cast/s$2;->f:Lcom/google/android/gms/cast/s;
invoke-static {v1}, Lcom/google/android/gms/cast/s;->d(Lcom/google/android/gms/cast/s;)Lcom/google/android/gms/cast/w;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/w;->a(Lcom/google/android/gms/common/api/e;)V
throw v0
:try_end_59
.catchall {:try_start_4e .. :try_end_59} :catchall_4a
.end method