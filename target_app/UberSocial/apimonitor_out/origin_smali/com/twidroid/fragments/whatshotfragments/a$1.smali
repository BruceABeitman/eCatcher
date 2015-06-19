.class Lcom/twidroid/fragments/whatshotfragments/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twidroid/ui/widgets/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/whatshotfragments/a;->b(Lcom/twidroid/uberchannels/models/UberTopic;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/whatshotfragments/a;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/whatshotfragments/a;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/whatshotfragments/a$1;->a:Lcom/twidroid/fragments/whatshotfragments/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twidroid/ui/widgets/CachedImageView;)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/a$1;->a:Lcom/twidroid/fragments/whatshotfragments/a;

    invoke-static {v0}, Lcom/twidroid/fragments/whatshotfragments/a;->a(Lcom/twidroid/fragments/whatshotfragments/a;)Lcom/twidroid/ui/widgets/CachedImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/CachedImageView;->invalidate()V

    return-void
.end method
