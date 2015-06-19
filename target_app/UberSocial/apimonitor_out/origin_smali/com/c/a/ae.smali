.class public final Lcom/c/a/ae;
.super Ljava/io/IOException;


# instance fields
.field private final a:Lcom/c/a/bq;


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/c/a/ae;-><init>(Lcom/c/a/bq;)V

    return-void
.end method

.method constructor <init>(Lcom/c/a/bq;)V
    .registers 2

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    iput-object p1, p0, Lcom/c/a/ae;->a:Lcom/c/a/bq;

    return-void
.end method


# virtual methods
.method public a()Lcom/c/a/bq;
    .registers 2

    iget-object v0, p0, Lcom/c/a/ae;->a:Lcom/c/a/bq;

    return-object v0
.end method
