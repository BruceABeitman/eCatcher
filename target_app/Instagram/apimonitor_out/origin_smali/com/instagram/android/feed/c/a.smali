.class public final Lcom/instagram/android/feed/c/a;
.super Ljava/lang/Object;
.source "BlockUserDialogHelper.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/support/v4/app/an;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/android/feed/c/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/instagram/android/feed/c/a;->b:Landroid/support/v4/app/an;

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/c/a;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/c/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Lcom/instagram/user/c/a;Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/user/c/a;->v()Z

    move-result v0

    if-eqz v0, :cond_d

    sget v0, Lcom/facebook/az;->menu_label_unblock_user:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    sget v0, Lcom/facebook/az;->menu_label_block_user:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static a(Ljava/lang/CharSequence;Landroid/content/res/Resources;)Z
    .registers 3

    sget v0, Lcom/facebook/az;->menu_label_block_user:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    sget v0, Lcom/facebook/az;->menu_label_unblock_user:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method static synthetic b(Lcom/instagram/android/feed/c/a;)Landroid/support/v4/app/an;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/c/a;->b:Landroid/support/v4/app/an;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/user/c/a;)V
    .registers 5

    new-instance v0, Lcom/instagram/android/feed/c/b;

    invoke-direct {v0, p0, p1}, Lcom/instagram/android/feed/c/b;-><init>(Lcom/instagram/android/feed/c/a;Lcom/instagram/user/c/a;)V

    new-instance v1, Lcom/instagram/ui/dialog/b;

    iget-object v2, p0, Lcom/instagram/android/feed/c/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/instagram/android/feed/c/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/instagram/android/feed/c/a;->a(Lcom/instagram/user/c/a;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/ui/dialog/b;->b(Ljava/lang/String;)Lcom/instagram/ui/dialog/b;

    move-result-object v1

    sget v2, Lcom/facebook/az;->yes_im_sure:I

    invoke-virtual {v1, v2, v0}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
