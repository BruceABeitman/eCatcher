.class  Lcom/google/android/gms/tagmanager/v$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic afk:Ljava/util/List;
.field final synthetic afl:J
.field final synthetic afm:Lcom/google/android/gms/tagmanager/v;
.method constructor <init>(Lcom/google/android/gms/tagmanager/v;Ljava/util/List;J)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/tagmanager/v$1;->afm:Lcom/google/android/gms/tagmanager/v;
iput-object p2, p0, Lcom/google/android/gms/tagmanager/v$1;->afk:Ljava/util/List;
iput-wide p3, p0, Lcom/google/android/gms/tagmanager/v$1;->afl:J
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/tagmanager/v$1;->afm:Lcom/google/android/gms/tagmanager/v;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/v$1;->afk:Ljava/util/List;
iget-wide v2, p0, Lcom/google/android/gms/tagmanager/v$1;->afl:J
invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/tagmanager/v;->a(Lcom/google/android/gms/tagmanager/v;Ljava/util/List;J)V
return-void
.end method