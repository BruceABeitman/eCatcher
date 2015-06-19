.class final Lcom/squareup/okhttp/internal/spdy/m$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/m;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/squareup/okhttp/internal/spdy/x;)V
    .registers 3

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->k:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/spdy/x;->a(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    return-void
.end method
