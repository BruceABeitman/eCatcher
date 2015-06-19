.class final Lcom/instagram/ui/dialog/h;
.super Ljava/lang/Object;
.source "ProgressDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/instagram/ui/dialog/g;


# direct methods
.method constructor <init>(Lcom/instagram/ui/dialog/g;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/ui/dialog/h;->a:Lcom/instagram/ui/dialog/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method
