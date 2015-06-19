.class final Lcom/instagram/common/a/a/g;
.super Ljava/lang/Object;
.source "ExecutorBasedRequestPerformer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/instagram/common/a/a/f;


# direct methods
.method constructor <init>(Lcom/instagram/common/a/a/f;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/common/a/a/g;->b:Lcom/instagram/common/a/a/f;

    iput-object p2, p0, Lcom/instagram/common/a/a/g;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/common/a/a/g;->b:Lcom/instagram/common/a/a/f;

    iget-object v0, v0, Lcom/instagram/common/a/a/f;->a:Lcom/instagram/common/a/a/a;

    iget-object v1, p0, Lcom/instagram/common/a/a/g;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/instagram/common/a/a/a;->a(Ljava/lang/Object;)V

    return-void
.end method
