.class final Lcom/a/a/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic a:Lcom/a/a/bf;


# direct methods
.method constructor <init>(Lcom/a/a/bf;)V
    .registers 2

    iput-object p1, p0, Lcom/a/a/bj;->a:Lcom/a/a/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/a/a/bj;->a:Lcom/a/a/bf;

    invoke-virtual {v0}, Lcom/a/a/bf;->g()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/a/a/bj;->a:Lcom/a/a/bf;

    invoke-static {v0}, Lcom/a/a/bf;->c(Lcom/a/a/bf;)V

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method
