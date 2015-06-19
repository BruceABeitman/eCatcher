.class final Lcom/facebook/k;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final transient a:Lcom/facebook/u;

.field private b:Lcom/facebook/cg;

.field private c:I

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/facebook/cf;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/cg;IZLjava/util/List;Lcom/facebook/cf;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/u;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cg;",
            "IZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/cf;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/u;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/k;->d:Z

    iput-object p1, p0, Lcom/facebook/k;->b:Lcom/facebook/cg;

    iput p2, p0, Lcom/facebook/k;->c:I

    iput-boolean p3, p0, Lcom/facebook/k;->d:Z

    iput-object p4, p0, Lcom/facebook/k;->e:Ljava/util/List;

    iput-object p5, p0, Lcom/facebook/k;->f:Lcom/facebook/cf;

    iput-object p6, p0, Lcom/facebook/k;->g:Ljava/lang/String;

    iput-object p7, p0, Lcom/facebook/k;->h:Ljava/lang/String;

    iput-object p8, p0, Lcom/facebook/k;->a:Lcom/facebook/u;

    return-void
.end method


# virtual methods
.method final a()Lcom/facebook/u;
    .registers 2

    iget-object v0, p0, Lcom/facebook/k;->a:Lcom/facebook/u;

    return-object v0
.end method

.method final a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/k;->e:Ljava/util/List;

    return-void
.end method

.method final b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/k;->e:Ljava/util/List;

    return-object v0
.end method

.method final c()Lcom/facebook/cg;
    .registers 2

    iget-object v0, p0, Lcom/facebook/k;->b:Lcom/facebook/cg;

    return-object v0
.end method

.method final d()I
    .registers 2

    iget v0, p0, Lcom/facebook/k;->c:I

    return v0
.end method

.method final e()Lcom/facebook/cf;
    .registers 2

    iget-object v0, p0, Lcom/facebook/k;->f:Lcom/facebook/cf;

    return-object v0
.end method

.method final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/k;->g:Ljava/lang/String;

    return-object v0
.end method

.method final g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/k;->d:Z

    return v0
.end method

.method final h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/k;->h:Ljava/lang/String;

    return-object v0
.end method

.method final i()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/k;->h:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/facebook/k;->d:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
