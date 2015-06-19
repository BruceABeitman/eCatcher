.class public final Lcom/instagram/l/a/b;
.super Lcom/instagram/api/k/a/e;
.source "QuickExperimentResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/e",
        "<",
        "Lcom/instagram/l/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/l/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/api/k/a/e;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/l/a/b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/l/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/l/a/b;->a:Ljava/util/List;

    return-object v0
.end method
