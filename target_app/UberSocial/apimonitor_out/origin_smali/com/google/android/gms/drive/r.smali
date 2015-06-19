.class public final Lcom/google/android/gms/drive/r;
.super Lcom/google/android/gms/common/data/a;


# static fields
.field private static final b:[Ljava/lang/String;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/google/android/gms/drive/metadata/internal/c;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/metadata/b;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/metadata/b;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_d

    :cond_21
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/drive/r;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/a;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object p2, p0, Lcom/google/android/gms/drive/r;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/android/gms/drive/q;
    .registers 4

    new-instance v0, Lcom/google/android/gms/drive/s;

    iget-object v1, p0, Lcom/google/android/gms/drive/r;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/drive/s;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-object v0
.end method

.method public synthetic b(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/r;->a(I)Lcom/google/android/gms/drive/q;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/drive/r;->c:Ljava/lang/String;

    return-object v0
.end method
