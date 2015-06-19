.class final Lcom/instagram/android/people/c/c;
.super Ljava/lang/Object;
.source "ModifyPhotosOfYouHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/feed/d/l;

.field final synthetic b:Lcom/instagram/android/people/c/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/c/a;Lcom/instagram/feed/d/l;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/people/c/c;->b:Lcom/instagram/android/people/c/a;

    iput-object p2, p0, Lcom/instagram/android/people/c/c;->a:Lcom/instagram/feed/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 11

    iget-object v0, p0, Lcom/instagram/android/people/c/c;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->X()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    new-instance v0, Lcom/instagram/android/c/a/h;

    iget-object v1, p0, Lcom/instagram/android/people/c/c;->b:Lcom/instagram/android/people/c/a;

    invoke-static {v1}, Lcom/instagram/android/people/c/a;->f(Lcom/instagram/android/people/c/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/people/c/c;->b:Lcom/instagram/android/people/c/a;

    invoke-static {v2}, Lcom/instagram/android/people/c/a;->g(Lcom/instagram/android/people/c/a;)Landroid/support/v4/app/an;

    move-result-object v2

    const-string v3, "approve"

    iget-object v4, p0, Lcom/instagram/android/people/c/c;->a:Lcom/instagram/feed/d/l;

    new-instance v5, Lcom/instagram/android/people/c/l;

    iget-object v6, p0, Lcom/instagram/android/people/c/c;->b:Lcom/instagram/android/people/c/a;

    const-string v7, "approve"

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/instagram/android/people/c/l;-><init>(Lcom/instagram/android/people/c/a;Ljava/lang/String;B)V

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/c/a/h;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Ljava/lang/String;Lcom/instagram/feed/d/l;Lcom/instagram/api/j/a;)V

    invoke-virtual {v0}, Lcom/instagram/android/c/a/h;->h()V

    goto :goto_8
.end method
