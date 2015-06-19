.class Lcom/twidroid/UberSocialProfile$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/UberSocialProfile;->a(Ljava/util/ArrayList;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/twidroid/UberSocialProfile;


# direct methods
.method constructor <init>(Lcom/twidroid/UberSocialProfile;Ljava/util/ArrayList;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/UberSocialProfile$4;->b:Lcom/twidroid/UberSocialProfile;

    iput-object p2, p0, Lcom/twidroid/UberSocialProfile$4;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    invoke-static {}, Lcom/twidroid/net/n;->a()Lcom/twidroid/net/n;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/twidroid/UberSocialProfile$4$1;

    invoke-direct {v2, p0}, Lcom/twidroid/UberSocialProfile$4$1;-><init>(Lcom/twidroid/UberSocialProfile$4;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/twidroid/net/n;->a(Ljava/lang/Thread;)V

    return-void
.end method
