.class public Lcom/twidroid/net/oauth/a;
.super Lcom/ubermedia/net/b/c;
.source "SourceFile"


# instance fields
.field a:Lcom/twidroid/d/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/ubermedia/net/b/c;-><init>()V

    new-instance v0, Lcom/twidroid/d/v;

    invoke-direct {v0, p1}, Lcom/twidroid/d/v;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twidroid/net/oauth/a;->a:Lcom/twidroid/d/v;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    sget-boolean v0, Lcom/twidroid/y;->a:Z

    if-eqz v0, :cond_7

    const-string v0, "s3bfCr5iteHsu4IrOmaSLQ"

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "b8mg2q7HZ5HEAza6y6IQfQ"

    goto :goto_6
.end method

.method public b()Ljava/lang/String;
    .registers 2

    sget-boolean v0, Lcom/twidroid/y;->a:Z

    if-eqz v0, :cond_7

    const-string v0, "phUrqC7m0njKssle59jC80uvxfUANBXKtzoESWR0"

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "cPYegyO0At10tuPcc3dl5wlfvh8tOJMN47Z3IeGHw"

    goto :goto_6
.end method
