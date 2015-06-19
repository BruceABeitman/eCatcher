.class abstract Lcom/google/android/gms/tagmanager/du;
.super Lcom/google/android/gms/tagmanager/z;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/z;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lcom/google/android/gms/internal/dz;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/du;->b(Ljava/util/Map;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->g()Lcom/google/android/gms/internal/dz;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract b(Ljava/util/Map;)V
.end method
