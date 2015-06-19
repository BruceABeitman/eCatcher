.class final Lcom/squareup/okhttp/internal/spdy/p$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/p;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Z"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/squareup/okhttp/internal/a/c;I)Z
    .registers 5

    int-to-long v0, p2

    invoke-interface {p1, v0, v1}, Lcom/squareup/okhttp/internal/a/c;->b(J)V

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Z"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public final c()V
    .registers 1

    return-void
.end method
