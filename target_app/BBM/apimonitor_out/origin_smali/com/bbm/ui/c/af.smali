.class final Lcom/bbm/ui/c/af;
.super Ljava/lang/Object;
.source "ChannelDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/l;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/l;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/af;->a:Lcom/bbm/ui/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/c/af;->a:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->h(Lcom/bbm/ui/c/l;)Lcom/bbm/ui/activities/cn;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V

    return-void
.end method
