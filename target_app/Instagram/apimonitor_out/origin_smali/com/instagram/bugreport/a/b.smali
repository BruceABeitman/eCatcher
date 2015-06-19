.class public abstract Lcom/instagram/bugreport/a/b;
.super Lcom/instagram/common/a/a/d;
.source "FlytrapRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/d",
        "<",
        "Lcom/instagram/bugreport/a/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lcom/instagram/common/a/a/d;-><init>()V

    iput-object p1, p0, Lcom/instagram/bugreport/a/b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/instagram/bugreport/a/b;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/instagram/bugreport/a/b;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/instagram/bugreport/a/b;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/instagram/bugreport/a/b;->f:Ljava/lang/String;

    return-void
.end method

.method private static k()Lcom/instagram/bugreport/a/e;
    .registers 1

    new-instance v0, Lcom/instagram/bugreport/a/e;

    invoke-direct {v0}, Lcom/instagram/bugreport/a/e;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/instagram/common/a/c/b;
    .registers 7

    new-instance v3, Lcom/instagram/common/a/c/b;

    invoke-direct {v3}, Lcom/instagram/common/a/c/b;-><init>()V

    const-string v0, "user_identifier"

    iget-object v1, p0, Lcom/instagram/bugreport/a/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "client_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "config_id"

    iget-object v1, p0, Lcom/instagram/bugreport/a/b;->f:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/d/c/a;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/instagram/api/b/a;

    invoke-direct {v0}, Lcom/instagram/api/b/a;-><init>()V

    const-string v1, "IG_Username"

    iget-object v2, p0, Lcom/instagram/bugreport/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Git_Hash"

    iget-object v2, p0, Lcom/instagram/bugreport/a/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/instagram/common/o/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Build_Num"

    iget-object v2, p0, Lcom/instagram/bugreport/a/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/instagram/common/o/a;->a(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;I)V

    const-string v1, "Branch"

    iget-object v2, p0, Lcom/instagram/bugreport/a/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/instagram/common/o/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "OS_Version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Manufacturer"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Build_Type"

    invoke-static {}, Lcom/instagram/common/o/a;->a()Lcom/instagram/common/o/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/common/o/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/instagram/api/b/a;

    invoke-direct {v1}, Lcom/instagram/api/b/a;-><init>()V

    const-string v2, "description"

    iget-object v4, p0, Lcom/instagram/bugreport/a/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "category_id"

    iget-object v4, p0, Lcom/instagram/bugreport/a/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "misc_info"

    invoke-virtual {v0}, Lcom/instagram/api/b/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "metadata"

    invoke-virtual {v1}, Lcom/instagram/api/b/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/bugreport/a/b;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/instagram/bugreport/a/b;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d1

    const-string v1, "file"

    const-string v2, "bugreport.png"

    const-string v4, "image/png"

    invoke-virtual {v3, v1, v0, v2, v4}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d1
    iget-object v0, p0, Lcom/instagram/bugreport/a/b;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_116

    const-string v1, "attachments"

    const/4 v0, 0x0

    move v2, v0

    :goto_d9
    iget-object v0, p0, Lcom/instagram/bugreport/a/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_116

    iget-object v0, p0, Lcom/instagram/bugreport/a/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_110

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_110

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "text/plain"

    invoke-virtual {v3, v1, v4, v0, v5}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    :cond_110
    move-object v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_d9

    :cond_116
    return-object v3
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/bugreport/a/b;->g:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/instagram/bugreport/a/b;->h:Ljava/util/ArrayList;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/bugreport/a/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .registers 2

    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method public final d()Lcom/instagram/common/a/a/p;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/common/a/a/p",
            "<",
            "Lcom/instagram/bugreport/a/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/instagram/bugreport/a/c;

    invoke-direct {v0, p0}, Lcom/instagram/bugreport/a/c;-><init>(Lcom/instagram/bugreport/a/b;)V

    return-object v0
.end method

.method protected final synthetic g()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/instagram/bugreport/a/b;->k()Lcom/instagram/bugreport/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/bugreport/a/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/bugreport/a/b;->h:Ljava/util/ArrayList;

    return-object v0
.end method
