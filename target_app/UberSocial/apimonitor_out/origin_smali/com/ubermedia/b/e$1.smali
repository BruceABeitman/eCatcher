.class Lcom/ubermedia/b/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubermedia/b/e;->a(I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/ubermedia/b/e;


# direct methods
.method constructor <init>(Lcom/ubermedia/b/e;)V
    .registers 2

    iput-object p1, p0, Lcom/ubermedia/b/e$1;->a:Lcom/ubermedia/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/b/e$1;->a:Lcom/ubermedia/b/e;

    invoke-static {v0}, Lcom/ubermedia/b/e;->a(Lcom/ubermedia/b/e;)Lcom/ubermedia/b/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/ubermedia/b/f;->a()V

    return-void
.end method
