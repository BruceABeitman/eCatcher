.class Lcom/google/android/gms/tagmanager/x;
.super Lcom/google/android/gms/tagmanager/z;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/android/gms/tagmanager/db;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/a;->o:Lcom/google/android/gms/internal/a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/x;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/tagmanager/db;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/tagmanager/x;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/z;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/x;->b:Lcom/google/android/gms/tagmanager/db;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lcom/google/android/gms/internal/dz;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/x;->b:Lcom/google/android/gms/tagmanager/db;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/db;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->g()Lcom/google/android/gms/internal/dz;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/dz;

    move-result-object v0

    goto :goto_c
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
