.class  Lcom/blackberry/ids/IDS$UiThreadRunner;
.super Ljava/lang/Object;
.source "IDS.java"
.field private static final a:Landroid/os/Handler;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
sput-object v0, Lcom/blackberry/ids/IDS$UiThreadRunner;->a:Landroid/os/Handler;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic a(Ljava/lang/Runnable;)V
.registers 2
sget-object v0, Lcom/blackberry/ids/IDS$UiThreadRunner;->a:Landroid/os/Handler;
invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method