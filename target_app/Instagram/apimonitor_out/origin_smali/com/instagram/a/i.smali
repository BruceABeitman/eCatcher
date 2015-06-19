.class final Lcom/instagram/a/i;
.super Ljava/lang/Object;
.source "ActionBarService.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/instagram/a/e;


# direct methods
.method constructor <init>(Lcom/instagram/a/e;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/a/i;->a:Lcom/instagram/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p2, :cond_c

    const/16 v0, 0x66

    :goto_8
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_c
    const/16 v0, 0x33

    goto :goto_8
.end method
