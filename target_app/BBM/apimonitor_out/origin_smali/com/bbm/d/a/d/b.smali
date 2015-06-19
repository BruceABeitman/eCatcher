.class public abstract Lcom/bbm/d/a/d/b;
.super Ljava/lang/Object;
.source "BbmdsStream.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/d/a/d/b;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/bbm/f/ab;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/bbm/d/a/d/b;->a:Z

    if-nez v0, :cond_18

    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/google/b/a/o;->b(Z)V

    invoke-virtual {p1}, Lcom/bbm/f/ab;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    iput-boolean v1, p0, Lcom/bbm/d/a/d/b;->a:Z

    iget-object v0, p1, Lcom/bbm/f/ab;->d:[B

    invoke-virtual {p0, v0}, Lcom/bbm/d/a/d/b;->a([B)V

    :cond_17
    :goto_17
    return-void

    :cond_18
    move v0, v2

    goto :goto_7

    :cond_1a
    iget-object v0, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    const-string v3, "streamError"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "Stream error :("

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/bbm/d/a/d/b;->a:Z

    goto :goto_17
.end method

.method protected abstract a([B)V
.end method
