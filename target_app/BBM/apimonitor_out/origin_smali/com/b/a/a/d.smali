.class final Lcom/b/a/a/d;
.super Ljava/lang/Object;
.source "AppStoreInterstitial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/b/a/a/c;

.field final synthetic b:Lcom/b/a/a/c;


# direct methods
.method constructor <init>(Lcom/b/a/a/c;Lcom/b/a/a/c;)V
    .registers 3

    iput-object p1, p0, Lcom/b/a/a/d;->b:Lcom/b/a/a/c;

    iput-object p2, p0, Lcom/b/a/a/d;->a:Lcom/b/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/b/a/a/d;->a:Lcom/b/a/a/c;

    invoke-virtual {v0}, Lcom/b/a/a/c;->dismiss()V

    iget-object v0, p0, Lcom/b/a/a/d;->a:Lcom/b/a/a/c;

    invoke-virtual {v0}, Lcom/b/a/a/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/b;->b(Landroid/app/Activity;)V

    return-void
.end method
