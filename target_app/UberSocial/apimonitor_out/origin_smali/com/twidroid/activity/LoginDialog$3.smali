.class Lcom/twidroid/activity/LoginDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/LoginDialog;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/LoginDialog;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/LoginDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/LoginDialog$3;->a:Lcom/twidroid/activity/LoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$3;->a:Lcom/twidroid/activity/LoginDialog;

    const v1, 0x7f090175

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
