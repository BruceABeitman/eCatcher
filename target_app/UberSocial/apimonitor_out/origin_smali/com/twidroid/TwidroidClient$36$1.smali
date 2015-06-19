.class Lcom/twidroid/TwidroidClient$36$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twidroid/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/TwidroidClient$36;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/TwidroidClient$36;


# direct methods
.method constructor <init>(Lcom/twidroid/TwidroidClient$36;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/TwidroidClient$36$1;->a:Lcom/twidroid/TwidroidClient$36;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$36$1;->a:Lcom/twidroid/TwidroidClient$36;

    iget-object v0, v0, Lcom/twidroid/TwidroidClient$36;->a:Lcom/twidroid/TwidroidClient;

    invoke-static {v0, p1}, Lcom/twidroid/TwidroidClient;->a(Lcom/twidroid/TwidroidClient;Z)V

    return-void
.end method
