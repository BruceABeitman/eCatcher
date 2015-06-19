.class final Lcom/c/a/bx;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/c/a/ai;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/c/a/bh;)V
    .registers 2

    invoke-direct {p0}, Lcom/c/a/bx;-><init>()V

    return-void
.end method

.method static a(Lcom/c/a/bx;)Lcom/c/a/ai;
    .registers 2

    iget-object v0, p0, Lcom/c/a/bx;->a:Lcom/c/a/ai;

    return-object v0
.end method

.method static a(Lcom/c/a/bx;Lcom/c/a/ai;)Lcom/c/a/ai;
    .registers 2

    iput-object p1, p0, Lcom/c/a/bx;->a:Lcom/c/a/ai;

    return-object p1
.end method
