.class  Lcom/google/android/a/a/l;
.super Lcom/google/android/a/a/f;
.source "SourceFile"
.field private static final e:I = 0x101
.field private static final f:I = 0x102
.field private static final g:I = 0x103
.field final synthetic b:Lcom/google/android/a/a/k;
.field private final c:Lcom/google/android/a/a/n;
.field private d:Ljava/lang/Runnable;
.method public constructor <init>(Lcom/google/android/a/a/k;Lcom/google/android/a/a/n;)V
.registers 4
iput-object p1, p0, Lcom/google/android/a/a/l;->b:Lcom/google/android/a/a/k;
invoke-direct {p0}, Lcom/google/android/a/a/f;-><init>()V
iput-object p2, p0, Lcom/google/android/a/a/l;->c:Lcom/google/android/a/a/n;
new-instance v0, Lcom/google/android/a/a/l$1;
invoke-direct {v0, p0, p1}, Lcom/google/android/a/a/l$1;-><init>(Lcom/google/android/a/a/l;Lcom/google/android/a/a/k;)V
iput-object v0, p0, Lcom/google/android/a/a/l;->d:Ljava/lang/Runnable;
invoke-direct {p0}, Lcom/google/android/a/a/l;->a()V
return-void
.end method
.method static synthetic a(Lcom/google/android/a/a/l;)Lcom/google/android/a/a/n;
.registers 2
iget-object v0, p0, Lcom/google/android/a/a/l;->c:Lcom/google/android/a/a/n;
return-object v0
.end method
.method private a()V
.registers 5
const-string v0, "LicenseChecker"
const-string v1, "Start monitoring timeout."
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lcom/google/android/a/a/l;->b:Lcom/google/android/a/a/k;
invoke-static {v0}, Lcom/google/android/a/a/k;->c(Lcom/google/android/a/a/k;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/google/android/a/a/l;->d:Ljava/lang/Runnable;
const-wide/16 v2, 0x2710
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
.method private b()V
.registers 3
const-string v0, "LicenseChecker"
const-string v1, "Clearing timeout."
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lcom/google/android/a/a/l;->b:Lcom/google/android/a/a/k;
invoke-static {v0}, Lcom/google/android/a/a/k;->c(Lcom/google/android/a/a/k;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/google/android/a/a/l;->d:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
return-void
.end method
.method static synthetic b(Lcom/google/android/a/a/l;)V
.registers 1
invoke-direct {p0}, Lcom/google/android/a/a/l;->b()V
return-void
.end method
.method public a(ILjava/lang/String;Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/google/android/a/a/l;->b:Lcom/google/android/a/a/k;
invoke-static {v0}, Lcom/google/android/a/a/k;->c(Lcom/google/android/a/a/k;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/google/android/a/a/l$2;
invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/a/a/l$2;-><init>(Lcom/google/android/a/a/l;ILjava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method