.class final Lcom/bbm/ui/c/dx;
.super Ljava/lang/Object;
.source "MyChannelsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/du;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/du;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/dx;->a:Lcom/bbm/ui/c/du;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "browseButton Clicked"

    const-class v1, Lcom/bbm/ui/c/du;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/dx;->a:Lcom/bbm/ui/c/du;

    invoke-static {v0}, Lcom/bbm/ui/c/du;->g(Lcom/bbm/ui/c/du;)Lcom/bbm/ui/activities/MainActivity;

    move-result-object v0

    const v1, 0x7f0a007d

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/MainActivity;->a(I)V

    return-void
.end method