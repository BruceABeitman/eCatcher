.class  Lcom/google/android/gms/tagmanager/at$1;
.super Landroid/util/LruCache;
.field final synthetic a:Lcom/google/android/gms/tagmanager/ej;
.field final synthetic b:Lcom/google/android/gms/tagmanager/at;
.method constructor <init>(Lcom/google/android/gms/tagmanager/at;ILcom/google/android/gms/tagmanager/ej;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/tagmanager/at$1;->b:Lcom/google/android/gms/tagmanager/at;
iput-object p3, p0, Lcom/google/android/gms/tagmanager/at$1;->a:Lcom/google/android/gms/tagmanager/ej;
invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V
return-void
.end method
.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
iget-object v0, p0, Lcom/google/android/gms/tagmanager/at$1;->a:Lcom/google/android/gms/tagmanager/ej;
invoke-interface {v0, p1, p2}, Lcom/google/android/gms/tagmanager/ej;->a(Ljava/lang/Object;Ljava/lang/Object;)I
move-result v0
return v0
.end method