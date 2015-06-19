.class Lcom/glympse/android/lib/ao;
.super Ljava/lang/Object;
.source "ContentResolver.java"

# interfaces
.implements Lcom/glympse/android/lib/GContentResolver;


# instance fields
.field private jj:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GContentProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/glympse/android/hal/GVector;

    invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/ao;->jj:Lcom/glympse/android/hal/GVector;

    return-void
.end method


# virtual methods
.method public isMatches(Lcom/glympse/android/lib/GUri;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public load(Lcom/glympse/android/lib/GUri;)Lcom/glympse/android/core/GCommon;
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/ao;->jj:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v3

    move v1, v2

    :goto_8
    if-ge v1, v3, :cond_21

    iget-object v0, p0, Lcom/glympse/android/lib/ao;->jj:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GContentProvider;

    invoke-interface {v0, p1}, Lcom/glympse/android/lib/GContentProvider;->isMatches(Lcom/glympse/android/lib/GUri;)Z

    move-result v4

    if-eqz v4, :cond_23

    :try_start_18
    invoke-interface {v0, p1}, Lcom/glympse/android/lib/GContentProvider;->load(Lcom/glympse/android/lib/GUri;)Lcom/glympse/android/core/GCommon;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1d

    move-result-object v0

    :goto_1c
    return-object v0

    :catch_1d
    move-exception v0

    invoke-static {v0, v2}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    :cond_21
    const/4 v0, 0x0

    goto :goto_1c

    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8
.end method

.method public registerProvider(Lcom/glympse/android/lib/GContentProvider;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/ao;->jj:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public stop()V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/ao;->jj:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_19

    iget-object v0, p0, Lcom/glympse/android/lib/ao;->jj:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GContentProvider;

    invoke-interface {v0}, Lcom/glympse/android/lib/GContentProvider;->stop()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_19
    return-void
.end method
