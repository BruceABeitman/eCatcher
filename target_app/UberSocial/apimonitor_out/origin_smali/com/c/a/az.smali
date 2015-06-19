.class public final Lcom/c/a/az;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lcom/c/a/bq;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/c/a/az;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/c/a/az;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/c/a/az;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/c/a/az;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(Lcom/c/bq;)Lcom/c/a/cc;
    .registers 3

    sget-boolean v0, Lcom/c/a/az;->a:Z

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/c/a/az;->a()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/c/a/az;->b:Lcom/c/a/bq;

    invoke-virtual {v0, p1}, Lcom/c/a/bq;->a(Lcom/c/bq;)Lcom/c/a/cc;

    move-result-object v0

    return-object v0
.end method

.method a()Z
    .registers 2

    iget-object v0, p0, Lcom/c/a/az;->b:Lcom/c/a/bq;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method b()V
    .registers 3

    invoke-virtual {p0}, Lcom/c/a/az;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/c/a/az;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/c/a/az;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/c/a/bq;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/c/a/bq;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/az;->b:Lcom/c/a/bq;

    goto :goto_6
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/c/a/az;->b:Lcom/c/a/bq;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/c/a/az;->b:Lcom/c/a/bq;

    invoke-virtual {v0}, Lcom/c/a/bq;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/az;->b:Lcom/c/a/bq;

    :cond_c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/c/a/az;->d:Ljava/lang/String;

    return-object v0
.end method
