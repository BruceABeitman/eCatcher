.class Lcom/twidroid/activity/UberSocialBaseActivity$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/UberSocialBaseActivity;->c(ILjava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/twidroid/activity/UberSocialBaseActivity;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/UberSocialBaseActivity;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$12;->c:Lcom/twidroid/activity/UberSocialBaseActivity;

    iput-object p2, p0, Lcom/twidroid/activity/UberSocialBaseActivity$12;->a:Ljava/lang/String;

    iput p3, p0, Lcom/twidroid/activity/UberSocialBaseActivity$12;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$12;->a:Ljava/lang/String;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$12;->c:Lcom/twidroid/activity/UberSocialBaseActivity;

    iget v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$12;->b:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$12;->c:Lcom/twidroid/activity/UberSocialBaseActivity;

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$12;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_10
.end method
