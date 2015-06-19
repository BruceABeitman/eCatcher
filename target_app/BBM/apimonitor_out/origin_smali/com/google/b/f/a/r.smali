.class public final Lcom/google/b/f/a/r;
.super Lcom/google/b/f/a/a;
.source "SettableFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/b/f/a/a",
        "<TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/b/f/a/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/b/f/a/r;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/b/f/a/r",
            "<TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/b/f/a/r;

    invoke-direct {v0}, Lcom/google/b/f/a/r;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/b/f/a/a;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/Throwable;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/google/b/f/a/a;->a(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method
