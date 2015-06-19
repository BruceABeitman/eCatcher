.class final Lcom/google/b/b/bp;
.super Ljava/lang/Object;
.source "LongAddables.java"

# interfaces
.implements Lcom/google/b/a/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/b/a/s",
        "<",
        "Lcom/google/b/b/bm;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/google/b/b/bq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/b/b/bq;-><init>(B)V

    return-object v0
.end method
