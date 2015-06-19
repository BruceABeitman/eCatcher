.class final Lcom/instagram/filterkit/d/g;
.super Ljava/lang/Object;
.source "TextureManager.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/instagram/filterkit/e/a;

.field public c:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/instagram/filterkit/e/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/filterkit/d/g;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/instagram/filterkit/d/g;->b:Lcom/instagram/filterkit/e/a;

    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/filterkit/d/g;->c:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/instagram/filterkit/e/a;B)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/instagram/filterkit/d/g;-><init>(Ljava/lang/String;Lcom/instagram/filterkit/e/a;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_18

    instance-of v0, p1, Lcom/instagram/filterkit/d/g;

    if-eqz v0, :cond_18

    check-cast p1, Lcom/instagram/filterkit/d/g;

    iget-object v0, p1, Lcom/instagram/filterkit/d/g;->b:Lcom/instagram/filterkit/e/a;

    invoke-interface {v0}, Lcom/instagram/filterkit/e/a;->b()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/filterkit/d/g;->b:Lcom/instagram/filterkit/e/a;

    invoke-interface {v1}, Lcom/instagram/filterkit/e/a;->b()I

    move-result v1

    if-ne v0, v1, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/instagram/filterkit/d/g;->b:Lcom/instagram/filterkit/e/a;

    invoke-interface {v0}, Lcom/instagram/filterkit/e/a;->b()I

    move-result v0

    return v0
.end method
