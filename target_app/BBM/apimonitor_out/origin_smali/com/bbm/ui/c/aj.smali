.class public Lcom/bbm/ui/c/aj;
.super Landroid/app/Fragment;
.source "ChannelPostPreviewFragment.java"


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field private c:Lcom/bbm/ui/ct;

.field private d:Lcom/bbm/ui/a/a;

.field private e:Lcom/bbm/j/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/x",
            "<",
            "Lcom/bbm/d/ek;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/view/View;

.field private final g:Lcom/bbm/j/k;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "channelUri"

    sput-object v0, Lcom/bbm/ui/c/aj;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/bbm/ui/c/ak;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/ak;-><init>(Lcom/bbm/ui/c/aj;)V

    iput-object v0, p0, Lcom/bbm/ui/c/aj;->g:Lcom/bbm/j/k;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/c/aj;)Lcom/bbm/j/x;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/aj;->e:Lcom/bbm/j/x;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/ui/c/aj;Lcom/bbm/ui/a/a;)Lcom/bbm/ui/a/a;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/aj;->d:Lcom/bbm/ui/a/a;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/c/aj;Lcom/bbm/ui/ct;)Lcom/bbm/ui/ct;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/aj;->c:Lcom/bbm/ui/ct;

    return-object p1
.end method

.method static synthetic b(Lcom/bbm/ui/c/aj;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/aj;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/c/aj;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/aj;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/c/aj;)Lcom/bbm/ui/a/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/aj;->d:Lcom/bbm/ui/a/a;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/c/aj;)Lcom/bbm/ui/ct;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/aj;->c:Lcom/bbm/ui/ct;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    if-eqz p3, :cond_3b

    sget-object v0, Lcom/bbm/ui/c/aj;->b:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Lcom/bbm/ui/c/aj;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/c/aj;->f:Landroid/view/View;

    if-nez v0, :cond_38

    const v0, 0x7f030082

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/aj;->f:Landroid/view/View;

    const-string v0, "onCreateView"

    const-class v1, Lcom/bbm/ui/c/am;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/c/aj;->a:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/bbm/d/a;->d(Ljava/lang/String;Z)Lcom/bbm/j/x;

    move-result-object v1

    iput-object v1, p0, Lcom/bbm/ui/c/aj;->e:Lcom/bbm/j/x;

    new-instance v1, Lcom/bbm/ui/c/al;

    invoke-direct {v1, p0, v0}, Lcom/bbm/ui/c/al;-><init>(Lcom/bbm/ui/c/aj;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V

    :cond_38
    iget-object v0, p0, Lcom/bbm/ui/c/aj;->f:Landroid/view/View;

    return-object v0

    :cond_3b
    iget-object v0, p0, Lcom/bbm/ui/c/aj;->a:Ljava/lang/String;

    goto :goto_8
.end method

.method public onDetach()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/aj;->d:Lcom/bbm/ui/a/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bbm/ui/c/aj;->d:Lcom/bbm/ui/a/a;

    invoke-virtual {v0}, Lcom/bbm/ui/a/a;->e()V

    :cond_9
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/bbm/ui/c/aj;->g:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/ui/c/aj;->c:Lcom/bbm/ui/ct;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bbm/ui/c/aj;->c:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->b()V

    :cond_11
    const-string v0, "onPause"

    const-class v1, Lcom/bbm/ui/c/aj;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/bbm/ui/c/aj;->g:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    iget-object v0, p0, Lcom/bbm/ui/c/aj;->c:Lcom/bbm/ui/ct;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bbm/ui/c/aj;->c:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->c()V

    :cond_11
    const-string v0, "onResume"

    const-class v1, Lcom/bbm/ui/c/aj;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    sget-object v0, Lcom/bbm/ui/c/aj;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/bbm/ui/c/aj;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
