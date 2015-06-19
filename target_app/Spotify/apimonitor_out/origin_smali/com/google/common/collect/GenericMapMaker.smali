.class public abstract Lcom/google/common/collect/GenericMapMaker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/google/common/collect/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/l",
            "<TK0;TV0;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/common/collect/l;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lcom/google/common/collect/l",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/GenericMapMaker;->a:Lcom/google/common/collect/l;

    sget-object v1, Lcom/google/common/collect/GenericMapMaker$NullListener;->a:Lcom/google/common/collect/GenericMapMaker$NullListener;

    invoke-static {v0, v1}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/l;

    return-object v0
.end method
