.class final Lcom/bbm/b/g;
.super Lcom/bbm/ui/d/e;
.source "AdUtils.java"


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    iput-object p2, p0, Lcom/bbm/b/g;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/bbm/b/g;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bbm/ui/d/e;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/bbm/b/g;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bbm/b/g;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bbm/util/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/b/g;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bbm/b/g;->a:Landroid/app/Activity;

    const v2, 0x7f0e0495

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/bbm/b/g;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/bbm/ui/activities/MainActivity;

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/bbm/b/g;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_25
    return-void
.end method

.method public final a(I)V
    .registers 5

    iget-object v0, p0, Lcom/bbm/b/g;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bbm/b/g;->a:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
