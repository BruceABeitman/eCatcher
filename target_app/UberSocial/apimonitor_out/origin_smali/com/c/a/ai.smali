.class public Lcom/c/a/ai;
.super Ljava/lang/Thread;


# instance fields
.field private final a:Lcom/c/a/at;


# direct methods
.method public constructor <init>(Lcom/c/a/at;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/c/a/ai;->a:Lcom/c/a/at;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/c/a/ai;->a:Lcom/c/a/at;

    invoke-interface {v0}, Lcom/c/a/at;->a()V

    invoke-virtual {p0}, Lcom/c/a/ai;->interrupt()V

    invoke-static {}, Lcom/c/a/ai;->interrupted()Z

    return-void
.end method
