.class public final Lcom/google/android/gms/common/api/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/c;

.field private final b:Ljava/util/ArrayList;


# direct methods
.method public varargs constructor <init>(Lcom/google/android/gms/common/api/c;[Lcom/google/android/gms/common/api/o;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/a;->a:Lcom/google/android/gms/common/api/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/api/c;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->a:Lcom/google/android/gms/common/api/c;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->b:Ljava/util/ArrayList;

    return-object v0
.end method
