.class  Lcom/google/android/gms/maps/ac;
.super Lcom/google/android/gms/c/b;
.field protected a:Lcom/google/android/gms/c/h;
.field private final b:Landroid/support/v4/app/Fragment;
.field private c:Landroid/app/Activity;
.method constructor <init>(Landroid/support/v4/app/Fragment;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/c/b;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/maps/ac;->b:Landroid/support/v4/app/Fragment;
return-void
.end method
.method private a(Landroid/app/Activity;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/maps/ac;->c:Landroid/app/Activity;
invoke-virtual {p0}, Lcom/google/android/gms/maps/ac;->g()V
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/maps/ac;Landroid/app/Activity;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/maps/ac;->a(Landroid/app/Activity;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/c/h;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/maps/ac;->a:Lcom/google/android/gms/c/h;
invoke-virtual {p0}, Lcom/google/android/gms/maps/ac;->g()V
return-void
.end method
.method public g()V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/maps/ac;->c:Landroid/app/Activity;
if-eqz v0, :cond_2f
iget-object v0, p0, Lcom/google/android/gms/maps/ac;->a:Lcom/google/android/gms/c/h;
if-eqz v0, :cond_2f
invoke-virtual {p0}, Lcom/google/android/gms/maps/ac;->a()Lcom/google/android/gms/c/a;
move-result-object v0
if-nez v0, :cond_2f
:try_start_e
iget-object v0, p0, Lcom/google/android/gms/maps/ac;->c:Landroid/app/Activity;
invoke-static {v0}, Lcom/google/android/gms/maps/y;->a(Landroid/content/Context;)I
iget-object v0, p0, Lcom/google/android/gms/maps/ac;->c:Landroid/app/Activity;
invoke-static {v0}, Lcom/google/android/gms/maps/a/bn;->a(Landroid/content/Context;)Lcom/google/android/gms/maps/a/z;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/maps/ac;->c:Landroid/app/Activity;
invoke-static {v1}, Lcom/google/android/gms/c/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/c/d;
move-result-object v1
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/z;->b(Lcom/google/android/gms/c/d;)Lcom/google/android/gms/maps/a/j;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/maps/ac;->a:Lcom/google/android/gms/c/h;
new-instance v2, Lcom/google/android/gms/maps/ab;
iget-object v3, p0, Lcom/google/android/gms/maps/ac;->b:Landroid/support/v4/app/Fragment;
invoke-direct {v2, v3, v0}, Lcom/google/android/gms/maps/ab;-><init>(Landroid/support/v4/app/Fragment;Lcom/google/android/gms/maps/a/j;)V
invoke-interface {v1, v2}, Lcom/google/android/gms/c/h;->a(Lcom/google/android/gms/c/a;)V
:try_end_2f
.catch Landroid/os/RemoteException; {:try_start_e .. :try_end_2f} :catch_30
.catch Lcom/google/android/gms/common/g; {:try_start_e .. :try_end_2f} :catch_37
:goto_2f
:cond_2f
return-void
:catch_30
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
:catch_37
move-exception v0
goto :goto_2f
.end method