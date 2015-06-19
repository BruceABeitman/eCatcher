.class public abstract Lcom/c/dd;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:J

.field protected e:Ljava/io/InputStream;


# direct methods
.method protected constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/c/dd;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/c/dd;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/c/dd;->c:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/c/dd;->d:J

    iput-object v2, p0, Lcom/c/dd;->e:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/c/dd;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/c/dd;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .registers 3

    iget-wide v0, p0, Lcom/c/dd;->d:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/c/dd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/c/dd;->e:Ljava/io/InputStream;

    return-object v0
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Lcom/c/dd;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method
