.class Lcom/twidroid/TwidroidClient$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/TwidroidClient;->aa()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/TwidroidClient;


# direct methods
.method constructor <init>(Lcom/twidroid/TwidroidClient;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/TwidroidClient$29;->a:Lcom/twidroid/TwidroidClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$29;->a:Lcom/twidroid/TwidroidClient;

    const v1, 0x7f0900ed

    invoke-virtual {v0, v1}, Lcom/twidroid/TwidroidClient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$29;->a:Lcom/twidroid/TwidroidClient;

    invoke-static {v0}, Lcom/twidroid/TwidroidClient;->c(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->X()V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$29;->a:Lcom/twidroid/TwidroidClient;

    invoke-static {v0}, Lcom/twidroid/TwidroidClient;->g(Lcom/twidroid/TwidroidClient;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/TwidroidClient$29;->a:Lcom/twidroid/TwidroidClient;

    iget-object v1, v1, Lcom/twidroid/TwidroidClient;->H:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    return-void
.end method
