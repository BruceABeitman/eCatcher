.class Lcom/twidroid/activity/UberSocialBaseActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/UberSocialBaseActivity;->a(Lcom/ubermedia/net/a/a/a;I)Z
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/twidroid/activity/UberSocialBaseActivity;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/UberSocialBaseActivity;I)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$6;->b:Lcom/twidroid/activity/UberSocialBaseActivity;

    iput p2, p0, Lcom/twidroid/activity/UberSocialBaseActivity$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$6;->b:Lcom/twidroid/activity/UberSocialBaseActivity;

    iget v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$6;->a:I

    invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V

    return-void
.end method