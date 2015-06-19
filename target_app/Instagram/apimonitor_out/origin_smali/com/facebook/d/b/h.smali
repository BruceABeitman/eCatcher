.class public final Lcom/facebook/d/b/h;
.super Ljava/lang/Object;
.source "SoftErrorBuilder.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Throwable;

.field private d:Z

.field private e:I

.field private f:Z


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/d/b/h;->e:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/facebook/d/b/h;
    .registers 2

    iput-object p1, p0, Lcom/facebook/d/b/h;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/lang/Throwable;)Lcom/facebook/d/b/h;
    .registers 2

    iput-object p1, p0, Lcom/facebook/d/b/h;->c:Ljava/lang/Throwable;

    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/d/b/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/facebook/d/b/h;
    .registers 2

    iput-object p1, p0, Lcom/facebook/d/b/h;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/d/b/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lcom/facebook/d/b/h;->c:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/d/b/h;->d:Z

    return v0
.end method

.method public final e()Lcom/facebook/d/b/h;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/d/b/h;->d:Z

    return-object p0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lcom/facebook/d/b/h;->e:I

    return v0
.end method

.method public final g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/d/b/h;->f:Z

    return v0
.end method

.method public final h()Lcom/facebook/d/b/g;
    .registers 2

    new-instance v0, Lcom/facebook/d/b/g;

    invoke-direct {v0, p0}, Lcom/facebook/d/b/g;-><init>(Lcom/facebook/d/b/h;)V

    return-object v0
.end method
