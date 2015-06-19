.class Lcom/twidroid/UberSocialProfile$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/UberSocialProfile;->C()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/UberSocialProfile;


# direct methods
.method constructor <init>(Lcom/twidroid/UberSocialProfile;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/UberSocialProfile$25;->a:Lcom/twidroid/UberSocialProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$25;->a:Lcom/twidroid/UberSocialProfile;

    iget-object v1, p0, Lcom/twidroid/UberSocialProfile$25;->a:Lcom/twidroid/UberSocialProfile;

    iget-object v1, v1, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;

    invoke-virtual {v0, v1}, Lcom/twidroid/UberSocialProfile;->a(Lcom/twidroid/model/twitter/User;)V

    return-void
.end method
