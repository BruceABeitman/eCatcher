.class Lcom/twidroid/UberSocialProfile$17$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/UberSocialProfile$17;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/UberSocialProfile$17;


# direct methods
.method constructor <init>(Lcom/twidroid/UberSocialProfile$17;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/UberSocialProfile$17$2;->a:Lcom/twidroid/UberSocialProfile$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$17$2;->a:Lcom/twidroid/UberSocialProfile$17;

    iget-object v0, v0, Lcom/twidroid/UberSocialProfile$17;->a:Lcom/twidroid/UberSocialProfile;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialProfile;->n()V

    return-void
.end method