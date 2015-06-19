.class public final Lcom/millennialmedia/android/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/android/bo;


# static fields
.field private static final c:Ljava/lang/String; = "MMInterstitial"


# instance fields
.field a:Lcom/millennialmedia/android/bp;

.field b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/millennialmedia/android/ce;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/android/ce;-><init>(Lcom/millennialmedia/android/cd;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/cd;->a:Lcom/millennialmedia/android/bp;

    iget-object v0, p0, Lcom/millennialmedia/android/cd;->a:Lcom/millennialmedia/android/bp;

    const-string v1, "i"

    iput-object v1, v0, Lcom/millennialmedia/android/bp;->h:Ljava/lang/String;

    return-void
.end method

.method private e()V
    .registers 4

    invoke-virtual {p0}, Lcom/millennialmedia/android/cd;->b()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "MMInterstitial"

    const-string v1, "Ad already fetched and ready for display..."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/cd;->a:Lcom/millennialmedia/android/bp;

    new-instance v1, Lcom/millennialmedia/android/cc;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lcom/millennialmedia/android/cc;-><init>(I)V

    invoke-static {v0, v1}, Lcom/millennialmedia/android/cp;->a(Lcom/millennialmedia/android/bp;Lcom/millennialmedia/android/cc;)V

    :goto_19
    return-void

    :cond_1a
    const-string v0, "MMInterstitial"

    const-string v1, "Fetching new ad..."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/cd;->a:Lcom/millennialmedia/android/bp;

    invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->f()V

    goto :goto_19
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/cd;->a:Lcom/millennialmedia/android/bp;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/millennialmedia/android/cd;->a:Lcom/millennialmedia/android/bp;

    iget-object v0, v0, Lcom/millennialmedia/android/bp;->e:Lcom/millennialmedia/android/df;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/millennialmedia/android/cd;->a:Lcom/millennialmedia/android/bp;

    iget-object v0, v0, Lcom/millennialmedia/android/bp;->d:Lcom/millennialmedia/android/cn;

    iget-object v1, p0, Lcom/millennialmedia/android/cd;->a:Lcom/millennialmedia/android/bp;

    iget-object v1, v1, Lcom/millennialmedia/android/bp;->e:Lcom/millennialmedia/android/df;

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/android/cd;->a(Lcom/millennialmedia/android/cn;Lcom/millennialmedia/android/df;)V

    :goto_15
    return-void

    :cond_16
    invoke-direct {p0}, Lcom/millennialmedia/android/cd;->e()V

    goto :goto_15
.end method

.method public a(Lcom/millennialmedia/android/cn;)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/cd;->a:Lcom/millennialmedia/android/bp;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/millennialmedia/android/cd;->a:Lcom/millennialmedia/android/bp;

    iget-object v0, v0, Lcom/millennialmedia/android/bp;->e:Lcom/millennialmedia/android/df;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/millennialmedia/android/cd;->a:Lcom/millennialmedia/android/bp;

    iget-object v0, v0, Lcom/millennialmedia/android/bp;->e:Lcom/millennialmedia/android/df;

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/android/cd;->a(Lcom/millennialmedia/android/cn;Lcom/millennialmedia/android/df;)V

    :goto_11
    return-void

    :cond_12
    invoke-direct {p0}, Lcom/millennialmedia/android/cd;->e()V

    goto :goto_11
.end method

.method public a(Lcom/millennialmedia/android/cn;Lcom/millennialmedia/android/df;)V
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/android/cd;->a:Lcom/millennialmedia/android/bp;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/millennialmedia/android/cd;->a:Lcom/millennialmedia/android/bp;

    iput-object p1, v0, Lcom/millennialmedia/android/bp;->d:Lcom/millennialmedia/android/cn;

    iget-object v0, p0, Lcom/millennialmedia/android/cd;->a:Lcom/millennialmedia/android/bp;

    iput-object p2, v0, Lcom/millennialmedia/android/bp;->e:Lcom/millennialmedia/android/df;

    :cond_c
    invoke-direct {p0}, Lcom/millennialmedia/android/cd;->e()V

    return-void
.end method

.method public a(Z)Z
    .registers 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/millennialmedia/android/co;->d()Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "MMInterstitial"

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/millennialmedia/android/cc;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_11
    return v0

    :cond_12
    :try_start_12
    invoke-virtual {p0}, Lcom/millennialmedia/android/cd;->d()I

    move-result v1

    if-eqz v1, :cond_29

    if-eqz p1, :cond_29

    new-instance v2, Lcom/millennialmedia/android/cc;

    invoke-direct {v2, v1}, Lcom/millennialmedia/android/cc;-><init>(I)V

    throw v2
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_20} :catch_20

    :catch_20
    move-exception v1

    if-eqz p1, :cond_11

    new-instance v0, Lcom/millennialmedia/android/cc;

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/cc;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_29
    if-nez v1, :cond_11

    const/4 v0, 0x1

    goto :goto_11
.end method

.method public b()Z
    .registers 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/millennialmedia/android/co;->d()Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "MMInterstitial"

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/millennialmedia/android/cc;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_11
    return v0

    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/millennialmedia/android/cd;->a:Lcom/millennialmedia/android/bp;

    invoke-static {v1}, Lcom/millennialmedia/android/bs;->b(Lcom/millennialmedia/android/bp;)V

    iget-object v1, p0, Lcom/millennialmedia/android/cd;->a:Lcom/millennialmedia/android/bp;

    iget-object v1, v1, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/millennialmedia/android/cd;->a:Lcom/millennialmedia/android/bp;

    iget-object v1, v1, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;

    iget-object v2, p0, Lcom/millennialmedia/android/cd;->a:Lcom/millennialmedia/android/bp;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/bs;->f(Lcom/millennialmedia/android/bp;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_26} :catch_2b

    move-result v1

    if-nez v1, :cond_11

    const/4 v0, 0x1

    goto :goto_11

    :catch_2b
    move-exception v1

    const-string v2, "MMInterstitial"

    const-string v3, "There was an exception checking for a cached ad. "

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/cd;->a(Z)Z

    move-result v0

    return v0
.end method

.method d()I
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/cd;->a:Lcom/millennialmedia/android/bp;

    invoke-static {v0}, Lcom/millennialmedia/android/bs;->b(Lcom/millennialmedia/android/bp;)V

    iget-object v0, p0, Lcom/millennialmedia/android/cd;->a:Lcom/millennialmedia/android/bp;

    iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/millennialmedia/android/cd;->a:Lcom/millennialmedia/android/bp;

    iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;

    iget-object v1, p0, Lcom/millennialmedia/android/cd;->a:Lcom/millennialmedia/android/bp;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/bs;->g(Lcom/millennialmedia/android/bp;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    move-result v0

    :goto_15
    return v0

    :catch_16
    move-exception v0

    const-string v1, "MMInterstitial"

    const-string v2, "There was an exception displaying a cached ad. "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_21
    const/16 v0, 0x64

    goto :goto_15
.end method

.method public getApid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/cd;->a:Lcom/millennialmedia/android/bp;

    invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->getApid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIgnoresDensityScaling()Z
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/cd;->a:Lcom/millennialmedia/android/bp;

    invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->getIgnoresDensityScaling()Z

    move-result v0

    return v0
.end method

.method public getListener()Lcom/millennialmedia/android/df;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/cd;->a:Lcom/millennialmedia/android/bp;

    invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->getListener()Lcom/millennialmedia/android/df;

    move-result-object v0

    return-object v0
.end method

.method public getMMRequest()Lcom/millennialmedia/android/cn;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/cd;->a:Lcom/millennialmedia/android/bp;

    invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->getMMRequest()Lcom/millennialmedia/android/cn;

    move-result-object v0

    return-object v0
.end method

.method public setApid(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/cd;->a:Lcom/millennialmedia/android/bp;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/bp;->setApid(Ljava/lang/String;)V

    return-void
.end method

.method public setIgnoresDensityScaling(Z)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/cd;->a:Lcom/millennialmedia/android/bp;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/bp;->setIgnoresDensityScaling(Z)V

    return-void
.end method

.method public setListener(Lcom/millennialmedia/android/df;)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/cd;->a:Lcom/millennialmedia/android/bp;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/bp;->setListener(Lcom/millennialmedia/android/df;)V

    return-void
.end method

.method public setMMRequest(Lcom/millennialmedia/android/cn;)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/cd;->a:Lcom/millennialmedia/android/bp;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/bp;->setMMRequest(Lcom/millennialmedia/android/cn;)V

    return-void
.end method
