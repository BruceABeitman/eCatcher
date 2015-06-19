.class Lcom/twidroid/ui/widgets/HorizontialListView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/ui/widgets/HorizontialListView;->onLayout(ZIIII)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/ui/widgets/HorizontialListView;


# direct methods
.method constructor <init>(Lcom/twidroid/ui/widgets/HorizontialListView;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ui/widgets/HorizontialListView$2;->a:Lcom/twidroid/ui/widgets/HorizontialListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView$2;->a:Lcom/twidroid/ui/widgets/HorizontialListView;

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/HorizontialListView;->requestLayout()V

    return-void
.end method
