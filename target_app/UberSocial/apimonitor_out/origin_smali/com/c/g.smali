.class Lcom/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final a:Lcom/c/di;


# direct methods
.method constructor <init>(Lcom/c/di;)V
    .registers 2

    iput-object p1, p0, Lcom/c/g;->a:Lcom/c/di;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .registers 2

    iget-object v0, p0, Lcom/c/g;->a:Lcom/c/di;

    invoke-static {v0}, Lcom/c/di;->a(Lcom/c/di;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/c/g;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
