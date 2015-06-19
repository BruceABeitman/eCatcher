.class Lcom/twidroid/UberSocialProfile$27$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/UberSocialProfile$27;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/UberSocialProfile$27;


# direct methods
.method constructor <init>(Lcom/twidroid/UberSocialProfile$27;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/UberSocialProfile$27$1;->a:Lcom/twidroid/UberSocialProfile$27;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$27$1;->a:Lcom/twidroid/UberSocialProfile$27;

    iget-object v0, v0, Lcom/twidroid/UberSocialProfile$27;->a:Lcom/twidroid/UberSocialProfile;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialProfile;->finish()V

    return-void
.end method
