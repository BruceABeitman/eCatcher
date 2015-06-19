.class Lcom/twidroid/ui/a/v$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/ui/a/v;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/ui/a/v;


# direct methods
.method constructor <init>(Lcom/twidroid/ui/a/v;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ui/a/v$1;->a:Lcom/twidroid/ui/a/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/a/v$1;->a:Lcom/twidroid/ui/a/v;

    invoke-virtual {v0}, Lcom/twidroid/ui/a/v;->notifyDataSetChanged()V

    return-void
.end method
