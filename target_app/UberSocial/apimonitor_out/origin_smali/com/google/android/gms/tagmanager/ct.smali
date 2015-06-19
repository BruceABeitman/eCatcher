.class public Lcom/google/android/gms/tagmanager/ct;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Lcom/google/android/gms/internal/dz;


# direct methods
.method private constructor <init>(Ljava/util/Map;Lcom/google/android/gms/internal/dz;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ct;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/ct;->b:Lcom/google/android/gms/internal/dz;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/google/android/gms/internal/dz;Lcom/google/android/gms/tagmanager/cs$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/ct;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/dz;)V

    return-void
.end method

.method public static a()Lcom/google/android/gms/tagmanager/cu;
    .registers 2

    new-instance v0, Lcom/google/android/gms/tagmanager/cu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/tagmanager/cu;-><init>(Lcom/google/android/gms/tagmanager/cs$1;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/android/gms/internal/dz;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ct;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ct;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/android/gms/internal/dz;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ct;->b:Lcom/google/android/gms/internal/dz;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Properties: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/ct;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pushAfterEvaluate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ct;->b:Lcom/google/android/gms/internal/dz;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
