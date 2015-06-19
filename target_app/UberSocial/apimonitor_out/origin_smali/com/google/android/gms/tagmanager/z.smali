.class abstract Lcom/google/android/gms/tagmanager/z;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/z;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/z;->a:Ljava/util/Set;

    array-length v1, p2

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v1, :cond_1b

    aget-object v2, p2, v0

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/z;->a:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1b
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/util/Map;)Lcom/google/android/gms/internal/dz;
.end method

.method public abstract a()Z
.end method

.method a(Ljava/util/Set;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/z;->a:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/z;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/z;->a:Ljava/util/Set;

    return-object v0
.end method
