.class final Lcom/mapquest/android/maps/ao;
.super Lcom/mapquest/android/maps/bg;
.source "MapQuestOSMTileFactory.java"


# instance fields
.field protected a:Lcom/mapquest/android/maps/ai;

.field private b:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/ai;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/bg;-><init>(Lcom/mapquest/android/maps/MapView;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/mapquest/android/maps/ao;->b:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lcom/mapquest/android/maps/ao;->a:Lcom/mapquest/android/maps/ai;

    return-void
.end method

.method private b(Lcom/mapquest/android/maps/ca;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/mapquest/android/maps/an;->a:Lcom/mapquest/android/maps/an;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/an;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mapquest/android/maps/ao;->b:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v1, p0, Lcom/mapquest/android/maps/ao;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mapquest/android/maps/ao;->b:Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/mapquest/android/maps/ca;->f:Lcom/mapquest/android/maps/cf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mapquest/android/maps/ao;->b:Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/mapquest/android/maps/ca;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mapquest/android/maps/ao;->b:Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/mapquest/android/maps/ca;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mapquest/android/maps/ao;->b:Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/mapquest/android/maps/ca;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mapquest/android/maps/ao;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .registers 2

    const-string v0, "mqosm"

    return-object v0
.end method

.method protected final a(Lcom/mapquest/android/maps/ca;)Ljava/lang/String;
    .registers 6

    iget-object v0, p1, Lcom/mapquest/android/maps/ca;->f:Lcom/mapquest/android/maps/cf;

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/ao;->a(Lcom/mapquest/android/maps/cf;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/ao;->b(Lcom/mapquest/android/maps/ca;)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    :try_start_d
    const-string v1, "{$z}"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/mapquest/android/maps/ca;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{$x}"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/mapquest/android/maps/ca;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{$y}"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/mapquest/android/maps/ca;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{$ext}"

    const-string v2, "jpg"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_53} :catch_55

    move-result-object v0

    goto :goto_c

    :catch_55
    move-exception v0

    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/ao;->b(Lcom/mapquest/android/maps/ca;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method protected final a(Lcom/mapquest/android/maps/cf;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/mapquest/android/maps/ao;->a:Lcom/mapquest/android/maps/ai;

    const-string v1, "open"

    iget-object v2, p1, Lcom/mapquest/android/maps/cf;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mapquest/android/maps/ai;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/mapquest/android/maps/an;
    .registers 2

    sget-object v0, Lcom/mapquest/android/maps/an;->a:Lcom/mapquest/android/maps/an;

    return-object v0
.end method

.method public final b(Lcom/mapquest/android/maps/cf;)Z
    .registers 3

    sget-object v0, Lcom/mapquest/android/maps/cf;->a:Lcom/mapquest/android/maps/cf;

    if-eq p1, v0, :cond_14

    sget-object v0, Lcom/mapquest/android/maps/cf;->c:Lcom/mapquest/android/maps/cf;

    if-eq p1, v0, :cond_14

    sget-object v0, Lcom/mapquest/android/maps/cf;->b:Lcom/mapquest/android/maps/cf;

    if-eq p1, v0, :cond_14

    sget-object v0, Lcom/mapquest/android/maps/cf;->d:Lcom/mapquest/android/maps/cf;

    if-eq p1, v0, :cond_14

    sget-object v0, Lcom/mapquest/android/maps/cf;->f:Lcom/mapquest/android/maps/cf;

    if-ne p1, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
