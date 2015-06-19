.class Lcom/google/android/gms/tagmanager/ea;
.super Lcom/google/android/gms/tagmanager/z;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field private final d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/a;->C:Lcom/google/android/gms/internal/a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/ea;->a:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ak;->M:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/ea;->b:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ak;->P:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/ea;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    sget-object v0, Lcom/google/android/gms/tagmanager/ea;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/tagmanager/ea;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/z;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ea;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lcom/google/android/gms/internal/dz;
    .registers 5

    sget-object v0, Lcom/google/android/gms/tagmanager/ea;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dz;

    if-nez v0, :cond_f

    invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->g()Lcom/google/android/gms/internal/dz;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->a(Lcom/google/android/gms/internal/dz;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/tagmanager/ea;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dz;

    if-eqz v0, :cond_2e

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->a(Lcom/google/android/gms/internal/dz;)Ljava/lang/String;

    move-result-object v0

    :goto_21
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/ea;->d:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/tagmanager/ao;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/dz;

    move-result-object v0

    goto :goto_e

    :cond_2e
    const/4 v0, 0x0

    goto :goto_21

    :cond_30
    invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->g()Lcom/google/android/gms/internal/dz;

    move-result-object v0

    goto :goto_e
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
