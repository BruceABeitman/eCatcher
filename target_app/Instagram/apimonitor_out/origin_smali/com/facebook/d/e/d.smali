.class public final Lcom/facebook/d/e/d;
.super Ljava/lang/Object;
.source "ObjectPoolBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:J

.field private f:Lcom/facebook/d/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/e/b",
            "<TT;>;"
        }
    .end annotation
.end field

.field private g:Lcom/facebook/d/f/a;

.field private final h:Lcom/facebook/d/e/e;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/facebook/d/f/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/facebook/d/f/a;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/d/e/d;-><init>(Ljava/lang/Class;Lcom/facebook/d/f/a;B)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Lcom/facebook/d/f/a;B)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/facebook/d/f/a;",
            "B)V"
        }
    .end annotation

    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/facebook/d/e/d;->b:I

    const/16 v0, 0x400

    iput v0, p0, Lcom/facebook/d/e/d;->c:I

    iput v1, p0, Lcom/facebook/d/e/d;->d:I

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/facebook/d/e/d;->e:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/d/e/d;->h:Lcom/facebook/d/e/e;

    iput-object p1, p0, Lcom/facebook/d/e/d;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/facebook/d/e/d;->g:Lcom/facebook/d/f/a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/d/e/a;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/d/e/a",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/d/e/d;->g:Lcom/facebook/d/f/a;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must add a clock to the object pool builder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v7, p0, Lcom/facebook/d/e/d;->f:Lcom/facebook/d/e/b;

    if-nez v7, :cond_17

    new-instance v7, Lcom/facebook/d/e/c;

    iget-object v0, p0, Lcom/facebook/d/e/d;->a:Ljava/lang/Class;

    invoke-direct {v7, v0}, Lcom/facebook/d/e/c;-><init>(Ljava/lang/Class;)V

    :cond_17
    new-instance v0, Lcom/facebook/d/e/a;

    iget-object v1, p0, Lcom/facebook/d/e/d;->a:Ljava/lang/Class;

    iget v2, p0, Lcom/facebook/d/e/d;->b:I

    iget v3, p0, Lcom/facebook/d/e/d;->c:I

    iget v4, p0, Lcom/facebook/d/e/d;->d:I

    iget-wide v5, p0, Lcom/facebook/d/e/d;->e:J

    iget-object v8, p0, Lcom/facebook/d/e/d;->g:Lcom/facebook/d/f/a;

    invoke-direct/range {v0 .. v8}, Lcom/facebook/d/e/a;-><init>(Ljava/lang/Class;IIIJLcom/facebook/d/e/b;Lcom/facebook/d/f/a;)V

    iget-object v1, p0, Lcom/facebook/d/e/d;->h:Lcom/facebook/d/e/e;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/facebook/d/e/d;->h:Lcom/facebook/d/e/e;

    iget-object v2, p0, Lcom/facebook/d/e/d;->a:Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/d/e/e;->a(Ljava/lang/Class;Lcom/facebook/d/e/a;)V

    :cond_33
    return-object v0
.end method

.method public final a(Lcom/facebook/d/e/b;)Lcom/facebook/d/e/d;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/e/b",
            "<TT;>;)",
            "Lcom/facebook/d/e/d",
            "<TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/d/e/d;->f:Lcom/facebook/d/e/b;

    return-object p0
.end method
