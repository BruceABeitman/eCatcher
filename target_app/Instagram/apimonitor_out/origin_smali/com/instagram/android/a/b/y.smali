.class final Lcom/instagram/android/a/b/y;
.super Ljava/lang/Object;
.source "PepperMegaphoneRowViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/feed/e/b;


# direct methods
.method constructor <init>(Lcom/instagram/feed/e/b;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/a/b/y;->a:Lcom/instagram/feed/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/a/b/y;->a:Lcom/instagram/feed/e/b;

    sget-object v1, Lcom/instagram/feed/f/d;->a:Lcom/instagram/feed/f/d;

    invoke-interface {v0, v1}, Lcom/instagram/feed/e/b;->b(Lcom/instagram/feed/f/d;)V

    return-void
.end method
