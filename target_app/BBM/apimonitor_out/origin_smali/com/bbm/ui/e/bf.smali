.class final Lcom/bbm/ui/e/bf;
.super Ljava/lang/Object;
.source "MessagesDelegateAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/ui/e/be;


# direct methods
.method constructor <init>(Lcom/bbm/ui/e/be;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/e/bf;->a:Lcom/bbm/ui/e/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/e/bf;->a:Lcom/bbm/ui/e/be;

    iget-object v0, v0, Lcom/bbm/ui/e/be;->b:Lcom/bbm/util/bf;

    invoke-virtual {v0}, Lcom/bbm/util/bf;->b()V

    return-void
.end method
