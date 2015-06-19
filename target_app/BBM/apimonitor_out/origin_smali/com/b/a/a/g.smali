.class final Lcom/b/a/a/g;
.super Ljava/lang/Object;
.source "AppStoreInterstitial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/b/a/a/f;

.field final synthetic b:Lcom/b/a/a/f;


# direct methods
.method constructor <init>(Lcom/b/a/a/f;Lcom/b/a/a/f;)V
    .registers 3

    iput-object p1, p0, Lcom/b/a/a/g;->b:Lcom/b/a/a/f;

    iput-object p2, p0, Lcom/b/a/a/g;->a:Lcom/b/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/b/a/a/g;->a:Lcom/b/a/a/f;

    invoke-virtual {v0}, Lcom/b/a/a/f;->dismiss()V

    iget-object v0, p0, Lcom/b/a/a/g;->a:Lcom/b/a/a/f;

    invoke-virtual {v0}, Lcom/b/a/a/f;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/b;->b(Landroid/app/Activity;)V

    return-void
.end method
