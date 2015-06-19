.class public Lcom/lenovo/anyshare/sdk/internal/cs;
.super Ljava/lang/Object;
.source "TonePlayer.java"

# interfaces
.implements Lcom/lenovo/anyshare/sdk/internal/dp;


# instance fields
.field protected a:Lcom/lenovo/anyshare/sdk/internal/do;

.field protected b:[S

.field protected c:Lcom/lenovo/anyshare/sdk/internal/ct;

.field protected d:I

.field protected e:J

.field private f:Lcom/lenovo/anyshare/sdk/internal/be$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/anyshare/sdk/internal/ct;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cs;->b:[S

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/cs$1;

    invoke-direct {v0, p0}, Lcom/lenovo/anyshare/sdk/internal/cs$1;-><init>(Lcom/lenovo/anyshare/sdk/internal/cs;)V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cs;->f:Lcom/lenovo/anyshare/sdk/internal/be$d;

    iput-object p2, p0, Lcom/lenovo/anyshare/sdk/internal/cs;->c:Lcom/lenovo/anyshare/sdk/internal/ct;

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/do;

    const/16 v1, 0x3e80

    const/4 v2, 0x3

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/do;-><init>(Landroid/content/Context;Lcom/lenovo/anyshare/sdk/internal/dp;II)V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cs;->a:Lcom/lenovo/anyshare/sdk/internal/do;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cs;->f:Lcom/lenovo/anyshare/sdk/internal/be$d;

    invoke-virtual {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/be$d;->a(Z)V

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cs;->a:Lcom/lenovo/anyshare/sdk/internal/do;

    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/do;->a()V

    iput v1, p0, Lcom/lenovo/anyshare/sdk/internal/cs;->d:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/anyshare/sdk/internal/cs;->e:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cs;->b:[S

    return-void
.end method

.method public a(Ljava/lang/String;IJ)Z
    .registers 9

    const-wide/16 v1, 0x0

    if-gtz p2, :cond_5

    const/4 p2, 0x1

    :cond_5
    iput p2, p0, Lcom/lenovo/anyshare/sdk/internal/cs;->d:I

    cmp-long v3, p3, v1

    if-gez v3, :cond_c

    move-wide p3, v1

    :cond_c
    iput-wide p3, p0, Lcom/lenovo/anyshare/sdk/internal/cs;->e:J

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/dn;

    const/16 v1, 0x3e80

    invoke-direct {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/dn;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/dn;->a(Ljava/lang/String;)[S

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cs;->b:[S

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cs;->b:[S

    if-nez v1, :cond_3b

    const-string/jumbo v1, "TonePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startTone(): Get Tone samples failed from key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_3a
    return v1

    :cond_3b
    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cs;->a:Lcom/lenovo/anyshare/sdk/internal/do;

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cs;->b:[S

    invoke-virtual {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/do;->a([S)Z

    move-result v1

    goto :goto_3a
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cs;->a:Lcom/lenovo/anyshare/sdk/internal/do;

    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/do;->b()Z

    move-result v0

    return v0
.end method

.method public c()V
    .registers 4

    iget v0, p0, Lcom/lenovo/anyshare/sdk/internal/cs;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lenovo/anyshare/sdk/internal/cs;->d:I

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cs;->f:Lcom/lenovo/anyshare/sdk/internal/be$d;

    iget-wide v1, p0, Lcom/lenovo/anyshare/sdk/internal/cs;->e:J

    invoke-static {v0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/be;->a(Lcom/lenovo/anyshare/sdk/internal/be$c;J)Lcom/lenovo/anyshare/sdk/internal/be$c;

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cs;->c:Lcom/lenovo/anyshare/sdk/internal/ct;

    invoke-interface {v0}, Lcom/lenovo/anyshare/sdk/internal/ct;->onPlayerCompletion()V

    goto :goto_f
.end method
