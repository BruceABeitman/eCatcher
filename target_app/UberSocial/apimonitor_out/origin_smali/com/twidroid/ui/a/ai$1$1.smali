.class Lcom/twidroid/ui/a/ai$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/ui/a/ai$1;->a(Ljava/lang/Exception;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/ui/a/ai$1;


# direct methods
.method constructor <init>(Lcom/twidroid/ui/a/ai$1;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ui/a/ai$1$1;->a:Lcom/twidroid/ui/a/ai$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/a/ai$1$1;->a:Lcom/twidroid/ui/a/ai$1;

    iget-object v0, v0, Lcom/twidroid/ui/a/ai$1;->b:Lcom/twidroid/ui/a/ai;

    invoke-virtual {v0}, Lcom/twidroid/ui/a/ai;->notifyDataSetChanged()V

    return-void
.end method