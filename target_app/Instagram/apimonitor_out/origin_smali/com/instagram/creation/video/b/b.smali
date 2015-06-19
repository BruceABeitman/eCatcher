.class final Lcom/instagram/creation/video/b/b;
.super Ljava/lang/Object;
.source "ObservedStack.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/instagram/creation/video/b/a;

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/b/a;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/creation/video/b/b;->b:Lcom/instagram/creation/video/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/instagram/creation/video/b/b;->b:Lcom/instagram/creation/video/b/a;

    invoke-static {v0}, Lcom/instagram/creation/video/b/a;->a(Lcom/instagram/creation/video/b/a;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/b/b;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/b/b;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/creation/video/b/b;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/b/b;->c:Ljava/lang/Object;

    iget-object v0, p0, Lcom/instagram/creation/video/b/b;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final remove()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/b/b;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lcom/instagram/creation/video/b/b;->b:Lcom/instagram/creation/video/b/a;

    invoke-static {v0}, Lcom/instagram/creation/video/b/a;->b(Lcom/instagram/creation/video/b/a;)Lcom/instagram/creation/video/b/c;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/instagram/creation/video/b/b;->b:Lcom/instagram/creation/video/b/a;

    invoke-static {v0}, Lcom/instagram/creation/video/b/a;->b(Lcom/instagram/creation/video/b/a;)Lcom/instagram/creation/video/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/b/b;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/instagram/creation/video/b/c;->a(Ljava/lang/Object;)V

    :cond_18
    return-void
.end method
