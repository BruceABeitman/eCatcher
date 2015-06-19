.class final Lcom/google/android/gms/internal/ha;
.super Ljava/lang/Object;
.field final synthetic a:Lcom/google/android/gms/internal/gx;
.field private final b:Ljava/lang/String;
.field private final c:Lcom/google/android/gms/internal/hb;
.field private final d:Ljava/util/HashSet;
.field private e:I
.field private f:Z
.field private g:Landroid/os/IBinder;
.field private h:Landroid/content/ComponentName;
.method public constructor <init>(Lcom/google/android/gms/internal/gx;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/ha;->a:Lcom/google/android/gms/internal/gx;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/google/android/gms/internal/ha;->b:Ljava/lang/String;
new-instance v0, Lcom/google/android/gms/internal/hb;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/hb;-><init>(Lcom/google/android/gms/internal/ha;)V
iput-object v0, p0, Lcom/google/android/gms/internal/ha;->c:Lcom/google/android/gms/internal/hb;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/ha;->d:Ljava/util/HashSet;
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/internal/ha;->e:I
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/internal/ha;I)I
.registers 2
iput p1, p0, Lcom/google/android/gms/internal/ha;->e:I
return p1
.end method
.method static synthetic a(Lcom/google/android/gms/internal/ha;Landroid/content/ComponentName;)Landroid/content/ComponentName;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/ha;->h:Landroid/content/ComponentName;
return-object p1
.end method
.method static synthetic a(Lcom/google/android/gms/internal/ha;Landroid/os/IBinder;)Landroid/os/IBinder;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/ha;->g:Landroid/os/IBinder;
return-object p1
.end method
.method static synthetic a(Lcom/google/android/gms/internal/ha;)Ljava/util/HashSet;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ha;->d:Ljava/util/HashSet;
return-object v0
.end method
.method public a()Lcom/google/android/gms/internal/hb;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ha;->c:Lcom/google/android/gms/internal/hb;
return-object v0
.end method
.method public a(Lcom/google/android/gms/internal/gr;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ha;->d:Ljava/util/HashSet;
invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/google/android/gms/internal/ha;->f:Z
return-void
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ha;->b:Ljava/lang/String;
return-object v0
.end method
.method public b(Lcom/google/android/gms/internal/gr;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ha;->d:Ljava/util/HashSet;
invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method public c()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/internal/ha;->f:Z
return v0
.end method
.method public c(Lcom/google/android/gms/internal/gr;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ha;->d:Ljava/util/HashSet;
invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public d()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ha;->e:I
return v0
.end method
.method public e()Z
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ha;->d:Ljava/util/HashSet;
invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z
move-result v0
return v0
.end method
.method public f()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ha;->g:Landroid/os/IBinder;
return-object v0
.end method
.method public g()Landroid/content/ComponentName;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ha;->h:Landroid/content/ComponentName;
return-object v0
.end method