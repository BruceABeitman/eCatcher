.class Lcom/millennialmedia/android/cm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I = 0x0

.field private static final b:Ljava/lang/String; = "MMSDK-"


# instance fields
.field private c:Lcom/millennialmedia/android/cl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    sput v0, Lcom/millennialmedia/android/cm;->a:I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/cm;->c:Lcom/millennialmedia/android/cl;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/millennialmedia/android/cm;->c:Lcom/millennialmedia/android/cl;

    invoke-interface {v0, p1}, Lcom/millennialmedia/android/cl;->a(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MMSDK-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/millennialmedia/android/cm;->a(Ljava/lang/String;)V

    return-void
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MMSDK-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/millennialmedia/android/cm;->a(Ljava/lang/String;)V

    return-void
.end method

.method private h(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MMSDK-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/millennialmedia/android/cm;->a(Ljava/lang/String;)V

    return-void
.end method

.method private i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MMSDK-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/millennialmedia/android/cm;->a(Ljava/lang/String;)V

    return-void
.end method

.method private j(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MMSDK-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/millennialmedia/android/cm;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    sget v0, Lcom/millennialmedia/android/cm;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2

    sput p1, Lcom/millennialmedia/android/cm;->a:I

    return-void
.end method

.method a(Lcom/millennialmedia/android/cl;)V
    .registers 2

    iput-object p1, p0, Lcom/millennialmedia/android/cm;->c:Lcom/millennialmedia/android/cl;

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget v0, Lcom/millennialmedia/android/cm;->a:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/cm;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    sget v0, Lcom/millennialmedia/android/cm;->a:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/android/cm;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget v0, Lcom/millennialmedia/android/cm;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/cm;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    sget v0, Lcom/millennialmedia/android/cm;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/android/cm;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget v0, Lcom/millennialmedia/android/cm;->a:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/cm;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    sget v0, Lcom/millennialmedia/android/cm;->a:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/android/cm;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget v0, Lcom/millennialmedia/android/cm;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/cm;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    sget v0, Lcom/millennialmedia/android/cm;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/android/cm;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget v0, Lcom/millennialmedia/android/cm;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/cm;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    sget v0, Lcom/millennialmedia/android/cm;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/android/cm;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    return-void
.end method
