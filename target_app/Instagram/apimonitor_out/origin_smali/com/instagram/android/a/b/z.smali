.class final Lcom/instagram/android/a/b/z;
.super Ljava/lang/Object;
.source "PepperMegaphoneRowViewBinder.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/instagram/feed/e/b;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/instagram/feed/e/b;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/a/b/z;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/instagram/android/a/b/z;->b:Lcom/instagram/feed/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 6

    new-instance v0, Lcom/instagram/feed/e/c;

    iget-object v1, p0, Lcom/instagram/android/a/b/z;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/instagram/android/a/b/z;->b:Lcom/instagram/feed/e/b;

    sget-object v3, Lcom/instagram/feed/f/d;->a:Lcom/instagram/feed/f/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/feed/e/c;-><init>(Landroid/content/Context;Lcom/instagram/feed/e/b;Lcom/instagram/feed/f/d;)V

    invoke-virtual {v0}, Lcom/instagram/feed/e/c;->a()V

    const/4 v0, 0x1

    return v0
.end method
