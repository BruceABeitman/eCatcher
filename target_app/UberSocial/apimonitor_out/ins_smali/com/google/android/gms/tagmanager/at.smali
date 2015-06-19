.class  Lcom/google/android/gms/tagmanager/at;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tagmanager/eh;
.field private a:Landroid/util/LruCache;
.method constructor <init>(ILcom/google/android/gms/tagmanager/ej;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/tagmanager/at$1;
invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/tagmanager/at$1;-><init>(Lcom/google/android/gms/tagmanager/at;ILcom/google/android/gms/tagmanager/ej;)V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/at;->a:Landroid/util/LruCache;
return-void
.end method
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/tagmanager/at;->a:Landroid/util/LruCache;
invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/tagmanager/at;->a:Landroid/util/LruCache;
invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method