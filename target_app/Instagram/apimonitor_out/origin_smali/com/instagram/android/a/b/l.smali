.class final Lcom/instagram/android/a/b/l;
.super Ljava/lang/Object;
.source "FriendRequestHeaderRowViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/support/v4/app/an;

.field final synthetic c:Lcom/instagram/user/c/a;

.field final synthetic d:Lcom/instagram/android/a/b/n;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/user/c/a;Lcom/instagram/android/a/b/n;)V
    .registers 5

    iput-object p1, p0, Lcom/instagram/android/a/b/l;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/instagram/android/a/b/l;->b:Landroid/support/v4/app/an;

    iput-object p3, p0, Lcom/instagram/android/a/b/l;->c:Lcom/instagram/user/c/a;

    iput-object p4, p0, Lcom/instagram/android/a/b/l;->d:Lcom/instagram/android/a/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    new-instance v0, Lcom/instagram/user/follow/i;

    iget-object v1, p0, Lcom/instagram/android/a/b/l;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/instagram/android/a/b/l;->b:Landroid/support/v4/app/an;

    sget v3, Lcom/instagram/user/c/g;->e:I

    iget-object v4, p0, Lcom/instagram/android/a/b/l;->c:Lcom/instagram/user/c/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/user/follow/i;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/user/c/a;)V

    invoke-virtual {v0}, Lcom/instagram/user/follow/i;->h()V

    iget-object v0, p0, Lcom/instagram/android/a/b/l;->d:Lcom/instagram/android/a/b/n;

    invoke-static {v0}, Lcom/instagram/android/a/b/n;->a(Lcom/instagram/android/a/b/n;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
