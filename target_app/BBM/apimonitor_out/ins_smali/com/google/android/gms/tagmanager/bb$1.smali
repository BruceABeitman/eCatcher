.class  Lcom/google/android/gms/tagmanager/bb$1;
.super Landroid/util/LruCache;
.field final synthetic Vx:Lcom/google/android/gms/tagmanager/l$a;
.field final synthetic Vy:Lcom/google/android/gms/tagmanager/bb;
.method constructor <init>(Lcom/google/android/gms/tagmanager/bb;ILcom/google/android/gms/tagmanager/l$a;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/tagmanager/bb$1;->Vy:Lcom/google/android/gms/tagmanager/bb;
iput-object p3, p0, Lcom/google/android/gms/tagmanager/bb$1;->Vx:Lcom/google/android/gms/tagmanager/l$a;
invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V
return-void
.end method
.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
iget-object v0, p0, Lcom/google/android/gms/tagmanager/bb$1;->Vx:Lcom/google/android/gms/tagmanager/l$a;
invoke-interface {v0, p1, p2}, Lcom/google/android/gms/tagmanager/l$a;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
move-result v0
return v0
.end method