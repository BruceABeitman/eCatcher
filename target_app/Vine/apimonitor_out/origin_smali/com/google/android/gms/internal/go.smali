.class public Lcom/google/android/gms/internal/go;
.super Ljava/lang/Object;


# static fields
.field private static Ci:Z


# instance fields
.field private Cj:Z

.field private Ck:Z

.field private Cl:Ljava/lang/String;

.field private final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/go;->Ci:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/go;->en()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/go;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/go;->mTag:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/go;->Cj:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/go;->Ck:Z

    return-void
.end method

.method private varargs e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/go;->Cl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/go;->Cl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1f
    return-object v0
.end method

.method public static en()Z
    .registers 1

    sget-boolean v0, Lcom/google/android/gms/internal/go;->Ci:Z

    return v0
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/go;->em()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/go;->mTag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/go;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method

.method public varargs a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/go;->el()Z

    move-result v0

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/google/android/gms/internal/go;->Ci:Z

    if-eqz v0, :cond_13

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->mTag:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/go;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    return-void
.end method

.method public ap(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_7
    iput-object v0, p0, Lcom/google/android/gms/internal/go;->Cl:Ljava/lang/String;

    return-void

    :cond_a
    const-string v0, "[%s] "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/go;->el()Z

    move-result v0

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/google/android/gms/internal/go;->Ci:Z

    if-eqz v0, :cond_13

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/go;->mTag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/go;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-void
.end method

.method public varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/go;->mTag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/go;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/go;->mTag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/go;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public el()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/go;->Cj:Z

    return v0
.end method

.method public em()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/go;->Ck:Z

    return v0
.end method
