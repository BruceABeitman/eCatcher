.class final Lcom/instagram/android/feed/comments/a/f;
.super Lcom/instagram/feed/a/a;
.source "CommentThreadFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/comments/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/comments/a/a;Landroid/support/v4/app/Fragment;ILcom/instagram/api/j/f;)V
    .registers 5

    iput-object p1, p0, Lcom/instagram/android/feed/comments/a/f;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-direct {p0, p2, p3, p4}, Lcom/instagram/feed/a/a;-><init>(Landroid/support/v4/app/Fragment;ILcom/instagram/api/j/f;)V

    return-void
.end method


# virtual methods
.method protected final e()Ljava/lang/String;
    .registers 6

    const-string v0, "media/%s/info/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/android/feed/comments/a/f;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-virtual {v3}, Lcom/instagram/android/feed/comments/a/a;->j()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "CommentThreadFragment.MEDIA_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
