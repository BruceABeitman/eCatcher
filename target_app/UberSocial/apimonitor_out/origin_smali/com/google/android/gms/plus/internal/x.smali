.class public Lcom/google/android/gms/plus/internal/x;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/util/ArrayList;

.field private c:[Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/google/android/gms/plus/internal/PlusCommonExtras;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/x;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/x;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/x;->d:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    invoke-direct {v0}, Lcom/google/android/gms/plus/internal/PlusCommonExtras;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/x;->h:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/x;->b:Ljava/util/ArrayList;

    const-string v1, "https://www.googleapis.com/auth/plus.login"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/plus/internal/x;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/android/gms/plus/internal/x;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/x;->a:Ljava/lang/String;

    return-object p0
.end method

.method public varargs a([Ljava/lang/String;)Lcom/google/android/gms/plus/internal/x;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/x;->b:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public b()Lcom/google/android/gms/plus/internal/h;
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/x;->a:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, "<<default account>>"

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/x;->a:Ljava/lang/String;

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/x;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/plus/internal/h;

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/x;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/plus/internal/x;->c:[Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/plus/internal/x;->f:[Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/plus/internal/x;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/plus/internal/x;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/plus/internal/x;->g:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/plus/internal/x;->h:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/plus/internal/h;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/PlusCommonExtras;)V

    return-object v0
.end method

.method public varargs b([Ljava/lang/String;)Lcom/google/android/gms/plus/internal/x;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/x;->c:[Ljava/lang/String;

    return-object p0
.end method
