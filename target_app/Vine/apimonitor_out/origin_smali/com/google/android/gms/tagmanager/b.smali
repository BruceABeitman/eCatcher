.class Lcom/google/android/gms/tagmanager/b;
.super Lcom/google/android/gms/tagmanager/aj;


# static fields
.field private static final ID:Ljava/lang/String;


# instance fields
.field private final aeg:Lcom/google/android/gms/tagmanager/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/a;->u:Lcom/google/android/gms/internal/a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/b;->ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/a;->J(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/b;-><init>(Lcom/google/android/gms/tagmanager/a;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/tagmanager/a;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/tagmanager/b;->ID:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/aj;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/b;->aeg:Lcom/google/android/gms/tagmanager/a;

    return-void
.end method


# virtual methods
.method public lc()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public w(Ljava/util/Map;)Lcom/google/android/gms/internal/d$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/d$a;",
            ">;)",
            "Lcom/google/android/gms/internal/d$a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/b;->aeg:Lcom/google/android/gms/tagmanager/a;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/a;->kY()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->mY()Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    goto :goto_c
.end method
