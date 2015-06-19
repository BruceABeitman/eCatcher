.class public Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ProxyFrameLayout.java"


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;->b:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;->c:Z

    new-instance v0, Lcom/instagram/ui/widget/proxy/a;

    invoke-direct {v0, p0}, Lcom/instagram/ui/widget/proxy/a;-><init>(Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;)V

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;->b:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;->c:Z

    new-instance v0, Lcom/instagram/ui/widget/proxy/a;

    invoke-direct {v0, p0}, Lcom/instagram/ui/widget/proxy/a;-><init>(Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;)V

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;->b:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;->c:Z

    new-instance v0, Lcom/instagram/ui/widget/proxy/a;

    invoke-direct {v0, p0}, Lcom/instagram/ui/widget/proxy/a;-><init>(Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;)V

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;->a:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;->c:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setProxyToOnClickListener(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/ui/widget/proxy/ProxyFrameLayout;->c:Z

    return-void
.end method
