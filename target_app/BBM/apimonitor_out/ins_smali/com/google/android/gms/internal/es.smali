.class public final Lcom/google/android/gms/internal/es;
.super Lcom/google/android/gms/dynamic/e;
.field private static final Cg:Lcom/google/android/gms/internal/es;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/es;
invoke-direct {v0}, Lcom/google/android/gms/internal/es;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/es;->Cg:Lcom/google/android/gms/internal/es;
return-void
.end method
.method private constructor <init>()V
.registers 2
const-string v0, "com.google.android.gms.common.ui.SignInButtonCreatorImpl"
invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/e;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public static d(Landroid/content/Context;II)Landroid/view/View;
.registers 4
sget-object v0, Lcom/google/android/gms/internal/es;->Cg:Lcom/google/android/gms/internal/es;
invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/es;->e(Landroid/content/Context;II)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method private e(Landroid/content/Context;II)Landroid/view/View;
.registers 8
:try_start_0
invoke-static {p1}, Lcom/google/android/gms/dynamic/c;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;
move-result-object v1
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/es;->z(Landroid/content/Context;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/eo;
invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/internal/eo;->a(Lcom/google/android/gms/dynamic/b;II)Lcom/google/android/gms/dynamic/b;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->b(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
:try_end_14
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15
return-object v0
:catch_15
move-exception v0
new-instance v1, Lcom/google/android/gms/dynamic/e$a;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Could not get button with size "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " and color "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Lcom/google/android/gms/dynamic/e$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
.method public final B(Landroid/os/IBinder;)Lcom/google/android/gms/internal/eo;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/internal/eo$a;->A(Landroid/os/IBinder;)Lcom/google/android/gms/internal/eo;
move-result-object v0
return-object v0
.end method
.method public final synthetic d(Landroid/os/IBinder;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/es;->B(Landroid/os/IBinder;)Lcom/google/android/gms/internal/eo;
move-result-object v0
return-object v0
.end method