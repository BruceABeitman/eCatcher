.class public final Lcom/bbm/util/g/c;
.super Ljava/lang/Object;
.source "BbmVCardInterpreter.java"

# interfaces
.implements Lcom/a/a/x;


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/w;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bbm/util/g/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/bbm/util/g/a;

.field private d:I

.field private e:Landroid/accounts/Account;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/util/g/c;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbm/util/g/c;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbm/util/g/c;->a:Ljava/util/List;

    iput-object v1, p0, Lcom/bbm/util/g/c;->c:Lcom/bbm/util/g/a;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bbm/util/g/c;->d:I

    iput-object v1, p0, Lcom/bbm/util/g/c;->e:Landroid/accounts/Account;

    const v0, -0x3fffffff

    iput v0, p0, Lcom/bbm/util/g/c;->d:I

    iput-object v1, p0, Lcom/bbm/util/g/c;->e:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    const-string v0, "Started Interpreter"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/util/g/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_e

    :cond_18
    return-void
.end method

.method public final a(Lcom/a/a/ae;)V
    .registers 4

    const-string v0, "New Property"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/util/g/c;->c:Lcom/bbm/util/g/a;

    invoke-virtual {v0, p1}, Lcom/bbm/util/g/a;->a(Lcom/a/a/ae;)V

    return-void
.end method

.method public final b()V
    .registers 3

    const-string v0, "Ended Interpreter"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/util/g/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_e

    :cond_18
    return-void
.end method

.method public final c()V
    .registers 4

    const-string v0, "Parsing entry"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    new-instance v0, Lcom/bbm/util/g/a;

    iget v1, p0, Lcom/bbm/util/g/c;->d:I

    iget-object v2, p0, Lcom/bbm/util/g/c;->e:Landroid/accounts/Account;

    invoke-direct {v0, v1, v2}, Lcom/bbm/util/g/a;-><init>(ILandroid/accounts/Account;)V

    iput-object v0, p0, Lcom/bbm/util/g/c;->c:Lcom/bbm/util/g/a;

    iget-object v0, p0, Lcom/bbm/util/g/c;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/bbm/util/g/c;->c:Lcom/bbm/util/g/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d()V
    .registers 5

    iget-object v0, p0, Lcom/bbm/util/g/c;->c:Lcom/bbm/util/g/a;

    iget-object v1, v0, Lcom/a/a/d;->a:Lcom/a/a/m;

    invoke-virtual {v0}, Lcom/a/a/d;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/a/a/m;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/util/g/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/w;

    iget-object v2, p0, Lcom/bbm/util/g/c;->c:Lcom/bbm/util/g/a;

    invoke-interface {v0, v2}, Lcom/a/a/w;->a(Lcom/a/a/d;)V

    goto :goto_10

    :cond_22
    iget-object v0, p0, Lcom/bbm/util/g/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x1

    if-le v1, v0, :cond_51

    iget-object v0, p0, Lcom/bbm/util/g/c;->b:Ljava/util/List;

    add-int/lit8 v2, v1, -0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/g/a;

    iget-object v2, p0, Lcom/bbm/util/g/c;->c:Lcom/bbm/util/g/a;

    iget-object v3, v0, Lcom/a/a/d;->c:Ljava/util/List;

    if-nez v3, :cond_42

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/a/a/d;->c:Ljava/util/List;

    :cond_42
    iget-object v3, v0, Lcom/a/a/d;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/bbm/util/g/c;->c:Lcom/bbm/util/g/a;

    :goto_49
    iget-object v0, p0, Lcom/bbm/util/g/c;->b:Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/util/g/c;->c:Lcom/bbm/util/g/a;

    goto :goto_49
.end method
