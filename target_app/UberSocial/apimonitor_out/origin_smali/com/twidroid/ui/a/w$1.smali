.class Lcom/twidroid/ui/a/w$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/ui/a/w;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/ui/a/w;


# direct methods
.method constructor <init>(Lcom/twidroid/ui/a/w;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ui/a/w$1;->a:Lcom/twidroid/ui/a/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/a/w$1;->a:Lcom/twidroid/ui/a/w;

    invoke-virtual {v0}, Lcom/twidroid/ui/a/w;->notifyDataSetChanged()V

    return-void
.end method
