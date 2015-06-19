.class Lcom/twidroid/a/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twidroid/ui/widgets/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/a/d;->a(Ljava/lang/Boolean;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/a/d;


# direct methods
.method constructor <init>(Lcom/twidroid/a/d;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/a/d$1;->a:Lcom/twidroid/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twidroid/ui/widgets/CachedImageView;)V
    .registers 2

    invoke-virtual {p1}, Lcom/twidroid/ui/widgets/CachedImageView;->invalidate()V

    return-void
.end method
