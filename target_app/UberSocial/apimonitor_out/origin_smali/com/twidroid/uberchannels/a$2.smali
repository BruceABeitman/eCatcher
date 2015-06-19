.class Lcom/twidroid/uberchannels/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twidroid/ui/widgets/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/uberchannels/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/uberchannels/a;


# direct methods
.method constructor <init>(Lcom/twidroid/uberchannels/a;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/uberchannels/a$2;->a:Lcom/twidroid/uberchannels/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twidroid/ui/widgets/CachedImageView;)V
    .registers 2

    invoke-virtual {p1}, Lcom/twidroid/ui/widgets/CachedImageView;->invalidate()V

    return-void
.end method
