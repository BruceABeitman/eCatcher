.class public final Landroid/support/v4/c/d;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/c/d;->b:Ljava/lang/StringBuilder;

    iput-object p1, p0, Landroid/support/v4/c/d;->a:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/c/d;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1f

    iget-object v0, p0, Landroid/support/v4/c/d;->a:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v4/c/d;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/support/v4/c/d;->b:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v4/c/d;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_1f
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/c/d;->a()V

    return-void
.end method

.method public final flush()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/c/d;->a()V

    return-void
.end method

.method public final write([CII)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_17

    add-int v1, p2, v0

    aget-char v1, p1, v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_11

    invoke-direct {p0}, Landroid/support/v4/c/d;->a()V

    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    iget-object v2, p0, Landroid/support/v4/c/d;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_17
    return-void
.end method
