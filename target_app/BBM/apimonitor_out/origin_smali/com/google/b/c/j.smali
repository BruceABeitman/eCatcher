.class public abstract Lcom/google/b/c/j;
.super Ljava/lang/Object;
.source "GenericMapMaker.java"


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
.field a:Lcom/google/b/c/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/c/y",
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
.method final a()Lcom/google/b/c/y;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lcom/google/b/c/y",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/b/c/j;->a:Lcom/google/b/c/y;

    sget-object v1, Lcom/google/b/c/k;->a:Lcom/google/b/c/k;

    invoke-static {v0, v1}, Lcom/google/b/a/i;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/c/y;

    return-object v0
.end method
