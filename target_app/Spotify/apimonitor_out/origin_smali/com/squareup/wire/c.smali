.class public abstract Lcom/squareup/wire/c;
.super Lcom/squareup/wire/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/squareup/wire/ExtendableMessage",
        "<*>;>",
        "Lcom/squareup/wire/g",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Lcom/squareup/wire/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/e",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/squareup/wire/g;-><init>()V

    return-void
.end method
