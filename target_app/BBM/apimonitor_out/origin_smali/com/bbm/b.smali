.class final Lcom/bbm/b;
.super Ljava/lang/Thread;
.source "Alaska.java"


# instance fields
.field final synthetic a:Lcom/bbm/Alaska;


# direct methods
.method constructor <init>(Lcom/bbm/Alaska;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/b;->a:Lcom/bbm/Alaska;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcom/bbm/b;->a:Lcom/bbm/Alaska;

    invoke-static {}, Lcom/bbm/Alaska;->q()Z

    const-string v0, "Crittercism is not required"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method
