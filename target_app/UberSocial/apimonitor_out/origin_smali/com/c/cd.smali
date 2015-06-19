.class final Lcom/c/cd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/c/cl;


# static fields
.field static final b:Z


# instance fields
.field public a:I

.field final c:Ljava/util/List;

.field final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/c/br;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/c/cd;->b:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 4

    iput-object p1, p0, Lcom/c/cd;->c:Ljava/util/List;

    iput-object p2, p0, Lcom/c/cd;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/c/cd;->a:I

    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 6

    sget-boolean v0, Lcom/c/cd;->b:Z

    if-nez v0, :cond_12

    iget v0, p0, Lcom/c/cd;->a:I

    if-gt v0, p1, :cond_c

    iget v0, p0, Lcom/c/cd;->a:I

    if-le v0, p2, :cond_12

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    iget-object v0, p0, Lcom/c/cd;->c:Ljava/util/List;

    iget v1, p0, Lcom/c/cd;->a:I

    iget-object v2, p0, Lcom/c/cd;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/c/cd;->d:Ljava/util/List;

    iget v1, p0, Lcom/c/cd;->a:I

    iget-object v2, p0, Lcom/c/cd;->d:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/c/cd;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/c/cd;->a:I

    return-void
.end method

.method public b(II)V
    .registers 3

    return-void
.end method

.method public c(II)V
    .registers 3

    return-void
.end method
