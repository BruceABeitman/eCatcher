.class Lcom/blackberry/ids/IDS$15$2;
.super Ljava/lang/Object;
.source "IDS.java"

# interfaces
.implements Lcom/blackberry/ids/IFailureCallback;


# instance fields
.field final synthetic a:Lcom/blackberry/ids/IDS$15;


# direct methods
.method constructor <init>(Lcom/blackberry/ids/IDS$15;)V
    .registers 2

    iput-object p1, p0, Lcom/blackberry/ids/IDS$15$2;->a:Lcom/blackberry/ids/IDS$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(IILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/blackberry/ids/IDS$15$2;->a:Lcom/blackberry/ids/IDS$15;

    iget-object v0, v0, Lcom/blackberry/ids/IDS$15;->d:Lcom/blackberry/ids/IFailureCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/blackberry/ids/IFailureCallback;->call(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/blackberry/ids/IDS$15$2;->a:Lcom/blackberry/ids/IDS$15;

    iget-object v0, v0, Lcom/blackberry/ids/IDS$15;->c:Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
