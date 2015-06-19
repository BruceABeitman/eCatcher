.class public final Lcom/instagram/i/d/a;
.super Lcom/instagram/api/k/a/e;
.source "NewsfeedFollowingResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/e",
        "<",
        "Lcom/instagram/i/d/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/i/d/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/api/k/a/e;-><init>()V

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
            "Lcom/instagram/i/d/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/i/d/a;->a:Ljava/util/List;

    return-object v0
.end method
