.class final Lcom/instagram/user/follow/e;
.super Ljava/lang/Object;
.source "FollowButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/user/c/a;

.field final synthetic b:Landroid/support/v4/app/an;

.field final synthetic c:Lcom/instagram/user/follow/g;

.field final synthetic d:Lcom/instagram/user/follow/FollowButton;


# direct methods
.method constructor <init>(Lcom/instagram/user/follow/FollowButton;Lcom/instagram/user/c/a;Landroid/support/v4/app/an;Lcom/instagram/user/follow/g;)V
    .registers 5

    iput-object p1, p0, Lcom/instagram/user/follow/e;->d:Lcom/instagram/user/follow/FollowButton;

    iput-object p2, p0, Lcom/instagram/user/follow/e;->a:Lcom/instagram/user/c/a;

    iput-object p3, p0, Lcom/instagram/user/follow/e;->b:Landroid/support/v4/app/an;

    iput-object p4, p0, Lcom/instagram/user/follow/e;->c:Lcom/instagram/user/follow/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Lcom/instagram/user/follow/e;->d:Lcom/instagram/user/follow/FollowButton;

    iget-object v1, p0, Lcom/instagram/user/follow/e;->a:Lcom/instagram/user/c/a;

    iget-object v2, p0, Lcom/instagram/user/follow/e;->b:Landroid/support/v4/app/an;

    iget-object v3, p0, Lcom/instagram/user/follow/e;->c:Lcom/instagram/user/follow/g;

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/user/follow/FollowButton;->a(Lcom/instagram/user/follow/FollowButton;Lcom/instagram/user/c/a;Landroid/support/v4/app/an;Lcom/instagram/user/follow/g;)V

    return-void
.end method
