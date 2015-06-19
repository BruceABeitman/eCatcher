.class public final Lcom/google/b/a/d;
.super Lcom/google/b/a/c;
.source "Equivalence.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/b/a/c",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/b/a/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/b/a/d;

    invoke-direct {v0}, Lcom/google/b/a/d;-><init>()V

    sput-object v0, Lcom/google/b/a/d;->a:Lcom/google/b/a/d;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/b/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected final b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
