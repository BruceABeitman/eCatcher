.class final Lcom/a/a/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/a/av;


# direct methods
.method constructor <init>(Lcom/a/a/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/a/a/a/ay;)Ljava/lang/Object;
    .registers 6

    new-instance v0, Lcom/a/a/ab;

    invoke-static {}, Lcom/a/a/e;->o()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/a/a/a/ay;->a:Lcom/a/a/a/an;

    iget-object v2, v2, Lcom/a/a/a/an;->c:Ljava/lang/String;

    invoke-static {}, Lcom/a/a/e;->y()Lcom/a/a/a/bw;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/a/a/ab;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/a/a/a/bw;)V

    return-object v0
.end method
