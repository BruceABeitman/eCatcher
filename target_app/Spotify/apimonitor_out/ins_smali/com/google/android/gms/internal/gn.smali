.class final Lcom/google/android/gms/internal/gn;
.super Ljava/lang/Object;
.field final synthetic a:Lcom/google/android/gms/internal/gm;
.field private final b:Ljava/lang/String;
.field private final c:Lcom/google/android/gms/internal/go;
.field private final d:Ljava/util/HashSet;
.field private e:I
.field private f:Z
.field private g:Landroid/os/IBinder;
.field private h:Landroid/content/ComponentName;
.method public constructor <init>(Lcom/google/android/gms/internal/gm;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/gn;->a:Lcom/google/android/gms/internal/gm;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/google/android/gms/internal/gn;->b:Ljava/lang/String;
new-instance v0, Lcom/google/android/gms/internal/go;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/go;-><init>(Lcom/google/android/gms/internal/gn;)V
iput-object v0, p0, Lcom/google/android/gms/internal/gn;->c:Lcom/google/android/gms/internal/go;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/gn;->d:Ljava/util/HashSet;
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/internal/gn;->e:I
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/internal/gn;I)I
.registers 2
iput p1, p0, Lcom/google/android/gms/internal/gn;->e:I
return p1
.end method
.method static synthetic a(Lcom/google/android/gms/internal/gn;Landroid/content/ComponentName;)Landroid/content/ComponentName;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/gn;->h:Landroid/content/ComponentName;
return-object p1
.end method
.method static synthetic a(Lcom/google/android/gms/internal/gn;Landroid/os/IBinder;)Landroid/os/IBinder;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/gn;->g:Landroid/os/IBinder;
return-object p1
.end method
.method static synthetic a(Lcom/google/android/gms/internal/gn;)Ljava/util/HashSet;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gn;->d:Ljava/util/HashSet;
return-object v0
.end method
.method public final a()Lcom/google/android/gms/internal/go;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gn;->c:Lcom/google/android/gms/internal/go;
return-object v0
.end method
.method public final a(Lcom/google/android/gms/internal/gf;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/gn;->d:Ljava/util/HashSet;
invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public final a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/google/android/gms/internal/gn;->f:Z
return-void
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gn;->b:Ljava/lang/String;
return-object v0
.end method
.method public final b(Lcom/google/android/gms/internal/gf;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/gn;->d:Ljava/util/HashSet;
invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method public final c()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/internal/gn;->f:Z
return v0
.end method
.method public final c(Lcom/google/android/gms/internal/gf;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/gn;->d:Ljava/util/HashSet;
invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final d()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/gn;->e:I
return v0
.end method
.method public final e()Z
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gn;->d:Ljava/util/HashSet;
invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z
move-result v0
return v0
.end method
.method public final f()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gn;->g:Landroid/os/IBinder;
return-object v0
.end method
.method public final g()Landroid/content/ComponentName;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gn;->h:Landroid/content/ComponentName;
return-object v0
.end method