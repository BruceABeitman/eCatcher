.class public final Lcom/spotify/mobile/android/util/cw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Lcom/spotify/mobile/android/util/cw;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/spotify/mobile/android/util/cw;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/spotify/mobile/android/util/cw;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/util/cw;->a:Ljava/lang/String;

    iput p2, p0, Lcom/spotify/mobile/android/util/cw;->b:I

    iput-boolean p3, p0, Lcom/spotify/mobile/android/util/cw;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/util/cw;->d:Z

    return-void
.end method

.method public static a(Lcom/spotify/mobile/android/util/cx;Lcom/spotify/mobile/android/util/cz;Lcom/spotify/mobile/android/util/cw;Ljava/util/List;)Lcom/spotify/mobile/android/util/cw;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/mobile/android/util/cx;",
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/spotify/mobile/android/util/cw;",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/util/cw;",
            ">;)",
            "Lcom/spotify/mobile/android/util/cw;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/cw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v3, v0, Lcom/spotify/mobile/android/util/cw;->c:Z

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Lcom/spotify/mobile/android/util/cw;->b(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_29
    if-nez p2, :cond_43

    const-string v0, ""

    move-object v1, v0

    :goto_2e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/spotify/mobile/android/util/cw;->a(Ljava/lang/String;Ljava/util/List;)Lcom/spotify/mobile/android/util/cw;

    move-result-object v0

    return-object v0

    :cond_43
    invoke-virtual {p2}, Lcom/spotify/mobile/android/util/cw;->b()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2e
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)Lcom/spotify/mobile/android/util/cw;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/util/cw;",
            ">;)",
            "Lcom/spotify/mobile/android/util/cw;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-nez p0, :cond_6

    move-object v0, v2

    :goto_5
    return-object v0

    :cond_6
    const-string v1, " REVERSE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2c

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    move v1, v0

    :goto_14
    new-instance v0, Lcom/spotify/mobile/android/util/cw;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/cw;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2a

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/cw;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cw;->a(Z)Lcom/spotify/mobile/android/util/cw;

    move-result-object v0

    goto :goto_5

    :cond_2a
    move-object v0, v2

    goto :goto_5

    :cond_2c
    move v1, v0

    goto :goto_14
.end method

.method private b(Z)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/spotify/mobile/android/util/cw;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/spotify/mobile/android/util/cw;->c:Z

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_1c

    const-string v0, " REVERSE"

    :goto_13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    const-string v0, ""

    goto :goto_13
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/util/cw;)Lcom/spotify/mobile/android/util/cw;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/util/cw;->e:Lcom/spotify/mobile/android/util/cw;

    return-object p0
.end method

.method public final a(Z)Lcom/spotify/mobile/android/util/cw;
    .registers 3

    iget-boolean v0, p0, Lcom/spotify/mobile/android/util/cw;->c:Z

    if-nez v0, :cond_5

    :goto_4
    return-object p0

    :cond_5
    iput-boolean p1, p0, Lcom/spotify/mobile/android/util/cw;->d:Z

    goto :goto_4
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/cw;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/util/cw;->d:Z

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/util/cw;->b(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/spotify/mobile/android/util/cw;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/cw;->e:Lcom/spotify/mobile/android/util/cw;

    return-object v0
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/util/cw;->b:I

    return v0
.end method

.method public final e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/util/cw;->c:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/spotify/mobile/android/util/cw;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lcom/spotify/mobile/android/util/cw;

    iget-object v1, p1, Lcom/spotify/mobile/android/util/cw;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/spotify/mobile/android/util/cw;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/util/cw;->c:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-boolean v0, p0, Lcom/spotify/mobile/android/util/cw;->d:Z

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/cw;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
