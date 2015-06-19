.class final Lcom/instagram/android/fragment/dg;
.super Ljava/lang/Object;
.source "MainFeedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/instagram/android/fragment/ct;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ct;J)V
    .registers 4

    iput-object p1, p0, Lcom/instagram/android/fragment/dg;->b:Lcom/instagram/android/fragment/ct;

    iput-wide p2, p0, Lcom/instagram/android/fragment/dg;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/fragment/dg;->b:Lcom/instagram/android/fragment/ct;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ct;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/fragment/ct;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_17

    :try_start_10
    iget-object v1, p0, Lcom/instagram/android/fragment/dg;->b:Lcom/instagram/android/fragment/ct;

    iget-wide v2, p0, Lcom/instagram/android/fragment/dg;->a:J

    invoke-static {v1, v0, v2, v3}, Lcom/instagram/android/fragment/ct;->a(Lcom/instagram/android/fragment/ct;Ljava/io/File;J)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_17} :catch_18

    :cond_17
    :goto_17
    return-void

    :catch_18
    move-exception v0

    const-string v0, "MainFeedFragment"

    const-string v1, "Error reading from cached file."

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method
