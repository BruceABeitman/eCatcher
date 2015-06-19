.class public final Lcom/google/android/gms/plus/internal/v;
.super Ljava/lang/Object;
.field private static a:Landroid/content/Context;
.field private static b:Lcom/google/android/gms/plus/internal/e;
.method public static a(Landroid/content/Context;IILjava/lang/String;I)Landroid/view/View;
.registers 11
if-nez p3, :cond_f
:try_start_2
new-instance v0, Ljava/lang/NullPointerException;
invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V
throw v0
:try_end_8
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_8
:catch_8
move-exception v0
new-instance v0, Lcom/google/android/gms/plus/s;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/plus/s;-><init>(Landroid/content/Context;I)V
:goto_e
return-object v0
:cond_f
:try_start_f
invoke-static {p0}, Lcom/google/android/gms/plus/internal/v;->a(Landroid/content/Context;)Lcom/google/android/gms/plus/internal/e;
move-result-object v0
invoke-static {p0}, Lcom/google/android/gms/c/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/c/d;
move-result-object v1
move v2, p1
move v3, p2
move-object v4, p3
move v5, p4
invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/c/d;IILjava/lang/String;I)Lcom/google/android/gms/c/d;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/c/g;->a(Lcom/google/android/gms/c/d;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
:try_end_25
.catch Ljava/lang/Exception; {:try_start_f .. :try_end_25} :catch_8
goto :goto_e
.end method
.method private static a(Landroid/content/Context;)Lcom/google/android/gms/plus/internal/e;
.registers 3
invoke-static {p0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/plus/internal/v;->b:Lcom/google/android/gms/plus/internal/e;
if-nez v0, :cond_35
sget-object v0, Lcom/google/android/gms/plus/internal/v;->a:Landroid/content/Context;
if-nez v0, :cond_1d
invoke-static {p0}, Lcom/google/android/gms/common/i;->e(Landroid/content/Context;)Landroid/content/Context;
move-result-object v0
sput-object v0, Lcom/google/android/gms/plus/internal/v;->a:Landroid/content/Context;
sget-object v0, Lcom/google/android/gms/plus/internal/v;->a:Landroid/content/Context;
if-nez v0, :cond_1d
new-instance v0, Lcom/google/android/gms/plus/internal/w;
const-string v1, "Could not get remote context."
invoke-direct {v0, v1}, Lcom/google/android/gms/plus/internal/w;-><init>(Ljava/lang/String;)V
throw v0
:cond_1d
sget-object v0, Lcom/google/android/gms/plus/internal/v;->a:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
:try_start_23
const-string v1, "com.google.android.gms.plus.plusone.PlusOneButtonCreatorImpl"
invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/IBinder;
invoke-static {v0}, Lcom/google/android/gms/plus/internal/f;->a(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/e;
move-result-object v0
sput-object v0, Lcom/google/android/gms/plus/internal/v;->b:Lcom/google/android/gms/plus/internal/e;
:cond_35
:try_end_35
.catch Ljava/lang/ClassNotFoundException; {:try_start_23 .. :try_end_35} :catch_38
.catch Ljava/lang/InstantiationException; {:try_start_23 .. :try_end_35} :catch_41
.catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_35} :catch_4a
sget-object v0, Lcom/google/android/gms/plus/internal/v;->b:Lcom/google/android/gms/plus/internal/e;
return-object v0
:catch_38
move-exception v0
new-instance v0, Lcom/google/android/gms/plus/internal/w;
const-string v1, "Could not load creator class."
invoke-direct {v0, v1}, Lcom/google/android/gms/plus/internal/w;-><init>(Ljava/lang/String;)V
throw v0
:catch_41
move-exception v0
new-instance v0, Lcom/google/android/gms/plus/internal/w;
const-string v1, "Could not instantiate creator."
invoke-direct {v0, v1}, Lcom/google/android/gms/plus/internal/w;-><init>(Ljava/lang/String;)V
throw v0
:catch_4a
move-exception v0
new-instance v0, Lcom/google/android/gms/plus/internal/w;
const-string v1, "Could not access creator."
invoke-direct {v0, v1}, Lcom/google/android/gms/plus/internal/w;-><init>(Ljava/lang/String;)V
throw v0
.end method