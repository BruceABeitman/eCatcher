.class Lcom/c/a/bi;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/c/a/be;

.field private final b:Lcom/c/a/az;

.field private c:I

.field private final d:I


# direct methods
.method constructor <init>(Lcom/c/a/be;Lcom/c/a/az;II)V
    .registers 5

    iput-object p1, p0, Lcom/c/a/bi;->a:Lcom/c/a/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/c/a/bi;->b:Lcom/c/a/az;

    iput p3, p0, Lcom/c/a/bi;->c:I

    iput p4, p0, Lcom/c/a/bi;->d:I

    return-void
.end method


# virtual methods
.method a()Lcom/c/a/az;
    .registers 2

    iget-object v0, p0, Lcom/c/a/bi;->b:Lcom/c/a/az;

    return-object v0
.end method

.method a(I)V
    .registers 2

    iput p1, p0, Lcom/c/a/bi;->c:I

    return-void
.end method

.method b()I
    .registers 2

    iget v0, p0, Lcom/c/a/bi;->c:I

    return v0
.end method

.method c()I
    .registers 2

    iget v0, p0, Lcom/c/a/bi;->d:I

    return v0
.end method
