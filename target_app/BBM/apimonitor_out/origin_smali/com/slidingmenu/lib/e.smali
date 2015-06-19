.class final Lcom/slidingmenu/lib/e;
.super Ljava/lang/Object;
.source "SlidingMenu.java"

# interfaces
.implements Lcom/slidingmenu/lib/c;


# instance fields
.field final synthetic a:Lcom/slidingmenu/lib/SlidingMenu;


# direct methods
.method constructor <init>(Lcom/slidingmenu/lib/SlidingMenu;)V
    .registers 2

    iput-object p1, p0, Lcom/slidingmenu/lib/e;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    if-nez p1, :cond_10

    iget-object v0, p0, Lcom/slidingmenu/lib/e;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-static {v0}, Lcom/slidingmenu/lib/SlidingMenu;->a(Lcom/slidingmenu/lib/SlidingMenu;)Lcom/slidingmenu/lib/j;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/slidingmenu/lib/e;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-static {v0}, Lcom/slidingmenu/lib/SlidingMenu;->a(Lcom/slidingmenu/lib/SlidingMenu;)Lcom/slidingmenu/lib/j;

    :cond_f
    :goto_f
    return-void

    :cond_10
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Lcom/slidingmenu/lib/e;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-static {v0}, Lcom/slidingmenu/lib/SlidingMenu;->b(Lcom/slidingmenu/lib/SlidingMenu;)Lcom/slidingmenu/lib/h;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/slidingmenu/lib/e;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-static {v0}, Lcom/slidingmenu/lib/SlidingMenu;->b(Lcom/slidingmenu/lib/SlidingMenu;)Lcom/slidingmenu/lib/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/slidingmenu/lib/h;->a()V

    goto :goto_f
.end method
