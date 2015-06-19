.class public Lcom/facebook/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private final b:Lcom/facebook/be;

.field private c:Lcom/facebook/bj;

.field private d:I

.field private e:Lcom/facebook/bf;

.field private f:Z

.field private g:Ljava/util/List;

.field private h:Lcom/facebook/bi;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/facebook/bj;->a:Lcom/facebook/bj;

    iput-object v0, p0, Lcom/facebook/ax;->c:Lcom/facebook/bj;

    const v0, 0xface

    iput v0, p0, Lcom/facebook/ax;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ax;->f:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ax;->g:Ljava/util/List;

    sget-object v0, Lcom/facebook/bi;->c:Lcom/facebook/bi;

    iput-object v0, p0, Lcom/facebook/ax;->h:Lcom/facebook/bi;

    new-instance v0, Lcom/facebook/ax$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ax$1;-><init>(Lcom/facebook/ax;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/facebook/ax;->b:Lcom/facebook/be;

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/Fragment;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/facebook/bj;->a:Lcom/facebook/bj;

    iput-object v0, p0, Lcom/facebook/ax;->c:Lcom/facebook/bj;

    const v0, 0xface

    iput v0, p0, Lcom/facebook/ax;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ax;->f:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ax;->g:Ljava/util/List;

    sget-object v0, Lcom/facebook/bi;->c:Lcom/facebook/bi;

    iput-object v0, p0, Lcom/facebook/ax;->h:Lcom/facebook/bi;

    new-instance v0, Lcom/facebook/ax$2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ax$2;-><init>(Lcom/facebook/ax;Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/ax;->b:Lcom/facebook/be;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/bj;ILjava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/facebook/bj;->a:Lcom/facebook/bj;

    iput-object v0, p0, Lcom/facebook/ax;->c:Lcom/facebook/bj;

    const v0, 0xface

    iput v0, p0, Lcom/facebook/ax;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ax;->f:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ax;->g:Ljava/util/List;

    sget-object v0, Lcom/facebook/bi;->c:Lcom/facebook/bi;

    iput-object v0, p0, Lcom/facebook/ax;->h:Lcom/facebook/bi;

    new-instance v0, Lcom/facebook/ax$3;

    invoke-direct {v0, p0}, Lcom/facebook/ax$3;-><init>(Lcom/facebook/ax;)V

    iput-object v0, p0, Lcom/facebook/ax;->b:Lcom/facebook/be;

    iput-object p1, p0, Lcom/facebook/ax;->c:Lcom/facebook/bj;

    iput p2, p0, Lcom/facebook/ax;->d:I

    iput-object p3, p0, Lcom/facebook/ax;->g:Ljava/util/List;

    invoke-static {p4}, Lcom/facebook/bi;->valueOf(Ljava/lang/String;)Lcom/facebook/bi;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ax;->h:Lcom/facebook/bi;

    iput-boolean p5, p0, Lcom/facebook/ax;->f:Z

    iput-object p6, p0, Lcom/facebook/ax;->i:Ljava/lang/String;

    iput-object p7, p0, Lcom/facebook/ax;->j:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/bj;ILjava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/facebook/aw$1;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Lcom/facebook/ax;-><init>(Lcom/facebook/bj;ILjava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ax;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ax;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/facebook/ax;)Lcom/facebook/be;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ax;->b:Lcom/facebook/be;

    return-object v0
.end method


# virtual methods
.method a(I)Lcom/facebook/ax;
    .registers 2

    if-ltz p1, :cond_4

    iput p1, p0, Lcom/facebook/ax;->d:I

    :cond_4
    return-object p0
.end method

.method a(Lcom/facebook/bf;)Lcom/facebook/ax;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ax;->e:Lcom/facebook/bf;

    return-object p0
.end method

.method a(Lcom/facebook/bi;)Lcom/facebook/ax;
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/facebook/ax;->h:Lcom/facebook/bi;

    :cond_4
    return-object p0
.end method

.method a(Lcom/facebook/bj;)Lcom/facebook/ax;
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/facebook/ax;->c:Lcom/facebook/bj;

    :cond_4
    return-object p0
.end method

.method a(Ljava/util/List;)Lcom/facebook/ax;
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/facebook/ax;->g:Ljava/util/List;

    :cond_4
    return-object p0
.end method

.method a(Ljava/io/ObjectInputStream;)V
    .registers 4

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Cannot readObject, serialization proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ax;->i:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ax;->f:Z

    return-void
.end method

.method a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ax;->f:Z

    return v0
.end method

.method b()Lcom/facebook/bf;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ax;->e:Lcom/facebook/bf;

    return-object v0
.end method

.method b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ax;->j:Ljava/lang/String;

    return-void
.end method

.method c()Lcom/facebook/bj;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ax;->c:Lcom/facebook/bj;

    return-object v0
.end method

.method d()I
    .registers 2

    iget v0, p0, Lcom/facebook/ax;->d:I

    return v0
.end method

.method e()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ax;->g:Ljava/util/List;

    return-object v0
.end method

.method f()Lcom/facebook/bi;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ax;->h:Lcom/facebook/bi;

    return-object v0
.end method

.method g()Lcom/facebook/be;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ax;->b:Lcom/facebook/be;

    return-object v0
.end method

.method h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ax;->i:Ljava/lang/String;

    return-object v0
.end method

.method i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ax;->j:Ljava/lang/String;

    return-object v0
.end method

.method j()Lcom/facebook/g;
    .registers 10

    new-instance v8, Lcom/facebook/ax$4;

    invoke-direct {v8, p0}, Lcom/facebook/ax$4;-><init>(Lcom/facebook/ax;)V

    new-instance v0, Lcom/facebook/g;

    iget-object v1, p0, Lcom/facebook/ax;->c:Lcom/facebook/bj;

    iget v2, p0, Lcom/facebook/ax;->d:I

    iget-boolean v3, p0, Lcom/facebook/ax;->f:Z

    iget-object v4, p0, Lcom/facebook/ax;->g:Ljava/util/List;

    iget-object v5, p0, Lcom/facebook/ax;->h:Lcom/facebook/bi;

    iget-object v6, p0, Lcom/facebook/ax;->i:Ljava/lang/String;

    iget-object v7, p0, Lcom/facebook/ax;->j:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/facebook/g;-><init>(Lcom/facebook/bj;IZLjava/util/List;Lcom/facebook/bi;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/p;)V

    return-object v0
.end method

.method k()Ljava/lang/Object;
    .registers 10

    new-instance v0, Lcom/facebook/ay;

    iget-object v1, p0, Lcom/facebook/ax;->c:Lcom/facebook/bj;

    iget v2, p0, Lcom/facebook/ax;->d:I

    iget-object v3, p0, Lcom/facebook/ax;->g:Ljava/util/List;

    iget-object v4, p0, Lcom/facebook/ax;->h:Lcom/facebook/bi;

    invoke-virtual {v4}, Lcom/facebook/bi;->name()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/facebook/ax;->f:Z

    iget-object v6, p0, Lcom/facebook/ax;->i:Ljava/lang/String;

    iget-object v7, p0, Lcom/facebook/ax;->j:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ay;-><init>(Lcom/facebook/bj;ILjava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/facebook/aw$1;)V

    return-object v0
.end method
