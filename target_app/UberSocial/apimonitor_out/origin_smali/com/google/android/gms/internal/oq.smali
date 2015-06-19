.class public final Lcom/google/android/gms/internal/oq;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:I

.field private final c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "requestId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "outcome"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/oq;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILjava/util/HashMap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/oq;->b:I

    iput-object p2, p0, Lcom/google/android/gms/internal/oq;->c:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(ILjava/util/HashMap;Lcom/google/android/gms/internal/oq$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/oq;-><init>(ILjava/util/HashMap;)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/internal/oq;
    .registers 7

    new-instance v1, Lcom/google/android/gms/internal/or;

    invoke-direct {v1}, Lcom/google/android/gms/internal/or;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->e()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/or;->a(I)Lcom/google/android/gms/internal/or;

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->g()I

    move-result v2

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v2, :cond_29

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataHolder;->a(I)I

    move-result v3

    const-string v4, "requestId"

    invoke-virtual {p0, v4, v0, v3}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "outcome"

    invoke-virtual {p0, v5, v0, v3}, Lcom/google/android/gms/common/data/DataHolder;->b(Ljava/lang/String;II)I

    move-result v3

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/or;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/or;

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_29
    invoke-virtual {v1}, Lcom/google/android/gms/internal/or;->a()Lcom/google/android/gms/internal/oq;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/oq;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not part of the update operation!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/oq;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public a()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/oq;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
