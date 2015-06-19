.class final Lcom/instagram/common/a/g/c;
.super Ljava/lang/Object;
.source "ApacheAppSchemeRegistry.java"

# interfaces
.implements Lcom/facebook/k/a/a;


# instance fields
.field final synthetic a:Lcom/instagram/common/a/g/b;


# direct methods
.method constructor <init>(Lcom/instagram/common/a/g/b;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/common/a/g/c;->a:Lcom/instagram/common/a/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final badVerifyInvoked(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Lcom/instagram/common/a/g/a;->b()Ljava/lang/Class;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    return-void
.end method
