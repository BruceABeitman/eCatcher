.class final Lcom/google/android/gms/tagmanager/ax$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/util/List;
.field final synthetic b:J
.field final synthetic c:Lcom/google/android/gms/tagmanager/ax;
.method constructor <init>(Lcom/google/android/gms/tagmanager/ax;Ljava/util/List;J)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/tagmanager/ax$1;->c:Lcom/google/android/gms/tagmanager/ax;
iput-object p2, p0, Lcom/google/android/gms/tagmanager/ax$1;->a:Ljava/util/List;
iput-wide p3, p0, Lcom/google/android/gms/tagmanager/ax$1;->b:J
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ax$1;->c:Lcom/google/android/gms/tagmanager/ax;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/ax$1;->a:Ljava/util/List;
iget-wide v2, p0, Lcom/google/android/gms/tagmanager/ax$1;->b:J
invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/tagmanager/ax;->a(Lcom/google/android/gms/tagmanager/ax;Ljava/util/List;J)V
return-void
.end method