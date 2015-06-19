.class Lcom/google/android/gms/tagmanager/ff;
.super Lcom/google/android/gms/tagmanager/du;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field private final d:Lcom/google/android/gms/tagmanager/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/a;->L:Lcom/google/android/gms/internal/a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/ff;->a:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ak;->cB:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/ff;->b:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ak;->I:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/ff;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/tagmanager/h;)V
    .registers 6

    sget-object v0, Lcom/google/android/gms/tagmanager/ff;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/tagmanager/ff;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/du;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ff;->d:Lcom/google/android/gms/tagmanager/h;

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/dz;)V
    .registers 4

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/dw;->a(Lcom/google/android/gms/internal/dz;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->f()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ff;->d:Lcom/google/android/gms/tagmanager/h;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/h;->a(Ljava/lang/String;)V

    goto :goto_8
.end method

.method private b(Lcom/google/android/gms/internal/dz;)V
    .registers 5

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_9

    :cond_8
    return-void

    :cond_9
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/dw;->f(Lcom/google/android/gms/internal/dz;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_8

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_17

    check-cast v0, Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/ff;->d:Lcom/google/android/gms/tagmanager/h;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/tagmanager/h;->a(Ljava/util/Map;)V

    goto :goto_17
.end method


# virtual methods
.method public b(Ljava/util/Map;)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/tagmanager/ff;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dz;

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/ff;->b(Lcom/google/android/gms/internal/dz;)V

    sget-object v0, Lcom/google/android/gms/tagmanager/ff;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dz;

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/ff;->a(Lcom/google/android/gms/internal/dz;)V

    return-void
.end method
