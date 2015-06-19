.class public final Lcom/instagram/feed/survey/b;
.super Ljava/lang/Object;
.source "Survey.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/survey/c;",
            ">;"
        }
    .end annotation
.end field

.field private h:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/instagram/feed/survey/d;->a:I

    iput v0, p0, Lcom/instagram/feed/survey/b;->h:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/feed/survey/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/feed/survey/b;->a:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/survey/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/instagram/feed/survey/b;->g:Ljava/util/List;

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/feed/survey/b;->f:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/feed/survey/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/feed/survey/b;->b:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/feed/survey/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/feed/survey/b;->c:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/feed/survey/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/feed/survey/b;->d:Ljava/lang/String;

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/feed/survey/b;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/instagram/feed/survey/b;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget v0, Lcom/instagram/feed/survey/d;->a:I

    iput v0, p0, Lcom/instagram/feed/survey/b;->h:I

    :goto_e
    return-void

    :cond_f
    sget v0, Lcom/instagram/feed/survey/d;->b:I

    iput v0, p0, Lcom/instagram/feed/survey/b;->h:I

    goto :goto_e
.end method

.method public final e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/feed/survey/b;->f:Z

    return v0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lcom/instagram/feed/survey/b;->h:I

    return v0
.end method

.method public final g()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/survey/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/feed/survey/b;->g:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
