.class final Lcom/facebook/an;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/facebook/l;


# instance fields
.field final synthetic a:Lcom/facebook/al;


# direct methods
.method constructor <init>(Lcom/facebook/al;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/an;->a:Lcom/facebook/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/an;->a:Lcom/facebook/al;

    sget v1, Lcom/facebook/av;->com_facebook_login_activity_progress_bar:I

    invoke-virtual {v0, v1}, Lcom/facebook/al;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/an;->a:Lcom/facebook/al;

    sget v1, Lcom/facebook/av;->com_facebook_login_activity_progress_bar:I

    invoke-virtual {v0, v1}, Lcom/facebook/al;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
