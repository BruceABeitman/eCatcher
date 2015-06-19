.class final Lcom/instagram/android/directshare/d/ai;
.super Ljava/lang/Object;
.source "DirectSharePermalinkMoreOptionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/d/ad;


# direct methods
.method private constructor <init>(Lcom/instagram/android/directshare/d/ad;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/directshare/d/ai;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/directshare/d/ad;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/d/ai;-><init>(Lcom/instagram/android/directshare/d/ad;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/android/directshare/d/ai;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/ad;->b(Lcom/instagram/android/directshare/d/ad;)[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/instagram/android/directshare/d/ai;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v1}, Lcom/instagram/android/directshare/d/ad;->c(Lcom/instagram/android/directshare/d/ad;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/az;->directshare_delete:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v0, p0, Lcom/instagram/android/directshare/d/ai;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/ad;->d(Lcom/instagram/android/directshare/d/ad;)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    iget-object v1, p0, Lcom/instagram/android/directshare/d/ai;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v1}, Lcom/instagram/android/directshare/d/ad;->c(Lcom/instagram/android/directshare/d/ad;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/az;->directshare_hide:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v0, p0, Lcom/instagram/android/directshare/d/ai;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/ad;->e(Lcom/instagram/android/directshare/d/ad;)V

    goto :goto_1f

    :cond_38
    iget-object v1, p0, Lcom/instagram/android/directshare/d/ai;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v1}, Lcom/instagram/android/directshare/d/ad;->c(Lcom/instagram/android/directshare/d/ad;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/feed/c/a;->a(Ljava/lang/CharSequence;Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_5c

    iget-object v0, p0, Lcom/instagram/android/directshare/d/ai;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/ad;->g(Lcom/instagram/android/directshare/d/ad;)Lcom/instagram/android/feed/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/ai;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v1}, Lcom/instagram/android/directshare/d/ad;->f(Lcom/instagram/android/directshare/d/ad;)Lcom/instagram/feed/d/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/feed/d/l;->b()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/c/a;->a(Lcom/instagram/user/c/a;)V

    goto :goto_1f

    :cond_5c
    iget-object v1, p0, Lcom/instagram/android/directshare/d/ai;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v1}, Lcom/instagram/android/directshare/d/ad;->c(Lcom/instagram/android/directshare/d/ad;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/az;->directshare_ignore_all:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    iget-object v0, p0, Lcom/instagram/android/directshare/d/ai;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/ad;->h(Lcom/instagram/android/directshare/d/ad;)V

    goto :goto_1f

    :cond_74
    iget-object v1, p0, Lcom/instagram/android/directshare/d/ai;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v1}, Lcom/instagram/android/directshare/d/ad;->c(Lcom/instagram/android/directshare/d/ad;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/az;->report_inappropriate:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/instagram/android/directshare/d/ai;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/ad;->c(Lcom/instagram/android/directshare/d/ad;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/ai;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v1}, Lcom/instagram/android/directshare/d/ad;->f(Lcom/instagram/android/directshare/d/ad;)Lcom/instagram/feed/d/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/util/ReportMediaUtil;->a(Landroid/content/Context;Lcom/instagram/feed/d/l;)V

    goto :goto_1f
.end method
