.class final Lcom/bbm/ui/e/ap;
.super Ljava/lang/Object;
.source "LocationHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/d/ff;

.field final synthetic b:Lcom/bbm/ui/e/ao;


# direct methods
.method constructor <init>(Lcom/bbm/ui/e/ao;Lcom/bbm/d/ff;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/e/ap;->b:Lcom/bbm/ui/e/ao;

    iput-object p2, p0, Lcom/bbm/ui/e/ap;->a:Lcom/bbm/d/ff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "ImageMapView Clicked"

    const-class v1, Lcom/bbm/ui/e/an;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/e/ap;->b:Lcom/bbm/ui/e/ao;

    iget-object v0, v0, Lcom/bbm/ui/e/ao;->a:Lcom/bbm/ui/e/an;

    iget-object v1, p0, Lcom/bbm/ui/e/ap;->a:Lcom/bbm/d/ff;

    invoke-static {v0, v1}, Lcom/bbm/ui/e/an;->a(Lcom/bbm/ui/e/an;Lcom/bbm/d/ff;)V

    return-void
.end method
