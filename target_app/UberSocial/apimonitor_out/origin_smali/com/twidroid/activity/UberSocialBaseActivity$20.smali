.class Lcom/twidroid/activity/UberSocialBaseActivity$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/UberSocialBaseActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/twidroid/activity/aa;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/aa;

.field final synthetic b:Lcom/twidroid/activity/UberSocialBaseActivity;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/UberSocialBaseActivity;Lcom/twidroid/activity/aa;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$20;->b:Lcom/twidroid/activity/UberSocialBaseActivity;

    iput-object p2, p0, Lcom/twidroid/activity/UberSocialBaseActivity$20;->a:Lcom/twidroid/activity/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$20;->a:Lcom/twidroid/activity/aa;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$20;->a:Lcom/twidroid/activity/aa;

    invoke-interface {v0}, Lcom/twidroid/activity/aa;->b()V

    :cond_9
    return-void
.end method
