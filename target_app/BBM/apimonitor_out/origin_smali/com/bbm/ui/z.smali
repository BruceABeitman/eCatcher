.class public abstract Lcom/bbm/ui/z;
.super Lcom/bbm/ui/cs;
.source "ChannelHeaderView.java"


# instance fields
.field private final a:Lcom/bbm/d/a;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/bbm/ui/w;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/app/ActionBar;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    invoke-direct {p0}, Lcom/bbm/ui/cs;-><init>()V

    iput-object p4, p0, Lcom/bbm/ui/z;->d:Ljava/lang/String;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/z;->a:Lcom/bbm/d/a;

    new-instance v0, Lcom/bbm/ui/aa;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/bbm/ui/aa;-><init>(Lcom/bbm/ui/z;Landroid/app/Activity;Landroid/app/ActionBar;Ljava/lang/String;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/bbm/ui/z;->e:Lcom/bbm/ui/w;

    iget-object v0, p0, Lcom/bbm/ui/z;->e:Lcom/bbm/ui/w;

    iget-object v0, v0, Lcom/bbm/ui/w;->k:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    invoke-virtual {p2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/bbm/ui/ab;

    invoke-direct {v1, p0}, Lcom/bbm/ui/ab;-><init>(Lcom/bbm/ui/z;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/z;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/z;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/z;)Lcom/bbm/d/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/z;->a:Lcom/bbm/d/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public abstract a_()V
.end method
