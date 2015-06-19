.class Lcom/twidroid/UberSocialProfile$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twidroid/UberSocialProfile;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/UberSocialProfile;


# direct methods
.method constructor <init>(Lcom/twidroid/UberSocialProfile;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/UberSocialProfile$23;->a:Lcom/twidroid/UberSocialProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$23;->a:Lcom/twidroid/UberSocialProfile;

    iget-object v0, v0, Lcom/twidroid/UberSocialProfile;->o:Landroid/view/MenuItem;

    const v1, 0x7f0c0086

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$23;->a:Lcom/twidroid/UberSocialProfile;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/twidroid/UberSocialProfile;->v:Z

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$23;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->b(Lcom/twidroid/UberSocialProfile;)V

    return-void
.end method
