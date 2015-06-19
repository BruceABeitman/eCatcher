.class final Lcom/instagram/android/fragment/ev;
.super Lcom/instagram/feed/a/a;
.source "ShortUrlFeedFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/es;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/es;Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;Lcom/instagram/feed/f/a;Lcom/instagram/api/j/f;)V
    .registers 12

    iput-object p1, p0, Lcom/instagram/android/fragment/ev;->a:Lcom/instagram/android/fragment/es;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/instagram/feed/a/a;-><init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;Lcom/instagram/feed/f/a;ILcom/instagram/api/j/f;)V

    return-void
.end method


# virtual methods
.method protected final e()Ljava/lang/String;
    .registers 5

    const-string v0, "media/%s/info/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/android/fragment/ev;->a:Lcom/instagram/android/fragment/es;

    invoke-static {v3}, Lcom/instagram/android/fragment/es;->b(Lcom/instagram/android/fragment/es;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
