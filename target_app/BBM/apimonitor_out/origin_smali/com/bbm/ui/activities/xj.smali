.class final Lcom/bbm/ui/activities/xj;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/app/AlertDialog;

.field final synthetic c:Lcom/bbm/ui/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/MainActivity;JLandroid/app/AlertDialog;)V
    .registers 5

    iput-object p1, p0, Lcom/bbm/ui/activities/xj;->c:Lcom/bbm/ui/activities/MainActivity;

    iput-wide p2, p0, Lcom/bbm/ui/activities/xj;->a:J

    iput-object p4, p0, Lcom/bbm/ui/activities/xj;->b:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-wide/16 v6, 0x0

    const v5, 0x7f0e012c

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_23

    iget-object v0, p0, Lcom/bbm/ui/activities/xj;->c:Lcom/bbm/ui/activities/MainActivity;

    invoke-static {v4, v6, v7}, Lcom/bbm/ui/activities/MainActivity;->a(ZJ)V

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v0

    sget-object v1, Lcom/bbm/c/p;->c:Lcom/bbm/c/p;

    invoke-virtual {v0, v1}, Lcom/bbm/c/c;->a(Lcom/bbm/c/p;)V

    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/bbm/ui/activities/xj;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/bbm/ui/activities/xj;->c:Lcom/bbm/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/MainActivity;->f(Lcom/bbm/ui/activities/MainActivity;)Z

    return-void

    :cond_23
    if-ne p3, v2, :cond_36

    iget-object v0, p0, Lcom/bbm/ui/activities/xj;->c:Lcom/bbm/ui/activities/MainActivity;

    iget-wide v0, p0, Lcom/bbm/ui/activities/xj;->a:J

    invoke-static {v2, v0, v1}, Lcom/bbm/ui/activities/MainActivity;->a(ZJ)V

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v0

    sget-object v1, Lcom/bbm/c/p;->b:Lcom/bbm/c/p;

    invoke-virtual {v0, v1}, Lcom/bbm/c/c;->a(Lcom/bbm/c/p;)V

    goto :goto_18

    :cond_36
    if-nez p3, :cond_18

    iget-object v0, p0, Lcom/bbm/ui/activities/xj;->c:Lcom/bbm/ui/activities/MainActivity;

    invoke-static {v4, v6, v7}, Lcom/bbm/ui/activities/MainActivity;->a(ZJ)V

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v0

    sget-object v1, Lcom/bbm/c/p;->a:Lcom/bbm/c/p;

    invoke-virtual {v0, v1}, Lcom/bbm/c/c;->a(Lcom/bbm/c/p;)V

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "market://details?id="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbm/ui/activities/xj;->c:Lcom/bbm/ui/activities/MainActivity;

    invoke-virtual {v2, v5}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_69
    iget-object v0, p0, Lcom/bbm/ui/activities/xj;->c:Lcom/bbm/ui/activities/MainActivity;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_6e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_69 .. :try_end_6e} :catch_6f

    goto :goto_18

    :catch_6f
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://play.google.com/store/apps/details?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bbm/ui/activities/xj;->c:Lcom/bbm/ui/activities/MainActivity;

    invoke-virtual {v3, v5}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_8c
    iget-object v2, p0, Lcom/bbm/ui/activities/xj;->c:Lcom/bbm/ui/activities/MainActivity;

    invoke-virtual {v2, v1}, Lcom/bbm/ui/activities/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_91
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8c .. :try_end_91} :catch_92

    goto :goto_18

    :catch_92
    move-exception v1

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto/16 :goto_18
.end method
