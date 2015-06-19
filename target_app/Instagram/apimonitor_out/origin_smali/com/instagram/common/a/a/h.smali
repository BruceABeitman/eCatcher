.class public final Lcom/instagram/common/a/a/h;
.super Ljava/lang/Object;
.source "InlineRequestPerformer.java"

# interfaces
.implements Lcom/instagram/common/a/a/m;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Lcom/instagram/common/a/a/a;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/instagram/common/a/a/a",
            "<TT;*>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/instagram/common/a/a/a;->j()V

    invoke-virtual {p0}, Lcom/instagram/common/a/a/a;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/common/a/a/a;->a(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/common/a/a/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Lcom/instagram/common/a/a/l",
            "<TT;>;>(",
            "Lcom/instagram/common/a/a/a",
            "<TT;TU;>;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/instagram/common/a/a/h;->b(Lcom/instagram/common/a/a/a;)Ljava/lang/Object;

    return-void
.end method
